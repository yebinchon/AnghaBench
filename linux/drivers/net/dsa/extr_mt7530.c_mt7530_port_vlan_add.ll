; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32*, %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.switchdev_obj_port_vlan = type { i32, i64, i64 }
%struct.mt7530_hw_vlan_entry = type { i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@mt7530_hw_vlan_add = common dso_local global i32 0, align 4
@G0_PORT_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @mt7530_port_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_port_vlan_add(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7530_hw_vlan_entry, align 4
  %10 = alloca %struct.mt7530_priv*, align 8
  %11 = alloca i64, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %6, align 8
  %12 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %13 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %18 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %23 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %22, i32 0, i32 1
  %24 = load %struct.mt7530_priv*, %struct.mt7530_priv** %23, align 8
  store %struct.mt7530_priv* %24, %struct.mt7530_priv** %10, align 8
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @dsa_port_is_vlan_filtering(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %85

34:                                               ; preds = %3
  %35 = load %struct.mt7530_priv*, %struct.mt7530_priv** %10, align 8
  %36 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %39 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %55, %34
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %44 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mt7530_hw_vlan_entry_init(%struct.mt7530_hw_vlan_entry* %9, i32 %48, i32 %49)
  %51 = load %struct.mt7530_priv*, %struct.mt7530_priv** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* @mt7530_hw_vlan_add, align 4
  %54 = call i32 @mt7530_hw_vlan_update(%struct.mt7530_priv* %51, i64 %52, %struct.mt7530_hw_vlan_entry* %9, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %11, align 8
  br label %41

58:                                               ; preds = %41
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load %struct.mt7530_priv*, %struct.mt7530_priv** %10, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @MT7530_PPBV1_P(i32 %63)
  %65 = load i32, i32* @G0_PORT_VID_MASK, align 4
  %66 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %67 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @G0_PORT_VID(i64 %68)
  %70 = call i32 @mt7530_rmw(%struct.mt7530_priv* %62, i32 %64, i32 %65, i32 %69)
  %71 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %72 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mt7530_priv*, %struct.mt7530_priv** %10, align 8
  %75 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 %73, i64* %80, align 8
  br label %81

81:                                               ; preds = %61, %58
  %82 = load %struct.mt7530_priv*, %struct.mt7530_priv** %10, align 8
  %83 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %81, %33
  ret void
}

declare dso_local i32 @dsa_port_is_vlan_filtering(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7530_hw_vlan_entry_init(%struct.mt7530_hw_vlan_entry*, i32, i32) #1

declare dso_local i32 @mt7530_hw_vlan_update(%struct.mt7530_priv*, i64, %struct.mt7530_hw_vlan_entry*, i32) #1

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @MT7530_PPBV1_P(i32) #1

declare dso_local i32 @G0_PORT_VID(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
