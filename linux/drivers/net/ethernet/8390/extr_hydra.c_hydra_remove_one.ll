; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_hydra.c_hydra_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_hydra.c_hydra_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { i32 }
%struct.net_device = type { i32 }

@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@HYDRA_NIC_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zorro_dev*)* @hydra_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hydra_remove_one(%struct.zorro_dev* %0) #0 {
  %2 = alloca %struct.zorro_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.zorro_dev* %0, %struct.zorro_dev** %2, align 8
  %4 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %5 = call %struct.net_device* @zorro_get_drvdata(%struct.zorro_dev* %4)
  store %struct.net_device* %5, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i32 @unregister_netdev(%struct.net_device* %6)
  %8 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ZTWO_PADDR(i32 %13)
  %15 = load i64, i64* @HYDRA_NIC_BASE, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i32 @release_mem_region(i64 %16, i32 65536)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @free_netdev(%struct.net_device* %18)
  ret void
}

declare dso_local %struct.net_device* @zorro_get_drvdata(%struct.zorro_dev*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i64 @ZTWO_PADDR(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
