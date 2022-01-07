; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_mac_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_mac_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_set_mac_list = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_req_set_mac_list* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_MAC_LIST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_mac_list(%struct.be_adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca %struct.be_cmd_req_set_mac_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.be_dma_mem, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = call i32 @memset(%struct.be_dma_mem* %13, i32 0, i32 16)
  %15 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  store i32 12, i32* %15, align 8
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.be_cmd_req_set_mac_list* @dma_alloc_coherent(i32* %19, i32 %21, i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  store %struct.be_cmd_req_set_mac_list* %24, %struct.be_cmd_req_set_mac_list** %25, align 8
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %27 = load %struct.be_cmd_req_set_mac_list*, %struct.be_cmd_req_set_mac_list** %26, align 8
  %28 = icmp ne %struct.be_cmd_req_set_mac_list* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %89

32:                                               ; preds = %4
  %33 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %37 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %36)
  store %struct.be_mcc_wrb* %37, %struct.be_mcc_wrb** %10, align 8
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %39 = icmp ne %struct.be_mcc_wrb* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %73

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %45 = load %struct.be_cmd_req_set_mac_list*, %struct.be_cmd_req_set_mac_list** %44, align 8
  store %struct.be_cmd_req_set_mac_list* %45, %struct.be_cmd_req_set_mac_list** %11, align 8
  %46 = load %struct.be_cmd_req_set_mac_list*, %struct.be_cmd_req_set_mac_list** %11, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_set_mac_list, %struct.be_cmd_req_set_mac_list* %46, i32 0, i32 2
  %48 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %49 = load i32, i32* @OPCODE_COMMON_SET_MAC_LIST, align 4
  %50 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %51 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__* %47, i32 %48, i32 %49, i32 12, %struct.be_mcc_wrb* %50, %struct.be_dma_mem* %13)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.be_cmd_req_set_mac_list*, %struct.be_cmd_req_set_mac_list** %11, align 8
  %54 = getelementptr inbounds %struct.be_cmd_req_set_mac_list, %struct.be_cmd_req_set_mac_list* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.be_cmd_req_set_mac_list*, %struct.be_cmd_req_set_mac_list** %11, align 8
  %58 = getelementptr inbounds %struct.be_cmd_req_set_mac_list, %struct.be_cmd_req_set_mac_list* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %43
  %62 = load %struct.be_cmd_req_set_mac_list*, %struct.be_cmd_req_set_mac_list** %11, align 8
  %63 = getelementptr inbounds %struct.be_cmd_req_set_mac_list, %struct.be_cmd_req_set_mac_list* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i32 @memcpy(i32 %64, i32* %65, i32 %68)
  br label %70

70:                                               ; preds = %61, %43
  %71 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %72 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %40
  %74 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 2
  %81 = load %struct.be_cmd_req_set_mac_list*, %struct.be_cmd_req_set_mac_list** %80, align 8
  %82 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dma_free_coherent(i32* %77, i32 %79, %struct.be_cmd_req_set_mac_list* %81, i32 %83)
  %85 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %73, %29
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_req_set_mac_list* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_req_set_mac_list*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
