; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_tbl_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_tbl_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, %struct.ofdpa* }
%struct.ofdpa = type { i32 }
%struct.ofdpa_group_tbl_entry = type { i32, i32 }

@ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_DEL = common dso_local global i32 0, align 4
@ofdpa_cmd_group_tbl_del = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, %struct.ofdpa_group_tbl_entry*)* @ofdpa_group_tbl_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_group_tbl_del(%struct.ofdpa_port* %0, i32 %1, %struct.ofdpa_group_tbl_entry* %2) #0 {
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  %7 = alloca %struct.ofdpa*, align 8
  %8 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ofdpa_group_tbl_entry* %2, %struct.ofdpa_group_tbl_entry** %6, align 8
  %11 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %12 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %11, i32 0, i32 1
  %13 = load %struct.ofdpa*, %struct.ofdpa** %12, align 8
  store %struct.ofdpa* %13, %struct.ofdpa** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %15 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %19 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %6, align 8
  %20 = call %struct.ofdpa_group_tbl_entry* @ofdpa_group_tbl_find(%struct.ofdpa* %18, %struct.ofdpa_group_tbl_entry* %19)
  store %struct.ofdpa_group_tbl_entry* %20, %struct.ofdpa_group_tbl_entry** %8, align 8
  %21 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %22 = icmp ne %struct.ofdpa_group_tbl_entry* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %25 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %24, i32 0, i32 1
  %26 = call i32 @hash_del(i32* %25)
  %27 = load i32, i32* @ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_DEL, align 4
  %28 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %29 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %32 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %6, align 8
  %36 = call i32 @ofdpa_group_tbl_entry_free(%struct.ofdpa_group_tbl_entry* %35)
  %37 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %38 = icmp ne %struct.ofdpa_group_tbl_entry* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %41 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ofdpa_flags_nowait(i32 %43)
  %45 = load i32, i32* @ofdpa_cmd_group_tbl_del, align 4
  %46 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %47 = call i32 @rocker_cmd_exec(i32 %42, i32 %44, i32 %45, %struct.ofdpa_group_tbl_entry* %46, i32* null, i32* null)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %8, align 8
  %49 = call i32 @ofdpa_group_tbl_entry_free(%struct.ofdpa_group_tbl_entry* %48)
  br label %50

50:                                               ; preds = %39, %30
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_group_tbl_entry* @ofdpa_group_tbl_find(%struct.ofdpa*, %struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ofdpa_group_tbl_entry_free(%struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @rocker_cmd_exec(i32, i32, i32, %struct.ofdpa_group_tbl_entry*, i32*, i32*) #1

declare dso_local i32 @ofdpa_flags_nowait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
