; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, %struct.ofdpa* }
%struct.ofdpa = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { i64, i32, i32, i32, i32 }

@ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_DEL = common dso_local global i32 0, align 4
@ofdpa_cmd_flow_tbl_del = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, %struct.ofdpa_flow_tbl_entry*)* @ofdpa_flow_tbl_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_flow_tbl_del(%struct.ofdpa_port* %0, i32 %1, %struct.ofdpa_flow_tbl_entry* %2) #0 {
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  %7 = alloca %struct.ofdpa*, align 8
  %8 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ofdpa_flow_tbl_entry* %2, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %12 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %13 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %12, i32 0, i32 1
  %14 = load %struct.ofdpa*, %struct.ofdpa** %13, align 8
  store %struct.ofdpa* %14, %struct.ofdpa** %7, align 8
  %15 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %16 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %21 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ 4, %23 ]
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %27 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %26, i32 0, i32 3
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @crc32(i32 -1, i32* %27, i64 %28)
  %30 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %31 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %33 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %37 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %38 = call %struct.ofdpa_flow_tbl_entry* @ofdpa_flow_tbl_find(%struct.ofdpa* %36, %struct.ofdpa_flow_tbl_entry* %37)
  store %struct.ofdpa_flow_tbl_entry* %38, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %39 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %40 = icmp ne %struct.ofdpa_flow_tbl_entry* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %24
  %42 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %43 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %42, i32 0, i32 2
  %44 = call i32 @hash_del(i32* %43)
  %45 = load i32, i32* @ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_DEL, align 4
  %46 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %47 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %41, %24
  %49 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %50 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %54 = call i32 @kfree(%struct.ofdpa_flow_tbl_entry* %53)
  %55 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %56 = icmp ne %struct.ofdpa_flow_tbl_entry* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %59 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ofdpa_flags_nowait(i32 %61)
  %63 = load i32, i32* @ofdpa_cmd_flow_tbl_del, align 4
  %64 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %65 = call i32 @rocker_cmd_exec(i32 %60, i32 %62, i32 %63, %struct.ofdpa_flow_tbl_entry* %64, i32* null, i32* null)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %67 = call i32 @kfree(%struct.ofdpa_flow_tbl_entry* %66)
  br label %68

68:                                               ; preds = %57, %48
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @crc32(i32, i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_flow_tbl_entry* @ofdpa_flow_tbl_find(%struct.ofdpa*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @rocker_cmd_exec(i32, i32, i32, %struct.ofdpa_flow_tbl_entry*, i32*, i32*) #1

declare dso_local i32 @ofdpa_flags_nowait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
