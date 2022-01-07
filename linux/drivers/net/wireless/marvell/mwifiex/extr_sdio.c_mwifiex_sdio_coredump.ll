; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_coredump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_mmc_card = type { i32, i32 }

@MWIFIEX_IFACE_WORK_DEVICE_DUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @mwifiex_sdio_coredump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_sdio_coredump(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.sdio_mmc_card*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %5)
  store %struct.sdio_func* %6, %struct.sdio_func** %3, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %8 = call %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func* %7)
  store %struct.sdio_mmc_card* %8, %struct.sdio_mmc_card** %4, align 8
  %9 = load i32, i32* @MWIFIEX_IFACE_WORK_DEVICE_DUMP, align 4
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %11 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %10, i32 0, i32 1
  %12 = call i32 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %15, i32 0, i32 0
  %17 = call i32 @schedule_work(i32* %16)
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
