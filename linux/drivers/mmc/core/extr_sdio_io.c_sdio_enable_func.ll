; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_enable_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_enable_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SDIO: Enabling device %s...\0A\00", align 1
@SDIO_CCCR_IOEx = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SDIO_CCCR_IORx = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SDIO: Enabled device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SDIO: Failed to enable device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_enable_func(%struct.sdio_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %8 = icmp ne %struct.sdio_func* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %14 = call i32 @sdio_func_id(%struct.sdio_func* %13)
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %17 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SDIO_CCCR_IOEx, align 4
  %20 = call i32 @mmc_io_rw_direct(i32 %18, i32 0, i32 0, i32 %19, i8 zeroext 0, i8* %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %81

24:                                               ; preds = %12
  %25 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %26 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %5, align 1
  %33 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %34 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SDIO_CCCR_IOEx, align 4
  %37 = load i8, i8* %5, align 1
  %38 = call i32 @mmc_io_rw_direct(i32 %35, i32 1, i32 0, i32 %36, i8 zeroext %37, i8* null)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %81

42:                                               ; preds = %24
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %45 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @msecs_to_jiffies(i32 %46)
  %48 = add i64 %43, %47
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %42, %76
  %50 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %51 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SDIO_CCCR_IORx, align 4
  %54 = call i32 @mmc_io_rw_direct(i32 %52, i32 0, i32 0, i32 %53, i8 zeroext 0, i8* %5)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %81

58:                                               ; preds = %49
  %59 = load i8, i8* %5, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %62 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %60, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %77

68:                                               ; preds = %58
  %69 = load i32, i32* @ETIME, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @time_after(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %81

76:                                               ; preds = %68
  br label %49

77:                                               ; preds = %67
  %78 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %79 = call i32 @sdio_func_id(%struct.sdio_func* %78)
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 0, i32* %2, align 4
  br label %86

81:                                               ; preds = %75, %57, %41, %23
  %82 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %83 = call i32 @sdio_func_id(%struct.sdio_func* %82)
  %84 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %77, %9
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
