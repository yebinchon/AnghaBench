; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dev_addr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dev_addr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.TYPE_2__*, %struct.rocker* }
%struct.TYPE_2__ = type { i32 }
%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to get mac address, using random\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker_port*)* @rocker_port_dev_addr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_port_dev_addr_init(%struct.rocker_port* %0) #0 {
  %2 = alloca %struct.rocker_port*, align 8
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %2, align 8
  %6 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %7 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %6, i32 0, i32 1
  %8 = load %struct.rocker*, %struct.rocker** %7, align 8
  store %struct.rocker* %8, %struct.rocker** %3, align 8
  %9 = load %struct.rocker*, %struct.rocker** %3, align 8
  %10 = getelementptr inbounds %struct.rocker, %struct.rocker* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %13 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %14 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rocker_cmd_get_port_settings_macaddr(%struct.rocker_port* %12, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %26 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @eth_hw_addr_random(%struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @rocker_cmd_get_port_settings_macaddr(%struct.rocker_port*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
