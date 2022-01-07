; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_loopback_test = type { i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.be_cmd_resp_loopback_test = type { i32 }

@OPCODE_LOWLEVEL_LOOPBACK_TEST = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_LOWLEVEL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_loopback_test(%struct.be_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_mcc_wrb*, align 8
  %15 = alloca %struct.be_cmd_req_loopback_test*, align 8
  %16 = alloca %struct.be_cmd_resp_loopback_test*, align 8
  %17 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %19 = load i32, i32* @OPCODE_LOWLEVEL_LOOPBACK_TEST, align 4
  %20 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %21 = call i32 @be_cmd_allowed(%struct.be_adapter* %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %100

26:                                               ; preds = %6
  %27 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %31 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %30)
  store %struct.be_mcc_wrb* %31, %struct.be_mcc_wrb** %14, align 8
  %32 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %33 = icmp ne %struct.be_mcc_wrb* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %17, align 4
  br label %95

37:                                               ; preds = %26
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %39 = call i8* @embedded_payload(%struct.be_mcc_wrb* %38)
  %40 = bitcast i8* %39 to %struct.be_cmd_req_loopback_test*
  store %struct.be_cmd_req_loopback_test* %40, %struct.be_cmd_req_loopback_test** %15, align 8
  %41 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %42 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %41, i32 0, i32 6
  %43 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %44 = load i32, i32* @OPCODE_LOWLEVEL_LOOPBACK_TEST, align 4
  %45 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %46 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %42, i32 %43, i32 %44, i32 56, %struct.be_mcc_wrb* %45, i32* null)
  %47 = call i8* @cpu_to_le32(i32 15)
  %48 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %49 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @cpu_to_le64(i32 %51)
  %53 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %54 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %58 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %62 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %66 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %70 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.be_cmd_req_loopback_test*, %struct.be_cmd_req_loopback_test** %15, align 8
  %74 = getelementptr inbounds %struct.be_cmd_req_loopback_test, %struct.be_cmd_req_loopback_test* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %76 = call i32 @be_mcc_notify(%struct.be_adapter* %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %37
  br label %95

80:                                               ; preds = %37
  %81 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %82 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %85 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %84, i32 0, i32 1
  %86 = call i32 @wait_for_completion(i32* %85)
  %87 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %88 = call i8* @embedded_payload(%struct.be_mcc_wrb* %87)
  %89 = bitcast i8* %88 to %struct.be_cmd_resp_loopback_test*
  store %struct.be_cmd_resp_loopback_test* %89, %struct.be_cmd_resp_loopback_test** %16, align 8
  %90 = load %struct.be_cmd_resp_loopback_test*, %struct.be_cmd_resp_loopback_test** %16, align 8
  %91 = getelementptr inbounds %struct.be_cmd_resp_loopback_test, %struct.be_cmd_resp_loopback_test* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %7, align 4
  br label %100

95:                                               ; preds = %79, %34
  %96 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %97 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %95, %80, %23
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
