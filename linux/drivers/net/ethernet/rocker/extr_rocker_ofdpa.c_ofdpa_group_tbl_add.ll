; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_tbl_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_tbl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, %struct.ofdpa* }
%struct.ofdpa = type { i32, i32 }
%struct.ofdpa_group_tbl_entry = type { i32, i32, i32 }

@ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_MOD = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_ADD = common dso_local global i32 0, align 4
@ofdpa_cmd_group_tbl_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, %struct.ofdpa_group_tbl_entry*)* @ofdpa_group_tbl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_group_tbl_add(%struct.ofdpa_port* %0, i32 %1, %struct.ofdpa_group_tbl_entry* %2) #0 {
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  %7 = alloca %struct.ofdpa*, align 8
  %8 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ofdpa_group_tbl_entry* %2, %struct.ofdpa_group_tbl_entry** %6, align 8
  %10 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %11 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %10, i32 0, i32 1
  %12 = load %struct.ofdpa*, %struct.ofdpa** %11, align 8
  store %struct.ofdpa* %12, %struct.ofdpa** %7, align 8
  %13 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %14 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %18 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %6, align 8
  %19 = call %struct.ofdpa_group_tbl_entry* @ofdpa_group_tbl_find(%struct.ofdpa* %17, %struct.ofdpa_group_tbl_entry* %18)
  store %struct.ofdpa_group_tbl_entry* %19, %struct.ofdpa_group_tbl_entry** %8, align 8
  %20 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %21 = icmp ne %struct.ofdpa_group_tbl_entry* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %24 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %23, i32 0, i32 1
  %25 = call i32 @hash_del(i32* %24)
  %26 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %27 = call i32 @ofdpa_group_tbl_entry_free(%struct.ofdpa_group_tbl_entry* %26)
  %28 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %6, align 8
  store %struct.ofdpa_group_tbl_entry* %28, %struct.ofdpa_group_tbl_entry** %8, align 8
  %29 = load i32, i32* @ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_MOD, align 4
  %30 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %31 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %6, align 8
  store %struct.ofdpa_group_tbl_entry* %33, %struct.ofdpa_group_tbl_entry** %8, align 8
  %34 = load i32, i32* @ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_ADD, align 4
  %35 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %36 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %22
  %38 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %39 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %41, i32 0, i32 1
  %43 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %44 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hash_add(i32 %40, i32* %42, i32 %45)
  %47 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %48 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %52 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ofdpa_flags_nowait(i32 %54)
  %56 = load i32, i32* @ofdpa_cmd_group_tbl_add, align 4
  %57 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %58 = call i32 @rocker_cmd_exec(i32 %53, i32 %55, i32 %56, %struct.ofdpa_group_tbl_entry* %57, i32* null, i32* null)
  ret i32 %58
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_group_tbl_entry* @ofdpa_group_tbl_find(%struct.ofdpa*, %struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @ofdpa_group_tbl_entry_free(%struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rocker_cmd_exec(i32, i32, i32, %struct.ofdpa_group_tbl_entry*, i32*, i32*) #1

declare dso_local i32 @ofdpa_flags_nowait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
