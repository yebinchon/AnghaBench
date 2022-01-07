; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fat_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fat_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_fat* }
%struct.be_cmd_resp_get_fat = type { i8*, i32, i8*, i8*, i8*, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_fat = type { i8*, i32, i8*, i8*, i8*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_MANAGE_FAT = common dso_local global i32 0, align 4
@RETRIEVE_FAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"FAT Table Retrieve error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_fat_dump(%struct.be_adapter* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.be_dma_mem, align 8
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca %struct.be_cmd_req_get_fat*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.be_cmd_resp_get_fat*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 8, i64* %14, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %137

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %12, align 8
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  store i32 61488, i32* %23, align 8
  %24 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.be_cmd_resp_get_fat* @dma_alloc_coherent(i32* %27, i32 %29, i32* %30, i32 %31)
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  store %struct.be_cmd_resp_get_fat* %32, %struct.be_cmd_resp_get_fat** %33, align 8
  %34 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %35 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %34, align 8
  %36 = icmp ne %struct.be_cmd_resp_get_fat* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %137

40:                                               ; preds = %21
  %41 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  br label %44

44:                                               ; preds = %113, %40
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %120

47:                                               ; preds = %44
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @min(i64 %48, i64 61440)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %12, align 8
  %53 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %54 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %53)
  store %struct.be_mcc_wrb* %54, %struct.be_mcc_wrb** %9, align 8
  %55 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %56 = icmp ne %struct.be_mcc_wrb* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %16, align 4
  br label %121

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %62 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %61, align 8
  %63 = bitcast %struct.be_cmd_resp_get_fat* %62 to %struct.be_cmd_req_get_fat*
  store %struct.be_cmd_req_get_fat* %63, %struct.be_cmd_req_get_fat** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add i64 48, %64
  store i64 %65, i64* %15, align 8
  %66 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %10, align 8
  %67 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %66, i32 0, i32 5
  %68 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %69 = load i32, i32* @OPCODE_COMMON_MANAGE_FAT, align 4
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %72 = call i32 @be_wrb_cmd_hdr_prepare(i32* %67, i32 %68, i32 %69, i64 %70, %struct.be_mcc_wrb* %71, %struct.be_dma_mem* %8)
  %73 = load i64, i64* @RETRIEVE_FAT, align 8
  %74 = call i8* @cpu_to_le32(i64 %73)
  %75 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %10, align 8
  %76 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i8* @cpu_to_le32(i64 %77)
  %79 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %10, align 8
  %80 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i8* @cpu_to_le32(i64 %81)
  %83 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %10, align 8
  %84 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i8* @cpu_to_le32(i64 %85)
  %87 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %10, align 8
  %88 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %90 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %60
  %94 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %95 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %94, align 8
  store %struct.be_cmd_resp_get_fat* %95, %struct.be_cmd_resp_get_fat** %17, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr i8, i8* %96, i64 %97
  %99 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %17, align 8
  %100 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %17, align 8
  %103 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @le32_to_cpu(i8* %104)
  %106 = call i32 @memcpy(i8* %98, i32 %101, i32 %105)
  br label %113

107:                                              ; preds = %60
  %108 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %109 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %121

113:                                              ; preds = %93
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %11, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %14, align 8
  br label %44

120:                                              ; preds = %44
  br label %121

121:                                              ; preds = %120, %107, %57
  %122 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %123 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %129 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %128, align 8
  %130 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dma_free_coherent(i32* %125, i32 %127, %struct.be_cmd_resp_get_fat* %129, i32 %131)
  %133 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %134 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %121, %37, %20
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.be_cmd_resp_get_fat* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i64, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_resp_get_fat*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
