; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_configure(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %3 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %4 = call i32 @ixgbevf_configure_dcb(%struct.ixgbevf_adapter* %3)
  %5 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ixgbevf_set_rx_mode(i32 %7)
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %10 = call i32 @ixgbevf_restore_vlan(%struct.ixgbevf_adapter* %9)
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %12 = call i32 @ixgbevf_ipsec_restore(%struct.ixgbevf_adapter* %11)
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %14 = call i32 @ixgbevf_configure_tx(%struct.ixgbevf_adapter* %13)
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %16 = call i32 @ixgbevf_configure_rx(%struct.ixgbevf_adapter* %15)
  ret void
}

declare dso_local i32 @ixgbevf_configure_dcb(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_set_rx_mode(i32) #1

declare dso_local i32 @ixgbevf_restore_vlan(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_ipsec_restore(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_configure_tx(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_configure_rx(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
