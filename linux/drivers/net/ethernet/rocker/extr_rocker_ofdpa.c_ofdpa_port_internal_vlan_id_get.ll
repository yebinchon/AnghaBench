; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_internal_vlan_id_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_internal_vlan_id_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, %struct.ofdpa* }
%struct.ofdpa = type { i32, i32, i32 }
%struct.ofdpa_internal_vlan_tbl_entry = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OFDPA_N_INTERNAL_VLANS = common dso_local global i32 0, align 4
@OFDPA_INTERNAL_VLAN_ID_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Out of internal VLAN IDs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32)* @ofdpa_port_internal_vlan_id_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_internal_vlan_id_get(%struct.ofdpa_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa*, align 8
  %7 = alloca %struct.ofdpa_internal_vlan_tbl_entry*, align 8
  %8 = alloca %struct.ofdpa_internal_vlan_tbl_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %12 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %11, i32 0, i32 1
  %13 = load %struct.ofdpa*, %struct.ofdpa** %12, align 8
  store %struct.ofdpa* %13, %struct.ofdpa** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ofdpa_internal_vlan_tbl_entry* @kzalloc(i32 16, i32 %14)
  store %struct.ofdpa_internal_vlan_tbl_entry* %15, %struct.ofdpa_internal_vlan_tbl_entry** %7, align 8
  %16 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %7, align 8
  %17 = icmp ne %struct.ofdpa_internal_vlan_tbl_entry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %7, align 8
  %22 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ofdpa*, %struct.ofdpa** %6, align 8
  %24 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.ofdpa*, %struct.ofdpa** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.ofdpa_internal_vlan_tbl_entry* @ofdpa_internal_vlan_tbl_find(%struct.ofdpa* %27, i32 %28)
  store %struct.ofdpa_internal_vlan_tbl_entry* %29, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %30 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %31 = icmp ne %struct.ofdpa_internal_vlan_tbl_entry* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %7, align 8
  %34 = call i32 @kfree(%struct.ofdpa_internal_vlan_tbl_entry* %33)
  br label %74

35:                                               ; preds = %19
  %36 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %7, align 8
  store %struct.ofdpa_internal_vlan_tbl_entry* %36, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %37 = load %struct.ofdpa*, %struct.ofdpa** %6, align 8
  %38 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %41 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %40, i32 0, i32 3
  %42 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %43 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hash_add(i32 %39, i32* %41, i32 %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %66, %35
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @OFDPA_N_INTERNAL_VLANS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ofdpa*, %struct.ofdpa** %6, align 8
  %53 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @test_and_set_bit(i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %66

58:                                               ; preds = %50
  %59 = load i64, i64* @OFDPA_INTERNAL_VLAN_ID_BASE, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @htons(i64 %62)
  %64 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %65 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %74

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %71 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @netdev_err(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %58, %32
  %75 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %76 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ofdpa*, %struct.ofdpa** %6, align 8
  %80 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %79, i32 0, i32 0
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.ofdpa_internal_vlan_tbl_entry*, %struct.ofdpa_internal_vlan_tbl_entry** %8, align 8
  %84 = getelementptr inbounds %struct.ofdpa_internal_vlan_tbl_entry, %struct.ofdpa_internal_vlan_tbl_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %74, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ofdpa_internal_vlan_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_internal_vlan_tbl_entry* @ofdpa_internal_vlan_tbl_find(%struct.ofdpa*, i32) #1

declare dso_local i32 @kfree(%struct.ofdpa_internal_vlan_tbl_entry*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
