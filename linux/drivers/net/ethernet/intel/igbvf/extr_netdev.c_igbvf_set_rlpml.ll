; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_set_rlpml.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_set_rlpml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@VLAN_TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_set_rlpml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_set_rlpml(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %5 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %5, i32 0, i32 1
  store %struct.e1000_hw* %6, %struct.e1000_hw** %4, align 8
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VLAN_TAG_SIZE, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @e1000_rlpml_set_vf(%struct.e1000_hw* %15, i32 %16)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @e1000_rlpml_set_vf(%struct.e1000_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
