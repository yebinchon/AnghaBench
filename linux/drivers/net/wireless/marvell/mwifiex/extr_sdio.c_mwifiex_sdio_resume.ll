; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_mmc_card = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"resume: invalid card or adapter\0A\00", align 1
@MWIFIEX_IS_SUSPENDED = common dso_local global i32 0, align 4
@WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"device already resumed\0A\00", align 1
@MWIFIEX_BSS_ROLE_STA = common dso_local global i32 0, align 4
@MWIFIEX_SYNC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mwifiex_sdio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_mmc_card*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %7)
  store %struct.sdio_func* %8, %struct.sdio_func** %4, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %10 = call %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func* %9)
  store %struct.sdio_mmc_card* %10, %struct.sdio_mmc_card** %5, align 8
  %11 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %12 = icmp ne %struct.sdio_mmc_card* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %15 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %14, i32 0, i32 0
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  %17 = icmp ne %struct.mwifiex_adapter* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

21:                                               ; preds = %13
  %22 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %5, align 8
  %23 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %22, i32 0, i32 0
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %23, align 8
  store %struct.mwifiex_adapter* %24, %struct.mwifiex_adapter** %6, align 8
  %25 = load i32, i32* @MWIFIEX_IS_SUSPENDED, align 4
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 0
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %32 = load i32, i32* @WARN, align 4
  %33 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %31, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

34:                                               ; preds = %21
  %35 = load i32, i32* @MWIFIEX_IS_SUSPENDED, align 4
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %40 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %41 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %39, i32 %40)
  %42 = load i32, i32* @MWIFIEX_SYNC_CMD, align 4
  %43 = call i32 @mwifiex_cancel_hs(i32 %41, i32 %42)
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %45 = call i32 @mwifiex_disable_wake(%struct.mwifiex_adapter* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %30, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_cancel_hs(i32, i32) #1

declare dso_local i32 @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_disable_wake(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
