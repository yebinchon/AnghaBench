; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_vlan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_vlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_vlan_config = type { i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_VLAN_CONFIG = common dso_local global i32 0, align 4
@BE_IF_FLAGS_UNTAGGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_vlan_config(%struct.be_adapter* %0, i8* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca %struct.be_cmd_req_vlan_config*, align 8
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %17)
  store %struct.be_mcc_wrb* %18, %struct.be_mcc_wrb** %11, align 8
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %20 = icmp ne %struct.be_mcc_wrb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  br label %66

24:                                               ; preds = %5
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %26 = call %struct.be_cmd_req_vlan_config* @embedded_payload(%struct.be_mcc_wrb* %25)
  store %struct.be_cmd_req_vlan_config* %26, %struct.be_cmd_req_vlan_config** %12, align 8
  %27 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %12, align 8
  %28 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %27, i32 0, i32 4
  %29 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %30 = load i32, i32* @OPCODE_COMMON_NTWK_VLAN_CONFIG, align 4
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %32 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %28, i32 %29, i32 %30, i32 32, %struct.be_mcc_wrb* %31, i32* null)
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %12, align 8
  %35 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %12, align 8
  %39 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @BE_IF_FLAGS_UNTAGGED, align 4
  %41 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %42 = call i32 @be_if_cap_flags(%struct.be_adapter* %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %12, align 8
  %48 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %12, align 8
  %52 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %12, align 8
  %54 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.be_cmd_req_vlan_config*, %struct.be_cmd_req_vlan_config** %12, align 8
  %58 = getelementptr inbounds %struct.be_cmd_req_vlan_config, %struct.be_cmd_req_vlan_config* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(i32 %55, i32* %56, i32 %62)
  %64 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %65 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %24, %21
  %67 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_vlan_config* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_if_cap_flags(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
