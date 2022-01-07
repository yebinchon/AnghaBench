; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_put_credit_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_put_credit_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_credit_pool_obj* }
%struct.bnx2x_credit_pool_obj = type { i32 (%struct.bnx2x_credit_pool_obj*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_vlan_mac_obj*)* @bnx2x_put_credit_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_put_credit_vlan(%struct.bnx2x_vlan_mac_obj* %0) #0 {
  %2 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %3 = alloca %struct.bnx2x_credit_pool_obj*, align 8
  store %struct.bnx2x_vlan_mac_obj* %0, %struct.bnx2x_vlan_mac_obj** %2, align 8
  %4 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %4, i32 0, i32 0
  %6 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %5, align 8
  store %struct.bnx2x_credit_pool_obj* %6, %struct.bnx2x_credit_pool_obj** %3, align 8
  %7 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x_credit_pool_obj, %struct.bnx2x_credit_pool_obj* %7, i32 0, i32 0
  %9 = load i32 (%struct.bnx2x_credit_pool_obj*, i32)*, i32 (%struct.bnx2x_credit_pool_obj*, i32)** %8, align 8
  %10 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %3, align 8
  %11 = call i32 %9(%struct.bnx2x_credit_pool_obj* %10, i32 1)
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
