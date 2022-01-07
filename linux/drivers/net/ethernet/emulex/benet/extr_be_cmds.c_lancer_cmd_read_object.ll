; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_lancer_cmd_read_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_lancer_cmd_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_dma_mem = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.lancer_cmd_req_read_object = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i32 }
%struct.lancer_cmd_resp_read_object = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_READ_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lancer_cmd_read_object(%struct.be_adapter* %0, %struct.be_dma_mem* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.be_adapter*, align 8
  %10 = alloca %struct.be_dma_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.be_mcc_wrb*, align 8
  %18 = alloca %struct.lancer_cmd_req_read_object*, align 8
  %19 = alloca %struct.lancer_cmd_resp_read_object*, align 8
  %20 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %9, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %9, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.be_adapter*, %struct.be_adapter** %9, align 8
  %25 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %24)
  store %struct.be_mcc_wrb* %25, %struct.be_mcc_wrb** %17, align 8
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %17, align 8
  %27 = icmp ne %struct.be_mcc_wrb* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %20, align 4
  br label %98

31:                                               ; preds = %8
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %17, align 8
  %33 = call i8* @embedded_payload(%struct.be_mcc_wrb* %32)
  %34 = bitcast i8* %33 to %struct.lancer_cmd_req_read_object*
  store %struct.lancer_cmd_req_read_object* %34, %struct.lancer_cmd_req_read_object** %18, align 8
  %35 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %36 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %35, i32 0, i32 7
  %37 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %38 = load i32, i32* @OPCODE_COMMON_READ_OBJECT, align 4
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %17, align 8
  %40 = call i32 @be_wrb_cmd_hdr_prepare(i32* %36, i32 %37, i32 %38, i32 64, %struct.be_mcc_wrb* %39, i32* null)
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %44 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %48 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %50 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @strcpy(i32 %51, i8* %52)
  %54 = call i8* @cpu_to_le32(i32 1)
  %55 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %56 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %60 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.be_dma_mem*, %struct.be_dma_mem** %10, align 8
  %62 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %66 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.be_dma_mem*, %struct.be_dma_mem** %10, align 8
  %68 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @upper_32_bits(i32 %69)
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.lancer_cmd_req_read_object*, %struct.lancer_cmd_req_read_object** %18, align 8
  %73 = getelementptr inbounds %struct.lancer_cmd_req_read_object, %struct.lancer_cmd_req_read_object* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.be_adapter*, %struct.be_adapter** %9, align 8
  %75 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %74)
  store i32 %75, i32* %20, align 4
  %76 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %17, align 8
  %77 = call i8* @embedded_payload(%struct.be_mcc_wrb* %76)
  %78 = bitcast i8* %77 to %struct.lancer_cmd_resp_read_object*
  store %struct.lancer_cmd_resp_read_object* %78, %struct.lancer_cmd_resp_read_object** %19, align 8
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %31
  %82 = load %struct.lancer_cmd_resp_read_object*, %struct.lancer_cmd_resp_read_object** %19, align 8
  %83 = getelementptr inbounds %struct.lancer_cmd_resp_read_object, %struct.lancer_cmd_resp_read_object* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = load i32*, i32** %14, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.lancer_cmd_resp_read_object*, %struct.lancer_cmd_resp_read_object** %19, align 8
  %88 = getelementptr inbounds %struct.lancer_cmd_resp_read_object, %struct.lancer_cmd_resp_read_object* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = load i32*, i32** %15, align 8
  store i32 %90, i32* %91, align 4
  br label %97

92:                                               ; preds = %31
  %93 = load %struct.lancer_cmd_resp_read_object*, %struct.lancer_cmd_resp_read_object** %19, align 8
  %94 = getelementptr inbounds %struct.lancer_cmd_resp_read_object, %struct.lancer_cmd_resp_read_object* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %16, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %81
  br label %98

98:                                               ; preds = %97, %28
  %99 = load %struct.be_adapter*, %struct.be_adapter** %9, align 8
  %100 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %20, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
