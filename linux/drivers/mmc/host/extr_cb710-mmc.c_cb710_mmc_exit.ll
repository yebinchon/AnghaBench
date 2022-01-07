; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cb710_slot = type { i32 }
%struct.mmc_host = type { i32 }
%struct.cb710_mmc_reader = type { i32 }

@CB710_MMC_IE_CARD_INSERTION_STATUS = common dso_local global i32 0, align 4
@CB710_MMC_CONFIG_PORT = common dso_local global i32 0, align 4
@CB710_MMC_CONFIGB_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cb710_mmc_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_mmc_exit(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cb710_slot*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.cb710_mmc_reader*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.cb710_slot* @cb710_pdev_to_slot(%struct.platform_device* %6)
  store %struct.cb710_slot* %7, %struct.cb710_slot** %3, align 8
  %8 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %9 = call %struct.mmc_host* @cb710_slot_to_mmc(%struct.cb710_slot* %8)
  store %struct.mmc_host* %9, %struct.mmc_host** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %10)
  store %struct.cb710_mmc_reader* %11, %struct.cb710_mmc_reader** %5, align 8
  %12 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %13 = load i32, i32* @CB710_MMC_IE_CARD_INSERTION_STATUS, align 4
  %14 = call i32 @cb710_mmc_enable_irq(%struct.cb710_slot* %12, i32 0, i32 %13)
  %15 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %16 = call i32 @mmc_remove_host(%struct.mmc_host* %15)
  %17 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %18 = call i32 @cb710_mmc_enable_irq(%struct.cb710_slot* %17, i32 0, i32 -1)
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %20 = call i32 @cb710_set_irq_handler(%struct.cb710_slot* %19, i32* null)
  %21 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %22 = load i32, i32* @CB710_MMC_CONFIG_PORT, align 4
  %23 = call i32 @cb710_write_port_32(%struct.cb710_slot* %21, i32 %22, i32 0)
  %24 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %25 = load i32, i32* @CB710_MMC_CONFIGB_PORT, align 4
  %26 = call i32 @cb710_write_port_16(%struct.cb710_slot* %24, i32 %25, i32 0)
  %27 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %5, align 8
  %28 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %27, i32 0, i32 0
  %29 = call i32 @tasklet_kill(i32* %28)
  %30 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %31 = call i32 @mmc_free_host(%struct.mmc_host* %30)
  ret i32 0
}

declare dso_local %struct.cb710_slot* @cb710_pdev_to_slot(%struct.platform_device*) #1

declare dso_local %struct.mmc_host* @cb710_slot_to_mmc(%struct.cb710_slot*) #1

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @cb710_mmc_enable_irq(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @cb710_set_irq_handler(%struct.cb710_slot*, i32*) #1

declare dso_local i32 @cb710_write_port_32(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @cb710_write_port_16(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
