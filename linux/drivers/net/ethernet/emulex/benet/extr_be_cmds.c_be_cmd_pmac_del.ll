; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_pmac_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_pmac_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_pmac_del = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_PMAC_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_pmac_del(%struct.be_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca %struct.be_cmd_req_pmac_del*, align 8
  %12 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

16:                                               ; preds = %4
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %21 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %20)
  store %struct.be_mcc_wrb* %21, %struct.be_mcc_wrb** %10, align 8
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %23 = icmp ne %struct.be_mcc_wrb* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  br label %50

27:                                               ; preds = %16
  %28 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %29 = call %struct.be_cmd_req_pmac_del* @embedded_payload(%struct.be_mcc_wrb* %28)
  store %struct.be_cmd_req_pmac_del* %29, %struct.be_cmd_req_pmac_del** %11, align 8
  %30 = load %struct.be_cmd_req_pmac_del*, %struct.be_cmd_req_pmac_del** %11, align 8
  %31 = getelementptr inbounds %struct.be_cmd_req_pmac_del, %struct.be_cmd_req_pmac_del* %30, i32 0, i32 2
  %32 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %33 = load i32, i32* @OPCODE_COMMON_NTWK_PMAC_DEL, align 4
  %34 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %35 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %31, i32 %32, i32 %33, i32 24, %struct.be_mcc_wrb* %34, i32* null)
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.be_cmd_req_pmac_del*, %struct.be_cmd_req_pmac_del** %11, align 8
  %38 = getelementptr inbounds %struct.be_cmd_req_pmac_del, %struct.be_cmd_req_pmac_del* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.be_cmd_req_pmac_del*, %struct.be_cmd_req_pmac_del** %11, align 8
  %43 = getelementptr inbounds %struct.be_cmd_req_pmac_del, %struct.be_cmd_req_pmac_del* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.be_cmd_req_pmac_del*, %struct.be_cmd_req_pmac_del** %11, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_pmac_del, %struct.be_cmd_req_pmac_del* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %49 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %27, %24
  %51 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %15
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_pmac_del* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
