; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c___be_cmd_set_logical_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c___be_cmd_set_logical_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_cmd_req_set_ll_link = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_LOGICAL_LINK_CONFIG = common dso_local global i32 0, align 4
@IFLA_VF_LINK_STATE_ENABLE = common dso_local global i32 0, align 4
@IFLA_VF_LINK_STATE_AUTO = common dso_local global i32 0, align 4
@PLINK_ENABLE = common dso_local global i32 0, align 4
@PLINK_TRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32, i32, i32)* @__be_cmd_set_logical_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__be_cmd_set_logical_link_config(%struct.be_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_cmd_req_set_ll_link*, align 8
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %17 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %16)
  store %struct.be_mcc_wrb* %17, %struct.be_mcc_wrb** %10, align 8
  %18 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %19 = icmp ne %struct.be_mcc_wrb* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  br label %66

23:                                               ; preds = %4
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %25 = call %struct.be_cmd_req_set_ll_link* @embedded_payload(%struct.be_mcc_wrb* %24)
  store %struct.be_cmd_req_set_ll_link* %25, %struct.be_cmd_req_set_ll_link** %9, align 8
  %26 = load %struct.be_cmd_req_set_ll_link*, %struct.be_cmd_req_set_ll_link** %9, align 8
  %27 = getelementptr inbounds %struct.be_cmd_req_set_ll_link, %struct.be_cmd_req_set_ll_link* %26, i32 0, i32 1
  %28 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %29 = load i32, i32* @OPCODE_COMMON_SET_LOGICAL_LINK_CONFIG, align 4
  %30 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %31 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %27, i32 %28, i32 %29, i32 12, %struct.be_mcc_wrb* %30, i32* null)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.be_cmd_req_set_ll_link*, %struct.be_cmd_req_set_ll_link** %9, align 8
  %34 = getelementptr inbounds %struct.be_cmd_req_set_ll_link, %struct.be_cmd_req_set_ll_link* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.be_cmd_req_set_ll_link*, %struct.be_cmd_req_set_ll_link** %9, align 8
  %38 = getelementptr inbounds %struct.be_cmd_req_set_ll_link, %struct.be_cmd_req_set_ll_link* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IFLA_VF_LINK_STATE_ENABLE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %23
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IFLA_VF_LINK_STATE_AUTO, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %23
  %48 = load i32, i32* @PLINK_ENABLE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IFLA_VF_LINK_STATE_AUTO, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @PLINK_TRACK, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load %struct.be_cmd_req_set_ll_link*, %struct.be_cmd_req_set_ll_link** %9, align 8
  %63 = getelementptr inbounds %struct.be_cmd_req_set_ll_link, %struct.be_cmd_req_set_ll_link* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %65 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %59, %20
  %67 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_set_ll_link* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
