; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_set_vlan_unaware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_set_vlan_unaware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32*, %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32 }

@PCR_PORT_VLAN_MASK = common dso_local global i32 0, align 4
@MT7530_PORT_MATRIX_MODE = common dso_local global i32 0, align 4
@VLAN_ATTR_MASK = common dso_local global i32 0, align 4
@MT7530_VLAN_TRANSPARENT = common dso_local global i32 0, align 4
@MT7530_NUM_PORTS = common dso_local global i32 0, align 4
@MT7530_CPU_PORT = common dso_local global i32 0, align 4
@PORT_SPEC_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @mt7530_port_set_vlan_unaware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_port_set_vlan_unaware(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7530_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 1
  %10 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  store %struct.mt7530_priv* %10, %struct.mt7530_priv** %5, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MT7530_PCR_P(i32 %12)
  %14 = load i32, i32* @PCR_PORT_VLAN_MASK, align 4
  %15 = load i32, i32* @MT7530_PORT_MATRIX_MODE, align 4
  %16 = call i32 @mt7530_rmw(%struct.mt7530_priv* %11, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MT7530_PVC_P(i32 %18)
  %20 = load i32, i32* @VLAN_ATTR_MASK, align 4
  %21 = load i32, i32* @MT7530_VLAN_TRANSPARENT, align 4
  %22 = call i32 @VLAN_ATTR(i32 %21)
  %23 = call i32 @mt7530_rmw(%struct.mt7530_priv* %17, i32 %19, i32 %20, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %44, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MT7530_NUM_PORTS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @dsa_is_user_port(%struct.dsa_switch* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %35 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i64 @dsa_port_is_vlan_filtering(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %47

43:                                               ; preds = %33, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %24

47:                                               ; preds = %42, %24
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %52 = load i32, i32* @MT7530_CPU_PORT, align 4
  %53 = call i32 @MT7530_PCR_P(i32 %52)
  %54 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %55 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dsa_user_ports(i32 %56)
  %58 = call i32 @PCR_MATRIX(i32 %57)
  %59 = call i32 @mt7530_write(%struct.mt7530_priv* %51, i32 %53, i32 %58)
  %60 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %61 = load i32, i32* @MT7530_CPU_PORT, align 4
  %62 = call i32 @MT7530_PVC_P(i32 %61)
  %63 = load i32, i32* @PORT_SPEC_TAG, align 4
  %64 = call i32 @mt7530_write(%struct.mt7530_priv* %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @MT7530_PCR_P(i32) #1

declare dso_local i32 @MT7530_PVC_P(i32) #1

declare dso_local i32 @VLAN_ATTR(i32) #1

declare dso_local i64 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_port_is_vlan_filtering(i32*) #1

declare dso_local i32 @mt7530_write(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @PCR_MATRIX(i32) #1

declare dso_local i32 @dsa_user_ports(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
