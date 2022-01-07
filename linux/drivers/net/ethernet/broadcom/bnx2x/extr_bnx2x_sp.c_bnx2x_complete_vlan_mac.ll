; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_complete_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_complete_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.TYPE_5__, %struct.bnx2x_raw_obj }
%struct.TYPE_5__ = type { i32 }
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x_raw_obj*)* }
%union.event_ring_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RAMROD_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %union.event_ring_elem*, i64*)* @bnx2x_complete_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_complete_vlan_mac(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %union.event_ring_elem* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %union.event_ring_elem*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.bnx2x_raw_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %union.event_ring_elem* %2, %union.event_ring_elem** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %12, i32 0, i32 1
  store %struct.bnx2x_raw_obj* %13, %struct.bnx2x_raw_obj** %10, align 8
  %14 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %19 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %19, i32 0, i32 0
  %21 = call i32 @__bnx2x_exe_queue_reset_pending(%struct.bnx2x* %18, %struct.TYPE_5__* %20)
  %22 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %23 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %22, i32 0, i32 0
  %24 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %23, align 8
  %25 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %26 = call i32 %24(%struct.bnx2x_raw_obj* %25)
  %27 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %28 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %union.event_ring_elem*, %union.event_ring_elem** %8, align 8
  %32 = bitcast %union.event_ring_elem* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %61

39:                                               ; preds = %4
  %40 = load i32, i32* @RAMROD_CONT, align 4
  %41 = load i64*, i64** %9, align 8
  %42 = call i64 @test_bit(i32 %40, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %46 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = call i32 @__bnx2x_vlan_mac_execute_step(%struct.bnx2x* %45, %struct.bnx2x_vlan_mac_obj* %46, i64* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %61

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %56 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %55, i32 0, i32 0
  %57 = call i32 @bnx2x_exe_queue_empty(%struct.TYPE_5__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59, %51, %36
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__bnx2x_exe_queue_reset_pending(%struct.bnx2x*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__bnx2x_vlan_mac_execute_step(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i64*) #1

declare dso_local i32 @bnx2x_exe_queue_empty(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
