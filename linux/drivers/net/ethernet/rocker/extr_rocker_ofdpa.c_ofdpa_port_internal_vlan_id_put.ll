; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_internal_vlan_id_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_internal_vlan_id_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, %struct.ofdpa* }
%struct.ofdpa = type { i32, i32 }
%struct.ofdpa_internal_vlan_tbl_entry = type { i64, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"ifindex (%d) not found in internal VLAN tbl\0A\00", align 1
@OFDPA_INTERNAL_VLAN_ID_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ofdpa_port*, i32)* @ofdpa_port_internal_vlan_id_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofdpa_port_internal_vlan_id_put(%struct.ofdpa_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ofdpa_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofdpa*, align 8
  %6 = alloca %struct.ofdpa_internal_vlan_tbl_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %10 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %9, i32 0, i32 1
  %11 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  store %struct.ofdpa* %11, %struct.ofdpa** %5, align 8
  %12 = load %struct.ofdpa*, %struct.ofdpa** %5, align 8
  %13 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ofdpa*, %struct.ofdpa** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ofdpa_internal_vlan_tbl_entry* @ofdpa_internal_vlan_tbl_find(%struct.ofdpa* %16, i32 %17)
  store %struct.ofdpa_internal_vlan_tbl_entry* %18, %struct.ofdpa_internal_vlan_tbl_entry** %6, align 8
  %19 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %6, align 8
  %20 = icmp ne %struct.ofdpa_internal_vlan_tbl_entry* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.ofdpa_port*, %struct.ofdpa_port** %3, align 8
  %23 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %6, align 8
  %29 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %6, align 8
  %35 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  %38 = load i64, i64* @OFDPA_INTERNAL_VLAN_ID_BASE, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.ofdpa*, %struct.ofdpa** %5, align 8
  %42 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clear_bit(i64 %40, i32 %43)
  %45 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %6, align 8
  %46 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %45, i32 0, i32 1
  %47 = call i32 @hash_del(i32* %46)
  %48 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %6, align 8
  %49 = call i32 @kfree(%struct.ofdpa_internal_vlan_tbl_entry* %48)
  br label %50

50:                                               ; preds = %33, %27
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.ofdpa*, %struct.ofdpa** %5, align 8
  %53 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %52, i32 0, i32 0
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_internal_vlan_tbl_entry* @ofdpa_internal_vlan_tbl_find(%struct.ofdpa*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @kfree(%struct.ofdpa_internal_vlan_tbl_entry*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
