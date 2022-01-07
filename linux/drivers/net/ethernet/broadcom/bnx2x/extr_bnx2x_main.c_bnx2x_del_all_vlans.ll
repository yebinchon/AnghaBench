; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_del_all_vlans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_del_all_vlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bnx2x_vlan_mac_obj }
%struct.bnx2x_vlan_mac_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)* }
%struct.bnx2x.0 = type opaque

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@BNX2X_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_del_all_vlans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_del_all_vlans(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.bnx2x_vlan_mac_obj* %12, %struct.bnx2x_vlan_mac_obj** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %14 = call i32 @__set_bit(i32 %13, i64* %5)
  %15 = load i32, i32* @BNX2X_VLAN, align 4
  %16 = call i32 @__set_bit(i32 %15, i64* %6)
  %17 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %17, i32 0, i32 0
  %19 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i64*, i64*)** %18, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = bitcast %struct.bnx2x* %20 to %struct.bnx2x.0*
  %22 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %4, align 8
  %23 = call i32 %19(%struct.bnx2x.0* %21, %struct.bnx2x_vlan_mac_obj* %22, i64* %6, i64* %5)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = call i32 @bnx2x_clear_vlan_info(%struct.bnx2x* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_clear_vlan_info(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
