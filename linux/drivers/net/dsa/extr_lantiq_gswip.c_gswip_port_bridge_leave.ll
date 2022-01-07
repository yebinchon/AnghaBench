; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.net_device*)* @gswip_port_bridge_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_port_bridge_leave(%struct.dsa_switch* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.gswip_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 0
  %10 = load %struct.gswip_priv*, %struct.gswip_priv** %9, align 8
  store %struct.gswip_priv* %10, %struct.gswip_priv** %7, align 8
  %11 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @gswip_add_single_port_br(%struct.gswip_priv* %11, i32 %12, i32 1)
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i32 @br_vlan_enabled(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @gswip_vlan_remove(%struct.gswip_priv* %18, %struct.net_device* %19, i32 %20, i32 0, i32 1, i32 0)
  br label %22

22:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @gswip_add_single_port_br(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @br_vlan_enabled(%struct.net_device*) #1

declare dso_local i32 @gswip_vlan_remove(%struct.gswip_priv*, %struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
