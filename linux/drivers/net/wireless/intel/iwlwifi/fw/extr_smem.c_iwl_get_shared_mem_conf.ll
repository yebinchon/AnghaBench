; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_smem.c_iwl_get_shared_mem_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_smem.c_iwl_get_shared_mem_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_host_cmd = type { %struct.iwl_rx_packet*, i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i32 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG = common dso_local global i32 0, align 4
@SHARED_MEM_CFG_CMD = common dso_local global i32 0, align 4
@SYSTEM_GROUP = common dso_local global i32 0, align 4
@SHARED_MEM_CFG = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not send the SMEM command: %d\0A\00", align 1
@IWL_DEVICE_FAMILY_22000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"SHARED MEM CFG: got memory offsets/sizes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_get_shared_mem_conf(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  %3 = alloca %struct.iwl_host_cmd, align 8
  %4 = alloca %struct.iwl_rx_packet*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 0
  store %struct.iwl_rx_packet* null, %struct.iwl_rx_packet** %6, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 1
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 3
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 4
  %11 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG, align 4
  %17 = call i64 @fw_has_capa(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @SHARED_MEM_CFG_CMD, align 4
  %21 = load i32, i32* @SYSTEM_GROUP, align 4
  %22 = call i32 @iwl_cmd_id(i32 %20, i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @SHARED_MEM_CFG, align 4
  %26 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @iwl_trans_send_cmd(%struct.TYPE_6__* %30, %struct.iwl_host_cmd* %3)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ERFKILL, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @WARN(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %66

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %3, i32 0, i32 0
  %44 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %43, align 8
  store %struct.iwl_rx_packet* %44, %struct.iwl_rx_packet** %4, align 8
  %45 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %46 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IWL_DEVICE_FAMILY_22000, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %56 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %57 = call i32 @iwl_parse_shared_mem_22000(%struct.iwl_fw_runtime* %55, %struct.iwl_rx_packet* %56)
  br label %62

58:                                               ; preds = %42
  %59 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %60 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %4, align 8
  %61 = call i32 @iwl_parse_shared_mem(%struct.iwl_fw_runtime* %59, %struct.iwl_rx_packet* %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %64 = call i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %3)
  br label %66

66:                                               ; preds = %62, %34
  ret void
}

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

declare dso_local i32 @iwl_trans_send_cmd(%struct.TYPE_6__*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @iwl_parse_shared_mem_22000(%struct.iwl_fw_runtime*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @iwl_parse_shared_mem(%struct.iwl_fw_runtime*, %struct.iwl_rx_packet*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
