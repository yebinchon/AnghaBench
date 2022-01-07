; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_hw_vlan_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_hw_vlan_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { i32 }
%struct.mt7530_hw_vlan_entry = type { i32 }

@MT7530_VTCR_RD_VID = common dso_local global i32 0, align 4
@MT7530_VAWD1 = common dso_local global i32 0, align 4
@PORT_MEM_SHFT = common dso_local global i32 0, align 4
@PORT_MEM_MASK = common dso_local global i32 0, align 4
@MT7530_VTCR_WR_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7530_priv*, i32, %struct.mt7530_hw_vlan_entry*, i32 (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)*)* @mt7530_hw_vlan_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_hw_vlan_update(%struct.mt7530_priv* %0, i32 %1, %struct.mt7530_hw_vlan_entry* %2, i32 (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)* %3) #0 {
  %5 = alloca %struct.mt7530_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt7530_hw_vlan_entry*, align 8
  %8 = alloca i32 (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)*, align 8
  %9 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mt7530_hw_vlan_entry* %2, %struct.mt7530_hw_vlan_entry** %7, align 8
  store i32 (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)* %3, i32 (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)** %8, align 8
  %10 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %11 = load i32, i32* @MT7530_VTCR_RD_VID, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @mt7530_vlan_cmd(%struct.mt7530_priv* %10, i32 %11, i32 %12)
  %14 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %15 = load i32, i32* @MT7530_VAWD1, align 4
  %16 = call i32 @mt7530_read(%struct.mt7530_priv* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @PORT_MEM_SHFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @PORT_MEM_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.mt7530_hw_vlan_entry*, %struct.mt7530_hw_vlan_entry** %7, align 8
  %23 = getelementptr inbounds %struct.mt7530_hw_vlan_entry, %struct.mt7530_hw_vlan_entry* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32 (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)*, i32 (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)** %8, align 8
  %25 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %26 = load %struct.mt7530_hw_vlan_entry*, %struct.mt7530_hw_vlan_entry** %7, align 8
  %27 = call i32 %24(%struct.mt7530_priv* %25, %struct.mt7530_hw_vlan_entry* %26)
  %28 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %29 = load i32, i32* @MT7530_VTCR_WR_VID, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mt7530_vlan_cmd(%struct.mt7530_priv* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @mt7530_vlan_cmd(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @mt7530_read(%struct.mt7530_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
