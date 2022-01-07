; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fat_dump_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fat_dump_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_fat = type { i32, i32 }
%struct.be_cmd_resp_get_fat = type { i64 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_MANAGE_FAT = common dso_local global i32 0, align 4
@QUERY_FAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_fat_dump_len(%struct.be_adapter* %0, i64* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.be_mcc_wrb, align 4
  %6 = alloca %struct.be_cmd_req_get_fat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_cmd_resp_get_fat*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = bitcast %struct.be_mcc_wrb* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = call i8* @embedded_payload(%struct.be_mcc_wrb* %5)
  %11 = bitcast i8* %10 to %struct.be_cmd_req_get_fat*
  store %struct.be_cmd_req_get_fat* %11, %struct.be_cmd_req_get_fat** %6, align 8
  %12 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %6, align 8
  %13 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %12, i32 0, i32 1
  %14 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %15 = load i32, i32* @OPCODE_COMMON_MANAGE_FAT, align 4
  %16 = call i32 @be_wrb_cmd_hdr_prepare(i32* %13, i32 %14, i32 %15, i32 8, %struct.be_mcc_wrb* %5, i32* null)
  %17 = load i32, i32* @QUERY_FAT, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %6, align 8
  %20 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = call i32 @be_cmd_notify_wait(%struct.be_adapter* %21, %struct.be_mcc_wrb* %5)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %2
  %26 = call i8* @embedded_payload(%struct.be_mcc_wrb* %5)
  %27 = bitcast i8* %26 to %struct.be_cmd_resp_get_fat*
  store %struct.be_cmd_resp_get_fat* %27, %struct.be_cmd_resp_get_fat** %8, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %8, align 8
  %32 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %8, align 8
  %37 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @le32_to_cpu(i64 %38)
  %40 = sub i64 %39, 8
  %41 = load i64*, i64** %4, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %30, %25
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #2

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @be_cmd_notify_wait(%struct.be_adapter*, %struct.be_mcc_wrb*) #2

declare dso_local i64 @le32_to_cpu(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
