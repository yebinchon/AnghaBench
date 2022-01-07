; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_ext_fat_capabilites.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_ext_fat_capabilites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_req_get_ext_fat_caps* }
%struct.be_cmd_req_get_ext_fat_caps = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_ext_fat_capabilites(%struct.be_adapter* %0, %struct.be_dma_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_dma_mem*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_req_get_ext_fat_caps*, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %5, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %10 = load i32, i32* @OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES, align 4
  %11 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %12 = call i32 @be_cmd_allowed(%struct.be_adapter* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %55

23:                                               ; preds = %17
  %24 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %25 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %24)
  store %struct.be_mcc_wrb* %25, %struct.be_mcc_wrb** %6, align 8
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %27 = icmp ne %struct.be_mcc_wrb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %50

31:                                               ; preds = %23
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %32, i32 0, i32 1
  %34 = load %struct.be_cmd_req_get_ext_fat_caps*, %struct.be_cmd_req_get_ext_fat_caps** %33, align 8
  store %struct.be_cmd_req_get_ext_fat_caps* %34, %struct.be_cmd_req_get_ext_fat_caps** %7, align 8
  %35 = load %struct.be_cmd_req_get_ext_fat_caps*, %struct.be_cmd_req_get_ext_fat_caps** %7, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_get_ext_fat_caps, %struct.be_cmd_req_get_ext_fat_caps* %35, i32 0, i32 1
  %37 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %38 = load i32, i32* @OPCODE_COMMON_GET_EXT_FAT_CAPABILITIES, align 4
  %39 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %40 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %43 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %44 = call i32 @be_wrb_cmd_hdr_prepare(i32* %36, i32 %37, i32 %38, i32 %41, %struct.be_mcc_wrb* %42, %struct.be_dma_mem* %43)
  %45 = call i32 @cpu_to_le32(i32 1)
  %46 = load %struct.be_cmd_req_get_ext_fat_caps*, %struct.be_cmd_req_get_ext_fat_caps** %7, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_get_ext_fat_caps, %struct.be_cmd_req_get_ext_fat_caps* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %49 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %31, %28
  %51 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %22, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
