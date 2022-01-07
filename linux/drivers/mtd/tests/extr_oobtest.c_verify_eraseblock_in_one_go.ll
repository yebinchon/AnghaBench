; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_verify_eraseblock_in_one_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_verify_eraseblock_in_one_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mtd_oob_ops = type { i64, i64, i64, i32*, i64, i64, i32, i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@pgcnt = common dso_local global i32 0, align 4
@rnd_state = common dso_local global i32 0, align 4
@writebuf = common dso_local global i64 0, align 8
@MTD_OPS_AUTO_OOB = common dso_local global i32 0, align 4
@readbuf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"error: readoob failed at %#llx\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@bitflip_limit = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"error: verify failed at %#llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"error: too many errors\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ignoring error as within bitflip_limit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_eraseblock_in_one_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_eraseblock_in_one_go(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_oob_ops, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @pgcnt, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* @writebuf, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @prandom_bytes_state(i32* @rnd_state, i64 %26, i64 %27)
  %29 = load i32, i32* @MTD_OPS_AUTO_OOB, align 4
  %30 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 7
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 6
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load i64, i64* @readbuf, align 8
  %39 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 2
  store i64 %38, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mtd_read_oob(%struct.TYPE_3__* %40, i32 %41, %struct.mtd_oob_ops* %4)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @mtd_is_bitflip(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @errcnt, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @errcnt, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ -1, %65 ]
  store i32 %67, i32* %2, align 4
  br label %120

68:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %110, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @pgcnt, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %118

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i64, i64* @readbuf, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = mul i64 %77, %78
  %80 = add i64 %75, %79
  %81 = load i64, i64* @writebuf, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %8, align 8
  %85 = mul i64 %83, %84
  %86 = add i64 %81, %85
  %87 = load i64, i64* %8, align 8
  %88 = call i64 @memcmpshow(i32 %74, i64 %80, i64 %86, i64 %87)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @bitflip_limit, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %73
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @errcnt, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @errcnt, align 4
  %98 = load i32, i32* @errcnt, align 4
  %99 = icmp sgt i32 %98, 1000
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %120

102:                                              ; preds = %92
  br label %109

103:                                              ; preds = %73
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  br label %109

109:                                              ; preds = %108, %102
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %69

118:                                              ; preds = %69
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %100, %66
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @prandom_bytes_state(i32*, i64, i64) #1

declare dso_local i32 @mtd_read_oob(%struct.TYPE_3__*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @memcmpshow(i32, i64, i64, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
