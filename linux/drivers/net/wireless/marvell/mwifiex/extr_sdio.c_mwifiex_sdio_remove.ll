; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.sdio_mmc_card = type { %struct.mwifiex_adapter*, i32 }
%struct.mwifiex_adapter = type { i32, i32 }
%struct.mwifiex_private = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"info: SDIO func num=%d\0A\00", align 1
@FIRMWARE_READY_SDIO = common dso_local global i64 0, align 8
@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@MWIFIEX_FUNC_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @mwifiex_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.sdio_mmc_card*, align 8
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = call %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func* %8)
  store %struct.sdio_mmc_card* %9, %struct.sdio_mmc_card** %3, align 8
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %11 = icmp ne %struct.sdio_mmc_card* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %15 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %14, i32 0, i32 1
  %16 = call i32 @wait_for_completion(i32* %15)
  %17 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %18 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %17, i32 0, i32 0
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %18, align 8
  store %struct.mwifiex_adapter* %19, %struct.mwifiex_adapter** %4, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %21 = icmp ne %struct.mwifiex_adapter* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %13
  br label %62

28:                                               ; preds = %22
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %30 = load i32, i32* @INFO, align 4
  %31 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %32 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %29, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %36 = call i32 @mwifiex_sdio_read_fw_status(%struct.mwifiex_adapter* %35, i64* %7)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @FIRMWARE_READY_SDIO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %50 = call i32 @mwifiex_deauthenticate_all(%struct.mwifiex_adapter* %49)
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %52 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %53 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %51, i32 %52)
  store %struct.mwifiex_private* %53, %struct.mwifiex_private** %5, align 8
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %55 = call i32 @mwifiex_disable_auto_ds(%struct.mwifiex_private* %54)
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %57 = load i32, i32* @MWIFIEX_FUNC_SHUTDOWN, align 4
  %58 = call i32 @mwifiex_init_shutdown_fw(%struct.mwifiex_private* %56, i32 %57)
  br label %59

59:                                               ; preds = %48, %43, %39, %28
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %61 = call i32 @mwifiex_remove_card(%struct.mwifiex_adapter* %60)
  br label %62

62:                                               ; preds = %59, %27, %12
  ret void
}

declare dso_local %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i32 @mwifiex_sdio_read_fw_status(%struct.mwifiex_adapter*, i64*) #1

declare dso_local i32 @mwifiex_deauthenticate_all(%struct.mwifiex_adapter*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_disable_auto_ds(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_init_shutdown_fw(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_remove_card(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
