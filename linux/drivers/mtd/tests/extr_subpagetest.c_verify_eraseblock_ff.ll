; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_verify_eraseblock_ff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_verify_eraseblock_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@writebuf = common dso_local global i32 0, align 4
@subpgsize = common dso_local global i64 0, align 8
@readbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ECC correction at %#llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error: read failed at %#llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"error: verify 0xff failed at %#llx\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_eraseblock_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_eraseblock_ff(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @writebuf, align 4
  %14 = load i64, i64* @subpgsize, align 8
  %15 = call i32 @memset(i32 %13, i32 255, i64 %14)
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %88, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @subpgsize, align 8
  %23 = udiv i64 %21, %22
  %24 = icmp ult i64 %17, %23
  br i1 %24, label %25, label %91

25:                                               ; preds = %16
  %26 = load i32, i32* @readbuf, align 4
  %27 = load i64, i64* @subpgsize, align 8
  %28 = call i32 @clear_data(i32 %26, i64 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* @subpgsize, align 8
  %32 = load i32, i32* @readbuf, align 4
  %33 = call i32 @mtd_read(%struct.TYPE_3__* %29, i32 %30, i64 %31, i64* %5, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @subpgsize, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %36, %25
  %41 = phi i1 [ true, %25 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @mtd_is_bitflip(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @subpgsize, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %55)
  store i32 0, i32* %6, align 4
  br label %68

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ -1, %65 ]
  store i32 %67, i32* %2, align 4
  br label %93

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32, i32* @readbuf, align 4
  %71 = load i32, i32* @writebuf, align 4
  %72 = load i64, i64* @subpgsize, align 8
  %73 = call i32 @memcmp(i32 %70, i32 %71, i64 %72)
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @errcnt, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @errcnt, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i64, i64* @subpgsize, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %16

91:                                               ; preds = %16
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %66
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @clear_data(i32, i64) #1

declare dso_local i32 @mtd_read(%struct.TYPE_3__*, i32, i64, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
