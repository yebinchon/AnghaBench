; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_verify_eraseblock2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_verify_eraseblock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@subpgsize = common dso_local global i32 0, align 4
@rnd_state = common dso_local global i32 0, align 4
@writebuf = common dso_local global i32 0, align 4
@readbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ECC correction at %#llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error: read failed at %#llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error: verify failed at %#llx\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_eraseblock2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_eraseblock2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %110, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 33
  br i1 %15, label %16, label %113

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @subpgsize, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = icmp sgt i32 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %113

30:                                               ; preds = %16
  %31 = load i32, i32* @writebuf, align 4
  %32 = load i32, i32* @subpgsize, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %31, i32 %34)
  %36 = load i32, i32* @readbuf, align 4
  %37 = load i32, i32* @subpgsize, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @clear_data(i32 %36, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @subpgsize, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @readbuf, align 4
  %47 = call i32 @mtd_read(%struct.TYPE_3__* %41, i32 %42, i32 %45, i64* %4, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %30
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* @subpgsize, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %51, %55
  br label %57

57:                                               ; preds = %50, %30
  %58 = phi i1 [ true, %30 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @mtd_is_bitflip(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i64, i64* %4, align 8
  %68 = load i32, i32* @subpgsize, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %75)
  store i32 0, i32* %5, align 4
  br label %88

77:                                               ; preds = %66, %62
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ -1, %85 ]
  store i32 %87, i32* %2, align 4
  br label %115

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i32, i32* @readbuf, align 4
  %91 = load i32, i32* @writebuf, align 4
  %92 = load i32, i32* @subpgsize, align 4
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %92, %93
  %95 = call i32 @memcmp(i32 %90, i32 %91, i32 %94)
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* @errcnt, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @errcnt, align 4
  br label %104

104:                                              ; preds = %98, %89
  %105 = load i32, i32* @subpgsize, align 4
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %13

113:                                              ; preds = %29, %13
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %86
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @prandom_bytes_state(i32*, i32, i32) #1

declare dso_local i32 @clear_data(i32, i32) #1

declare dso_local i32 @mtd_read(%struct.TYPE_3__*, i32, i32, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
