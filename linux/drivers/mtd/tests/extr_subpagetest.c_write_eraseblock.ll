; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_write_eraseblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_write_eraseblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@rnd_state = common dso_local global i32 0, align 4
@writebuf = common dso_local global i32 0, align 4
@subpgsize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"error: write failed at %#llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  write size: %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  written: %#zx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @write_eraseblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_eraseblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @writebuf, align 4
  %13 = load i64, i64* @subpgsize, align 8
  %14 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %12, i64 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i64, i64* @subpgsize, align 8
  %18 = load i32, i32* @writebuf, align 4
  %19 = call i32 @mtd_write(%struct.TYPE_3__* %15, i32 %16, i64 %17, i64* %4, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @subpgsize, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %22, %1
  %27 = phi i1 [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @subpgsize, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i64, i64* @subpgsize, align 8
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  br label %49

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ -1, %48 ]
  store i32 %50, i32* %2, align 4
  br label %98

51:                                               ; preds = %26
  %52 = load i64, i64* @subpgsize, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @writebuf, align 4
  %58 = load i64, i64* @subpgsize, align 8
  %59 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %57, i64 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i64, i64* @subpgsize, align 8
  %63 = load i32, i32* @writebuf, align 4
  %64 = call i32 @mtd_write(%struct.TYPE_3__* %60, i32 %61, i64 %62, i64* %4, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %51
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @subpgsize, align 8
  %70 = icmp ne i64 %68, %69
  br label %71

71:                                               ; preds = %67, %51
  %72 = phi i1 [ true, %51 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @subpgsize, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i64, i64* @subpgsize, align 8
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %83, %76
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  br label %94

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ -1, %93 ]
  store i32 %95, i32* %2, align 4
  br label %98

96:                                               ; preds = %71
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %94, %49
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @prandom_bytes_state(i32*, i32, i64) #1

declare dso_local i32 @mtd_write(%struct.TYPE_3__*, i32, i64, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
