; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i64 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.__mem }
%struct.__mem = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Failed to read memory dump using PEX DMA: mask[0x%x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to read memory dump using test agent method: mask[0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_read_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_read_memory(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_dump_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qlcnic_fw_dump*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.__mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %16, %struct.qlcnic_fw_dump** %8, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %9, align 8
  %21 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.__mem* %23, %struct.__mem** %10, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %8, align 8
  %25 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %3
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %30 = load %struct.__mem*, %struct.__mem** %10, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @qlcnic_read_memory_pexdma(%struct.qlcnic_adapter* %29, %struct.__mem* %30, i32* %31, i32* %12)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_info(%struct.device* %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %61

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %47 = load %struct.__mem*, %struct.__mem** %10, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @qlcnic_read_memory_test_agent(%struct.qlcnic_adapter* %46, %struct.__mem* %47, i32* %48, i32* %12)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %9, align 8
  %54 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_info(%struct.device* %53, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %4, align 4
  br label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %52, %42
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @qlcnic_read_memory_pexdma(%struct.qlcnic_adapter*, %struct.__mem*, i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @qlcnic_read_memory_test_agent(%struct.qlcnic_adapter*, %struct.__mem*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
