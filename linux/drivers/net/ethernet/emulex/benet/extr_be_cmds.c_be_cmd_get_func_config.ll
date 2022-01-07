; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_func_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_func_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.be_resources = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_func_config = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_func_config* }
%struct.be_cmd_resp_get_func_config = type { i32, i32, %struct.TYPE_4__ }
%struct.be_nic_res_desc = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Memory alloc failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_FUNC_CONFIG = common dso_local global i32 0, align 4
@PF_NUM_IGNORE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_func_config(%struct.be_adapter* %0, %struct.be_resources* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_resources*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_req_get_func_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca %struct.be_cmd_resp_get_func_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_nic_res_desc*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_resources* %1, %struct.be_resources** %5, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 1
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %132

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.be_dma_mem* %9, i32 0, i32 16)
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  store i32 12, i32* %20, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.be_cmd_resp_get_func_config* @dma_alloc_coherent(i32* %24, i32 %26, i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  store %struct.be_cmd_resp_get_func_config* %29, %struct.be_cmd_resp_get_func_config** %30, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %32 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %31, align 8
  %33 = icmp ne %struct.be_cmd_resp_get_func_config* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %18
  %35 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %111

42:                                               ; preds = %18
  %43 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %44 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %43)
  store %struct.be_mcc_wrb* %44, %struct.be_mcc_wrb** %6, align 8
  %45 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %46 = icmp ne %struct.be_mcc_wrb* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %111

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %52 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %51, align 8
  %53 = bitcast %struct.be_cmd_resp_get_func_config* %52 to %struct.be_cmd_req_get_func_config*
  store %struct.be_cmd_req_get_func_config* %53, %struct.be_cmd_req_get_func_config** %7, align 8
  %54 = load %struct.be_cmd_req_get_func_config*, %struct.be_cmd_req_get_func_config** %7, align 8
  %55 = getelementptr inbounds %struct.be_cmd_req_get_func_config, %struct.be_cmd_req_get_func_config* %54, i32 0, i32 2
  %56 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %57 = load i32, i32* @OPCODE_COMMON_GET_FUNC_CONFIG, align 4
  %58 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %61 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__* %55, i32 %56, i32 %57, i32 %59, %struct.be_mcc_wrb* %60, %struct.be_dma_mem* %9)
  %62 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %63 = call i64 @skyhawk_chip(%struct.be_adapter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load %struct.be_cmd_req_get_func_config*, %struct.be_cmd_req_get_func_config** %7, align 8
  %67 = getelementptr inbounds %struct.be_cmd_req_get_func_config, %struct.be_cmd_req_get_func_config* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %50
  %70 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %71 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %76 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %75, align 8
  store %struct.be_cmd_resp_get_func_config* %76, %struct.be_cmd_resp_get_func_config** %10, align 8
  %77 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %10, align 8
  %78 = getelementptr inbounds %struct.be_cmd_resp_get_func_config, %struct.be_cmd_resp_get_func_config* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %10, align 8
  %82 = getelementptr inbounds %struct.be_cmd_resp_get_func_config, %struct.be_cmd_resp_get_func_config* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @PF_NUM_IGNORE, align 4
  %86 = call %struct.be_nic_res_desc* @be_get_func_nic_desc(i32 %83, i32 %84, i32 %85)
  store %struct.be_nic_res_desc* %86, %struct.be_nic_res_desc** %12, align 8
  %87 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %12, align 8
  %88 = icmp ne %struct.be_nic_res_desc* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %74
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %111

92:                                               ; preds = %74
  %93 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %12, align 8
  %94 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %12, align 8
  %99 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.be_resources*, %struct.be_resources** %5, align 8
  %104 = icmp ne %struct.be_resources* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load %struct.be_resources*, %struct.be_resources** %5, align 8
  %107 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %12, align 8
  %108 = call i32 @be_copy_nic_desc(%struct.be_resources* %106, %struct.be_nic_res_desc* %107)
  br label %109

109:                                              ; preds = %105, %92
  br label %110

110:                                              ; preds = %109, %69
  br label %111

111:                                              ; preds = %110, %89, %47, %34
  %112 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %116 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %115, align 8
  %117 = icmp ne %struct.be_cmd_resp_get_func_config* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %111
  %119 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %120 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %126 = load %struct.be_cmd_resp_get_func_config*, %struct.be_cmd_resp_get_func_config** %125, align 8
  %127 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dma_free_coherent(i32* %122, i32 %124, %struct.be_cmd_resp_get_func_config* %126, i32 %128)
  br label %130

130:                                              ; preds = %118, %111
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %17
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_resp_get_func_config* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.be_nic_res_desc* @be_get_func_nic_desc(i32, i32, i32) #1

declare dso_local i32 @be_copy_nic_desc(%struct.be_resources*, %struct.be_nic_res_desc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_resp_get_func_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
