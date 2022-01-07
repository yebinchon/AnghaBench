; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_ddr_dma_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_ddr_dma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_dma_mem = type { %struct.be_cmd_resp_ddrdma_test*, i32 }
%struct.be_cmd_resp_ddrdma_test = type { i64, i64*, i32, i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_ddrdma_test = type { i64, i64*, i32, i32, i32, i32 }

@OPCODE_LOWLEVEL_HOST_DDR_DMA = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_LOWLEVEL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_ddr_dma_test(%struct.be_adapter* %0, i32 %1, i32 %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca %struct.be_cmd_req_ddrdma_test*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.be_cmd_resp_ddrdma_test*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = load i32, i32* @OPCODE_LOWLEVEL_HOST_DDR_DMA, align 4
  %18 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %19 = call i32 @be_cmd_allowed(%struct.be_adapter* %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %114

24:                                               ; preds = %4
  %25 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %29 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %28)
  store %struct.be_mcc_wrb* %29, %struct.be_mcc_wrb** %10, align 8
  %30 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %31 = icmp ne %struct.be_mcc_wrb* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %109

35:                                               ; preds = %24
  %36 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %36, i32 0, i32 0
  %38 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %37, align 8
  %39 = bitcast %struct.be_cmd_resp_ddrdma_test* %38 to %struct.be_cmd_req_ddrdma_test*
  store %struct.be_cmd_req_ddrdma_test* %39, %struct.be_cmd_req_ddrdma_test** %11, align 8
  %40 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %11, align 8
  %41 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %40, i32 0, i32 5
  %42 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %43 = load i32, i32* @OPCODE_LOWLEVEL_HOST_DDR_DMA, align 4
  %44 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %45 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %48 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %49 = call i32 @be_wrb_cmd_hdr_prepare(i32* %41, i32 %42, i32 %43, i32 %46, %struct.be_mcc_wrb* %47, %struct.be_dma_mem* %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @cpu_to_le64(i32 %50)
  %52 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %11, align 8
  %53 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @cpu_to_le32(i32 %54)
  %56 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %11, align 8
  %57 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %80, %35
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 %64, 8
  %66 = ashr i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %11, align 8
  %69 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %67, i64* %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sgt i32 %76, 7
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %58

83:                                               ; preds = %58
  %84 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %85 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %83
  %89 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %90 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %89, i32 0, i32 0
  %91 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %90, align 8
  store %struct.be_cmd_resp_ddrdma_test* %91, %struct.be_cmd_resp_ddrdma_test** %15, align 8
  %92 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %15, align 8
  %93 = getelementptr inbounds %struct.be_cmd_resp_ddrdma_test, %struct.be_cmd_resp_ddrdma_test* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.be_cmd_req_ddrdma_test*, %struct.be_cmd_req_ddrdma_test** %11, align 8
  %96 = getelementptr inbounds %struct.be_cmd_req_ddrdma_test, %struct.be_cmd_req_ddrdma_test* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @memcmp(i32 %94, i64* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %88
  %102 = load %struct.be_cmd_resp_ddrdma_test*, %struct.be_cmd_resp_ddrdma_test** %15, align 8
  %103 = getelementptr inbounds %struct.be_cmd_resp_ddrdma_test, %struct.be_cmd_resp_ddrdma_test* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %88
  store i32 -1, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %101
  br label %108

108:                                              ; preds = %107, %83
  br label %109

109:                                              ; preds = %108, %32
  %110 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %111 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %109, %21
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
