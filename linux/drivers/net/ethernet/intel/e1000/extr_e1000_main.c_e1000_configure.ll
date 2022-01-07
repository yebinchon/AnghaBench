; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)*, %struct.e1000_rx_ring*, %struct.net_device* }
%struct.e1000_rx_ring = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_configure(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_rx_ring*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @e1000_set_rx_mode(%struct.net_device* %9)
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = call i32 @e1000_restore_vlan(%struct.e1000_adapter* %11)
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %14 = call i32 @e1000_init_manageability(%struct.e1000_adapter* %13)
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = call i32 @e1000_configure_tx(%struct.e1000_adapter* %15)
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = call i32 @e1000_setup_rctl(%struct.e1000_adapter* %17)
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = call i32 @e1000_configure_rx(%struct.e1000_adapter* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %42, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 2
  %30 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %30, i64 %32
  store %struct.e1000_rx_ring* %33, %struct.e1000_rx_ring** %5, align 8
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %34, i32 0, i32 1
  %36 = load i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)*, i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)** %35, align 8
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %38 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %39 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %40 = call i32 @E1000_DESC_UNUSED(%struct.e1000_rx_ring* %39)
  %41 = call i32 %36(%struct.e1000_adapter* %37, %struct.e1000_rx_ring* %38, i32 %40)
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %21

45:                                               ; preds = %21
  ret void
}

declare dso_local i32 @e1000_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @e1000_restore_vlan(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_init_manageability(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_configure_tx(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_setup_rctl(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_configure_rx(%struct.e1000_adapter*) #1

declare dso_local i32 @E1000_DESC_UNUSED(%struct.e1000_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
