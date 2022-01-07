; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_profile_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_profile_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.be_cmd_req_set_profile_config = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.be_mcc_wrb = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_req_set_profile_config* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_PROFILE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i8*, i32, i32, i8*, i8*)* @be_cmd_set_profile_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_cmd_set_profile_config(%struct.be_adapter* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.be_cmd_req_set_profile_config*, align 8
  %15 = alloca %struct.be_mcc_wrb, align 4
  %16 = alloca %struct.be_dma_mem, align 8
  %17 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = bitcast %struct.be_mcc_wrb* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = call i32 @memset(%struct.be_dma_mem* %16, i32 0, i32 16)
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  store i32 24, i32* %20, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 1
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.be_cmd_req_set_profile_config* @dma_alloc_coherent(i32* %24, i32 %26, i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  store %struct.be_cmd_req_set_profile_config* %29, %struct.be_cmd_req_set_profile_config** %30, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %32 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %31, align 8
  %33 = icmp ne %struct.be_cmd_req_set_profile_config* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %84

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %39 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %38, align 8
  store %struct.be_cmd_req_set_profile_config* %39, %struct.be_cmd_req_set_profile_config** %14, align 8
  %40 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %14, align 8
  %41 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %40, i32 0, i32 2
  %42 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %43 = load i32, i32* @OPCODE_COMMON_SET_PROFILE_CONFIG, align 4
  %44 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__* %41, i32 %42, i32 %43, i32 %45, %struct.be_mcc_wrb* %15, %struct.be_dma_mem* %16)
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %14, align 8
  %49 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %14, align 8
  %53 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %14, align 8
  %58 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %14, align 8
  %60 = getelementptr inbounds %struct.be_cmd_req_set_profile_config, %struct.be_cmd_req_set_profile_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @memcpy(i32 %61, i8* %62, i32 %63)
  %65 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %66 = call i32 @be_cmd_notify_wait(%struct.be_adapter* %65, %struct.be_mcc_wrb* %15)
  store i32 %66, i32* %17, align 4
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %68 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %67, align 8
  %69 = icmp ne %struct.be_cmd_req_set_profile_config* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %37
  %71 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 2
  %78 = load %struct.be_cmd_req_set_profile_config*, %struct.be_cmd_req_set_profile_config** %77, align 8
  %79 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %16, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dma_free_coherent(i32* %74, i32 %76, %struct.be_cmd_req_set_profile_config* %78, i32 %80)
  br label %82

82:                                               ; preds = %70, %37
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %34
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #2

declare dso_local %struct.be_cmd_req_set_profile_config* @dma_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @be_cmd_notify_wait(%struct.be_adapter*, %struct.be_mcc_wrb*) #2

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_req_set_profile_config*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
