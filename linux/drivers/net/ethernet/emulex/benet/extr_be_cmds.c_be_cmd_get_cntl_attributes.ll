; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_cntl_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_cntl_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_cntl_attribs = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.be_cmd_resp_cntl_attribs = type { i32 }
%struct.mgmt_controller_attrib = type { %struct.TYPE_3__, i32 }
%struct.be_dma_mem = type { i32, i32, %struct.mgmt_controller_attrib* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_CNTL_ATTRIBUTES = common dso_local global i32 0, align 4
@CNTL_SERIAL_NUM_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_cntl_attributes(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_cntl_attribs*, align 8
  %6 = alloca %struct.be_cmd_resp_cntl_attribs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_controller_attrib*, align 8
  %11 = alloca %struct.be_dma_mem, align 8
  %12 = alloca i32*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %13 = call i32 @max(i32 32, i32 4)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 2
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %137

19:                                               ; preds = %1
  %20 = call i32 @memset(%struct.be_dma_mem* %11, i32 0, i32 16)
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 1
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.mgmt_controller_attrib* @dma_alloc_coherent(i32* %25, i32 %27, i32* %28, i32 %29)
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 2
  store %struct.mgmt_controller_attrib* %30, %struct.mgmt_controller_attrib** %31, align 8
  %32 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 2
  %33 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %32, align 8
  %34 = icmp ne %struct.mgmt_controller_attrib* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %19
  %36 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %116

43:                                               ; preds = %19
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %44)
  store %struct.be_mcc_wrb* %45, %struct.be_mcc_wrb** %4, align 8
  %46 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %47 = icmp ne %struct.be_mcc_wrb* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %116

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 2
  %53 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %52, align 8
  %54 = bitcast %struct.mgmt_controller_attrib* %53 to %struct.be_cmd_req_cntl_attribs*
  store %struct.be_cmd_req_cntl_attribs* %54, %struct.be_cmd_req_cntl_attribs** %5, align 8
  %55 = load %struct.be_cmd_req_cntl_attribs*, %struct.be_cmd_req_cntl_attribs** %5, align 8
  %56 = getelementptr inbounds %struct.be_cmd_req_cntl_attribs, %struct.be_cmd_req_cntl_attribs* %55, i32 0, i32 1
  %57 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %58 = load i32, i32* @OPCODE_COMMON_GET_CNTL_ATTRIBUTES, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %61 = call i32 @be_wrb_cmd_hdr_prepare(i32* %56, i32 %57, i32 %58, i32 %59, %struct.be_mcc_wrb* %60, %struct.be_dma_mem* %11)
  %62 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %63 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %115, label %66

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 2
  %68 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %67, align 8
  %69 = getelementptr inbounds %struct.mgmt_controller_attrib, %struct.mgmt_controller_attrib* %68, i64 4
  store %struct.mgmt_controller_attrib* %69, %struct.mgmt_controller_attrib** %10, align 8
  %70 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %10, align 8
  %71 = getelementptr inbounds %struct.mgmt_controller_attrib, %struct.mgmt_controller_attrib* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %10, align 8
  %77 = getelementptr inbounds %struct.mgmt_controller_attrib, %struct.mgmt_controller_attrib* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %100, %66
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @CNTL_SERIAL_NUM_WORDS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = call i32 @BIT_MASK(i32 16)
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %90, %92
  %94 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %84
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %80

103:                                              ; preds = %80
  %104 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %105 = call i64 @BEx_chip(%struct.be_adapter* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %10, align 8
  %109 = getelementptr inbounds %struct.mgmt_controller_attrib, %struct.mgmt_controller_attrib* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %103
  br label %115

115:                                              ; preds = %114, %51
  br label %116

116:                                              ; preds = %115, %48, %35
  %117 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %117, i32 0, i32 2
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 2
  %121 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %120, align 8
  %122 = icmp ne %struct.mgmt_controller_attrib* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %116
  %124 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 2
  %131 = load %struct.mgmt_controller_attrib*, %struct.mgmt_controller_attrib** %130, align 8
  %132 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %11, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dma_free_coherent(i32* %127, i32 %129, %struct.mgmt_controller_attrib* %131, i32 %133)
  br label %135

135:                                              ; preds = %123, %116
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %18
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.mgmt_controller_attrib* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.mgmt_controller_attrib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
