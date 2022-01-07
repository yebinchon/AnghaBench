; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_default_mac_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_default_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.TYPE_4__, %struct.igb_mac_addr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.igb_mac_addr = type { i32, i32, i32 }

@IGB_MAC_STATE_DEFAULT = common dso_local global i32 0, align 4
@IGB_MAC_STATE_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_set_default_mac_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_set_default_mac_filter(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.igb_mac_addr*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %4 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %4, i32 0, i32 2
  %6 = load %struct.igb_mac_addr*, %struct.igb_mac_addr** %5, align 8
  %7 = getelementptr inbounds %struct.igb_mac_addr, %struct.igb_mac_addr* %6, i64 0
  store %struct.igb_mac_addr* %7, %struct.igb_mac_addr** %3, align 8
  %8 = load %struct.igb_mac_addr*, %struct.igb_mac_addr** %3, align 8
  %9 = getelementptr inbounds %struct.igb_mac_addr, %struct.igb_mac_addr* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ether_addr_copy(i32 %10, i32 %15)
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.igb_mac_addr*, %struct.igb_mac_addr** %3, align 8
  %21 = getelementptr inbounds %struct.igb_mac_addr, %struct.igb_mac_addr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @IGB_MAC_STATE_DEFAULT, align 4
  %23 = load i32, i32* @IGB_MAC_STATE_IN_USE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.igb_mac_addr*, %struct.igb_mac_addr** %3, align 8
  %26 = getelementptr inbounds %struct.igb_mac_addr, %struct.igb_mac_addr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %28 = call i32 @igb_rar_set_index(%struct.igb_adapter* %27, i32 0)
  ret void
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @igb_rar_set_index(%struct.igb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
