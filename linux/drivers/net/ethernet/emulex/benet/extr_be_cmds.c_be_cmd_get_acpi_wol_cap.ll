; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_acpi_wol_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_acpi_wol_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_acpi_wol_magic_config_v1 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_req_acpi_wol_magic_config_v1* }
%struct.be_cmd_resp_acpi_wol_magic_config_v1 = type { i32, i32 }

@OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BE_GET_WOL_CAP = common dso_local global i32 0, align 4
@BE_WOL_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_acpi_wol_cap(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_acpi_wol_magic_config_v1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_dma_mem, align 8
  %8 = alloca %struct.be_cmd_resp_acpi_wol_magic_config_v1*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = load i32, i32* @OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG, align 4
  %11 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %12 = call i32 @be_cmd_allowed(%struct.be_adapter* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %127

17:                                               ; preds = %1
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = call i64 @be_is_wol_excluded(%struct.be_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %127

23:                                               ; preds = %17
  %24 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 3
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %127

29:                                               ; preds = %23
  %30 = call i32 @memset(%struct.be_dma_mem* %7, i32 0, i32 16)
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  store i32 8, i32* %31, align 8
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 1
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.be_cmd_req_acpi_wol_magic_config_v1* @dma_alloc_coherent(i32* %35, i32 %37, i32* %38, i32 %39)
  %41 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  store %struct.be_cmd_req_acpi_wol_magic_config_v1* %40, %struct.be_cmd_req_acpi_wol_magic_config_v1** %41, align 8
  %42 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %43 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %42, align 8
  %44 = icmp ne %struct.be_cmd_req_acpi_wol_magic_config_v1* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %29
  %46 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %106

53:                                               ; preds = %29
  %54 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %55 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %54)
  store %struct.be_mcc_wrb* %55, %struct.be_mcc_wrb** %4, align 8
  %56 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %57 = icmp ne %struct.be_mcc_wrb* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %106

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %63 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %62, align 8
  store %struct.be_cmd_req_acpi_wol_magic_config_v1* %63, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %64 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %65 = getelementptr inbounds %struct.be_cmd_req_acpi_wol_magic_config_v1, %struct.be_cmd_req_acpi_wol_magic_config_v1* %64, i32 0, i32 1
  %66 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %67 = load i32, i32* @OPCODE_ETH_ACPI_WOL_MAGIC_CONFIG, align 4
  %68 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %69 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__* %65, i32 %66, i32 %67, i32 8, %struct.be_mcc_wrb* %68, %struct.be_dma_mem* %7)
  %70 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %71 = getelementptr inbounds %struct.be_cmd_req_acpi_wol_magic_config_v1, %struct.be_cmd_req_acpi_wol_magic_config_v1* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* @BE_GET_WOL_CAP, align 4
  %74 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %5, align 8
  %75 = getelementptr inbounds %struct.be_cmd_req_acpi_wol_magic_config_v1, %struct.be_cmd_req_acpi_wol_magic_config_v1* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %77 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %82 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %81, align 8
  %83 = bitcast %struct.be_cmd_req_acpi_wol_magic_config_v1* %82 to %struct.be_cmd_resp_acpi_wol_magic_config_v1*
  store %struct.be_cmd_resp_acpi_wol_magic_config_v1* %83, %struct.be_cmd_resp_acpi_wol_magic_config_v1** %8, align 8
  %84 = load %struct.be_cmd_resp_acpi_wol_magic_config_v1*, %struct.be_cmd_resp_acpi_wol_magic_config_v1** %8, align 8
  %85 = getelementptr inbounds %struct.be_cmd_resp_acpi_wol_magic_config_v1, %struct.be_cmd_resp_acpi_wol_magic_config_v1* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BE_WOL_CAP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = load %struct.be_cmd_resp_acpi_wol_magic_config_v1*, %struct.be_cmd_resp_acpi_wol_magic_config_v1** %8, align 8
  %97 = getelementptr inbounds %struct.be_cmd_resp_acpi_wol_magic_config_v1, %struct.be_cmd_resp_acpi_wol_magic_config_v1* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @is_zero_ether_addr(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %95, %80
  br label %105

105:                                              ; preds = %104, %61
  br label %106

106:                                              ; preds = %105, %58, %45
  %107 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %107, i32 0, i32 3
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %111 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %110, align 8
  %112 = icmp ne %struct.be_cmd_req_acpi_wol_magic_config_v1* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %121 = load %struct.be_cmd_req_acpi_wol_magic_config_v1*, %struct.be_cmd_req_acpi_wol_magic_config_v1** %120, align 8
  %122 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dma_free_coherent(i32* %117, i32 %119, %struct.be_cmd_req_acpi_wol_magic_config_v1* %121, i32 %123)
  br label %125

125:                                              ; preds = %113, %106
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %28, %21, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i64 @be_is_wol_excluded(%struct.be_adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_req_acpi_wol_magic_config_v1* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_req_acpi_wol_magic_config_v1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
