; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_mmc_card = type { %struct.mwifiex_adapter*, i32 }
%struct.mwifiex_adapter = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"cmd: %s: suspend: PM flag = 0x%x\0A\00", align 1
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: cannot remain alive while host is suspended\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"suspend: invalid card\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"adapter is not valid\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"cmd: failed to suspend\0A\00", align 1
@MWIFIEX_IS_HS_ENABLING = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"cmd: suspend with MMC_PM_KEEP_POWER\0A\00", align 1
@MWIFIEX_IS_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mwifiex_sdio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_mmc_card*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %9)
  store %struct.sdio_func* %10, %struct.sdio_func** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = call i32 @sdio_get_host_pm_caps(%struct.sdio_func* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %14 = call i32 @sdio_func_id(%struct.sdio_func* %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = call i32 @sdio_func_id(%struct.sdio_func* %23)
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENOSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %82

28:                                               ; preds = %1
  %29 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %30 = call %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func* %29)
  store %struct.sdio_mmc_card* %30, %struct.sdio_mmc_card** %5, align 8
  %31 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %32 = icmp ne %struct.sdio_mmc_card* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

36:                                               ; preds = %28
  %37 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %38 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %37, i32 0, i32 1
  %39 = call i32 @wait_for_completion(i32* %38)
  %40 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %41 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %40, i32 0, i32 0
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %41, align 8
  store %struct.mwifiex_adapter* %42, %struct.mwifiex_adapter** %6, align 8
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %44 = icmp ne %struct.mwifiex_adapter* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

48:                                               ; preds = %36
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %50 = call i32 @mwifiex_enable_wake(%struct.mwifiex_adapter* %49)
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %52 = call i32 @mwifiex_enable_hs(%struct.mwifiex_adapter* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %55, i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @MWIFIEX_IS_HS_ENABLING, align 4
  %59 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %59, i32 0, i32 0
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %63 = call i32 @mwifiex_disable_wake(%struct.mwifiex_adapter* %62)
  %64 = load i32, i32* @EFAULT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %82

66:                                               ; preds = %48
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %68 = load i32, i32* @INFO, align 4
  %69 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %67, i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %70 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %71 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %72 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @MWIFIEX_IS_SUSPENDED, align 4
  %74 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %74, i32 0, i32 0
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load i32, i32* @MWIFIEX_IS_HS_ENABLING, align 4
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 0
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %66, %54, %45, %33, %21
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mwifiex_enable_wake(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_enable_hs(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_disable_wake(%struct.mwifiex_adapter*) #1

declare dso_local i32 @sdio_set_host_pm_flags(%struct.sdio_func*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
