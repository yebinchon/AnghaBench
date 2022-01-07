; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32*, %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.switchdev_obj_port_vlan = type { i64, i64 }
%struct.mt7530_hw_vlan_entry = type { i32 }

@mt7530_hw_vlan_del = common dso_local global i32 0, align 4
@G0_PORT_VID_DEF = common dso_local global i64 0, align 8
@G0_PORT_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @mt7530_port_vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_port_vlan_del(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.mt7530_hw_vlan_entry, align 4
  %9 = alloca %struct.mt7530_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 1
  %14 = load %struct.mt7530_priv*, %struct.mt7530_priv** %13, align 8
  store %struct.mt7530_priv* %14, %struct.mt7530_priv** %9, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @dsa_port_is_vlan_filtering(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

24:                                               ; preds = %3
  %25 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %26 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %29 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %37 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %58, %24
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %42 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mt7530_hw_vlan_entry_init(%struct.mt7530_hw_vlan_entry* %8, i32 %46, i32 0)
  %48 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @mt7530_hw_vlan_del, align 4
  %51 = call i32 @mt7530_hw_vlan_update(%struct.mt7530_priv* %48, i64 %49, %struct.mt7530_hw_vlan_entry* %8, i32 %50)
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64, i64* @G0_PORT_VID_DEF, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %55, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %39

61:                                               ; preds = %39
  %62 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @MT7530_PPBV1_P(i32 %63)
  %65 = load i32, i32* @G0_PORT_VID_MASK, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @mt7530_rmw(%struct.mt7530_priv* %62, i32 %64, i32 %65, i64 %66)
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %70 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %68, i64* %75, align 8
  %76 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %77 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %61, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @dsa_port_is_vlan_filtering(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7530_hw_vlan_entry_init(%struct.mt7530_hw_vlan_entry*, i32, i32) #1

declare dso_local i32 @mt7530_hw_vlan_update(%struct.mt7530_priv*, i64, %struct.mt7530_hw_vlan_entry*, i32) #1

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i64) #1

declare dso_local i32 @MT7530_PPBV1_P(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
