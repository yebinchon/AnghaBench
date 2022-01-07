; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nic = type { i32 (%struct.nic*, i32, i32, i32, i32)* }

@mdi_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.nic* @netdev_priv(%struct.net_device* %8)
  store %struct.nic* %9, %struct.nic** %7, align 8
  %10 = load %struct.nic*, %struct.nic** %7, align 8
  %11 = getelementptr inbounds %struct.nic, %struct.nic* %10, i32 0, i32 0
  %12 = load i32 (%struct.nic*, i32, i32, i32, i32)*, i32 (%struct.nic*, i32, i32, i32, i32)** %11, align 8
  %13 = load %struct.nic*, %struct.nic** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @mdi_read, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 %12(%struct.nic* %13, i32 %14, i32 %15, i32 %16, i32 0)
  ret i32 %17
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
