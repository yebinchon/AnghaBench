; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, %struct.ofdpa* }
%struct.ofdpa = type { i32, i32, i32 }
%struct.ofdpa_flow_tbl_entry = type { i64, i32, i32, i32, i64, i32 }

@ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_MOD = common dso_local global i32 0, align 4
@ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_ADD = common dso_local global i32 0, align 4
@ofdpa_cmd_flow_tbl_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, %struct.ofdpa_flow_tbl_entry*)* @ofdpa_flow_tbl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_flow_tbl_add(%struct.ofdpa_port* %0, i32 %1, %struct.ofdpa_flow_tbl_entry* %2) #0 {
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  %7 = alloca %struct.ofdpa*, align 8
  %8 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ofdpa_flow_tbl_entry* %2, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %11 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %12 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %11, i32 0, i32 1
  %13 = load %struct.ofdpa*, %struct.ofdpa** %12, align 8
  store %struct.ofdpa* %13, %struct.ofdpa** %7, align 8
  %14 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %15 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %20 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i64 [ %21, %18 ], [ 4, %22 ]
  store i64 %24, i64* %9, align 8
  %25 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %26 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %25, i32 0, i32 5
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @crc32(i32 -1, i32* %26, i64 %27)
  %29 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %32 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %36 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %37 = call %struct.ofdpa_flow_tbl_entry* @ofdpa_flow_tbl_find(%struct.ofdpa* %35, %struct.ofdpa_flow_tbl_entry* %36)
  store %struct.ofdpa_flow_tbl_entry* %37, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %38 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %39 = icmp ne %struct.ofdpa_flow_tbl_entry* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %23
  %41 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  %45 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %47 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %46, i32 0, i32 2
  %48 = call i32 @hash_del(i32* %47)
  %49 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %50 = call i32 @kfree(%struct.ofdpa_flow_tbl_entry* %49)
  %51 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  store %struct.ofdpa_flow_tbl_entry* %51, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %52 = load i32, i32* @ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_MOD, align 4
  %53 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %54 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %67

55:                                               ; preds = %23
  %56 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %6, align 8
  store %struct.ofdpa_flow_tbl_entry* %56, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %57 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %58 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = sext i32 %59 to i64
  %62 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %63 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_ADD, align 4
  %65 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %66 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %55, %40
  %68 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %69 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %72 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %71, i32 0, i32 2
  %73 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %74 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @hash_add(i32 %70, i32* %72, i32 %75)
  %77 = load %struct.ofdpa*, %struct.ofdpa** %7, align 8
  %78 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %77, i32 0, i32 0
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %82 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ofdpa_flags_nowait(i32 %84)
  %86 = load i32, i32* @ofdpa_cmd_flow_tbl_add, align 4
  %87 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %8, align 8
  %88 = call i32 @rocker_cmd_exec(i32 %83, i32 %85, i32 %86, %struct.ofdpa_flow_tbl_entry* %87, i32* null, i32* null)
  ret i32 %88
}

declare dso_local i32 @crc32(i32, i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_flow_tbl_entry* @ofdpa_flow_tbl_find(%struct.ofdpa*, %struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @kfree(%struct.ofdpa_flow_tbl_entry*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rocker_cmd_exec(i32, i32, i32, %struct.ofdpa_flow_tbl_entry*, i32*, i32*) #1

declare dso_local i32 @ofdpa_flags_nowait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
