; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_lancer_cmd_delete_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_lancer_cmd_delete_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.lancer_cmd_req_delete_object = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_DELETE_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i8*)* @lancer_cmd_delete_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lancer_cmd_delete_object(%struct.be_adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lancer_cmd_req_delete_object*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %12 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %11)
  store %struct.be_mcc_wrb* %12, %struct.be_mcc_wrb** %6, align 8
  %13 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %14 = icmp ne %struct.be_mcc_wrb* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %20 = call %struct.lancer_cmd_req_delete_object* @embedded_payload(%struct.be_mcc_wrb* %19)
  store %struct.lancer_cmd_req_delete_object* %20, %struct.lancer_cmd_req_delete_object** %5, align 8
  %21 = load %struct.lancer_cmd_req_delete_object*, %struct.lancer_cmd_req_delete_object** %5, align 8
  %22 = getelementptr inbounds %struct.lancer_cmd_req_delete_object, %struct.lancer_cmd_req_delete_object* %21, i32 0, i32 1
  %23 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %24 = load i32, i32* @OPCODE_COMMON_DELETE_OBJECT, align 4
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %26 = call i32 @be_wrb_cmd_hdr_prepare(i32* %22, i32 %23, i32 %24, i32 8, %struct.be_mcc_wrb* %25, i32* null)
  %27 = load %struct.lancer_cmd_req_delete_object*, %struct.lancer_cmd_req_delete_object** %5, align 8
  %28 = getelementptr inbounds %struct.lancer_cmd_req_delete_object, %struct.lancer_cmd_req_delete_object* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlcpy(i32 %29, i8* %30, i32 4)
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.lancer_cmd_req_delete_object* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
