; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 (%struct.e1000_ring*, i32, i32)*, %struct.TYPE_2__*, %struct.e1000_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_ring = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_configure(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_ring*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %4 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %4, i32 0, i32 2
  %6 = load %struct.e1000_ring*, %struct.e1000_ring** %5, align 8
  store %struct.e1000_ring* %6, %struct.e1000_ring** %3, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @e1000e_set_rx_mode(%struct.TYPE_2__* %9)
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = call i32 @e1000_restore_vlan(%struct.e1000_adapter* %11)
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %14 = call i32 @e1000_init_manageability_pt(%struct.e1000_adapter* %13)
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = call i32 @e1000_configure_tx(%struct.e1000_adapter* %15)
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NETIF_F_RXHASH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %27 = call i32 @e1000e_setup_rss_hash(%struct.e1000_adapter* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %30 = call i32 @e1000_setup_rctl(%struct.e1000_adapter* %29)
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %32 = call i32 @e1000_configure_rx(%struct.e1000_adapter* %31)
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 0
  %35 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %34, align 8
  %36 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %37 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %38 = call i32 @e1000_desc_unused(%struct.e1000_ring* %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 %35(%struct.e1000_ring* %36, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @e1000e_set_rx_mode(%struct.TYPE_2__*) #1

declare dso_local i32 @e1000_restore_vlan(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_init_manageability_pt(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_configure_tx(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_setup_rss_hash(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_setup_rctl(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_configure_rx(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_desc_unused(%struct.e1000_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
