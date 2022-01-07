; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fn_privileges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_fn_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_fn_privileges = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_cmd_resp_get_fn_privileges = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_FN_PRIVILEGES = common dso_local global i32 0, align 4
@MAX_PRIVILEGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_fn_privileges(%struct.be_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_get_fn_privileges*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_cmd_resp_get_fn_privileges*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %7, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %17 = icmp ne %struct.be_mcc_wrb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %64

21:                                               ; preds = %3
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %23 = call i8* @embedded_payload(%struct.be_mcc_wrb* %22)
  %24 = bitcast i8* %23 to %struct.be_cmd_req_get_fn_privileges*
  store %struct.be_cmd_req_get_fn_privileges* %24, %struct.be_cmd_req_get_fn_privileges** %8, align 8
  %25 = load %struct.be_cmd_req_get_fn_privileges*, %struct.be_cmd_req_get_fn_privileges** %8, align 8
  %26 = getelementptr inbounds %struct.be_cmd_req_get_fn_privileges, %struct.be_cmd_req_get_fn_privileges* %25, i32 0, i32 0
  %27 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %28 = load i32, i32* @OPCODE_COMMON_GET_FN_PRIVILEGES, align 4
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %30 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %26, i32 %27, i32 %28, i32 4, %struct.be_mcc_wrb* %29, i32* null)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.be_cmd_req_get_fn_privileges*, %struct.be_cmd_req_get_fn_privileges** %8, align 8
  %33 = getelementptr inbounds %struct.be_cmd_req_get_fn_privileges, %struct.be_cmd_req_get_fn_privileges* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %36 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %21
  %40 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %41 = call i8* @embedded_payload(%struct.be_mcc_wrb* %40)
  %42 = bitcast i8* %41 to %struct.be_cmd_resp_get_fn_privileges*
  store %struct.be_cmd_resp_get_fn_privileges* %42, %struct.be_cmd_resp_get_fn_privileges** %10, align 8
  %43 = load %struct.be_cmd_resp_get_fn_privileges*, %struct.be_cmd_resp_get_fn_privileges** %10, align 8
  %44 = getelementptr inbounds %struct.be_cmd_resp_get_fn_privileges, %struct.be_cmd_resp_get_fn_privileges* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %49 = call i64 @BEx_chip(%struct.be_adapter* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %53 = call i64 @be_is_mc(%struct.be_adapter* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %57 = call i64 @be_physfn(%struct.be_adapter* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @MAX_PRIVILEGES, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %55, %51, %39
  br label %63

63:                                               ; preds = %62, %21
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_is_mc(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
