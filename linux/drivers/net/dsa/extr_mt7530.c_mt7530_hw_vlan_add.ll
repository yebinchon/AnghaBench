; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_hw_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_hw_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { i32 }
%struct.mt7530_hw_vlan_entry = type { i32, i32, i64 }

@MT7530_CPU_PORT = common dso_local global i32 0, align 4
@IVL_MAC = common dso_local global i32 0, align 4
@VTAG_EN = common dso_local global i32 0, align 4
@VLAN_VALID = common dso_local global i32 0, align 4
@MT7530_VAWD1 = common dso_local global i32 0, align 4
@MT7530_VLAN_EGRESS_UNTAG = common dso_local global i32 0, align 4
@MT7530_VLAN_EGRESS_TAG = common dso_local global i32 0, align 4
@MT7530_VAWD2 = common dso_local global i32 0, align 4
@MT7530_VLAN_EGRESS_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7530_priv*, %struct.mt7530_hw_vlan_entry*)* @mt7530_hw_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_hw_vlan_add(%struct.mt7530_priv* %0, %struct.mt7530_hw_vlan_entry* %1) #0 {
  %3 = alloca %struct.mt7530_priv*, align 8
  %4 = alloca %struct.mt7530_hw_vlan_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %3, align 8
  store %struct.mt7530_hw_vlan_entry* %1, %struct.mt7530_hw_vlan_entry** %4, align 8
  %7 = load %struct.mt7530_hw_vlan_entry*, %struct.mt7530_hw_vlan_entry** %4, align 8
  %8 = getelementptr inbounds %struct.mt7530_hw_vlan_entry, %struct.mt7530_hw_vlan_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mt7530_hw_vlan_entry*, %struct.mt7530_hw_vlan_entry** %4, align 8
  %11 = getelementptr inbounds %struct.mt7530_hw_vlan_entry, %struct.mt7530_hw_vlan_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = or i32 %9, %13
  %15 = load i32, i32* @MT7530_CPU_PORT, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = or i32 %14, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IVL_MAC, align 4
  %19 = load i32, i32* @VTAG_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @PORT_MEM(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* @VLAN_VALID, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %27 = load i32, i32* @MT7530_VAWD1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @mt7530_write(%struct.mt7530_priv* %26, i32 %27, i32 %28)
  %30 = load %struct.mt7530_hw_vlan_entry*, %struct.mt7530_hw_vlan_entry** %4, align 8
  %31 = getelementptr inbounds %struct.mt7530_hw_vlan_entry, %struct.mt7530_hw_vlan_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @MT7530_VLAN_EGRESS_UNTAG, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @MT7530_VLAN_EGRESS_TAG, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %6, align 4
  %40 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %41 = load i32, i32* @MT7530_VAWD2, align 4
  %42 = load %struct.mt7530_hw_vlan_entry*, %struct.mt7530_hw_vlan_entry** %4, align 8
  %43 = getelementptr inbounds %struct.mt7530_hw_vlan_entry, %struct.mt7530_hw_vlan_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ETAG_CTRL_P_MASK(i32 %44)
  %46 = load %struct.mt7530_hw_vlan_entry*, %struct.mt7530_hw_vlan_entry** %4, align 8
  %47 = getelementptr inbounds %struct.mt7530_hw_vlan_entry, %struct.mt7530_hw_vlan_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ETAG_CTRL_P(i32 %48, i32 %49)
  %51 = call i32 @mt7530_rmw(%struct.mt7530_priv* %40, i32 %41, i32 %45, i32 %50)
  %52 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %53 = load i32, i32* @MT7530_VAWD2, align 4
  %54 = load i32, i32* @MT7530_CPU_PORT, align 4
  %55 = call i32 @ETAG_CTRL_P_MASK(i32 %54)
  %56 = load i32, i32* @MT7530_CPU_PORT, align 4
  %57 = load i32, i32* @MT7530_VLAN_EGRESS_STACK, align 4
  %58 = call i32 @ETAG_CTRL_P(i32 %56, i32 %57)
  %59 = call i32 @mt7530_rmw(%struct.mt7530_priv* %52, i32 %53, i32 %55, i32 %58)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @PORT_MEM(i32) #1

declare dso_local i32 @mt7530_write(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @ETAG_CTRL_P_MASK(i32) #1

declare dso_local i32 @ETAG_CTRL_P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
