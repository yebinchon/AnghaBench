; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_set_vlan_aware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_set_vlan_aware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32 }

@PCR_MATRIX_MASK = common dso_local global i32 0, align 4
@MT7530_ALL_MEMBERS = common dso_local global i32 0, align 4
@PCR_PORT_VLAN_MASK = common dso_local global i32 0, align 4
@MT7530_PORT_SECURITY_MODE = common dso_local global i32 0, align 4
@VLAN_ATTR_MASK = common dso_local global i32 0, align 4
@MT7530_VLAN_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @mt7530_port_set_vlan_aware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_port_set_vlan_aware(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7530_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  store %struct.mt7530_priv* %8, %struct.mt7530_priv** %5, align 8
  %9 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MT7530_PCR_P(i32 %10)
  %12 = load i32, i32* @PCR_MATRIX_MASK, align 4
  %13 = load i32, i32* @MT7530_ALL_MEMBERS, align 4
  %14 = call i32 @PCR_MATRIX(i32 %13)
  %15 = call i32 @mt7530_rmw(%struct.mt7530_priv* %9, i32 %11, i32 %12, i32 %14)
  %16 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @MT7530_PCR_P(i32 %17)
  %19 = load i32, i32* @PCR_PORT_VLAN_MASK, align 4
  %20 = load i32, i32* @MT7530_PORT_SECURITY_MODE, align 4
  %21 = call i32 @mt7530_rmw(%struct.mt7530_priv* %16, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MT7530_PVC_P(i32 %23)
  %25 = load i32, i32* @VLAN_ATTR_MASK, align 4
  %26 = load i32, i32* @MT7530_VLAN_USER, align 4
  %27 = call i32 @VLAN_ATTR(i32 %26)
  %28 = call i32 @mt7530_rmw(%struct.mt7530_priv* %22, i32 %24, i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @MT7530_PCR_P(i32) #1

declare dso_local i32 @PCR_MATRIX(i32) #1

declare dso_local i32 @MT7530_PVC_P(i32) #1

declare dso_local i32 @VLAN_ATTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
