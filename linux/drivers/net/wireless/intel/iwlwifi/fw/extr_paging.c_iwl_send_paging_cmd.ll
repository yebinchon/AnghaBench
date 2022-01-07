; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_send_paging_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_send_paging_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_img = type { i32 }
%struct.iwl_fw_paging_cmd = type { i32*, i32, i32, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32 }

@BLOCK_2_EXP_SIZE = common dso_local global i32 0, align 4
@PAGING_CMD_IS_SECURED = common dso_local global i32 0, align 4
@PAGING_CMD_IS_ENABLED = common dso_local global i32 0, align 4
@PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS = common dso_local global i32 0, align 4
@FW_PAGING_BLOCK_CMD = common dso_local global i32 0, align 4
@IWL_ALWAYS_LONG_GROUP = common dso_local global i32 0, align 4
@PAGE_2_EXP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.fw_img*)* @iwl_send_paging_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_paging_cmd(%struct.iwl_fw_runtime* %0, %struct.fw_img* %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.fw_img*, align 8
  %5 = alloca %struct.iwl_fw_paging_cmd, align 8
  %6 = alloca %struct.iwl_host_cmd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.fw_img* %1, %struct.fw_img** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_paging_cmd, %struct.iwl_fw_paging_cmd* %5, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.iwl_fw_paging_cmd, %struct.iwl_fw_paging_cmd* %5, i32 0, i32 1
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  store i32 %15, i32* %11, align 8
  %16 = getelementptr inbounds %struct.iwl_fw_paging_cmd, %struct.iwl_fw_paging_cmd* %5, i32 0, i32 2
  %17 = load i32, i32* @BLOCK_2_EXP_SIZE, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.iwl_fw_paging_cmd, %struct.iwl_fw_paging_cmd* %5, i32 0, i32 3
  %20 = load i32, i32* @PAGING_CMD_IS_SECURED, align 4
  %21 = load i32, i32* @PAGING_CMD_IS_ENABLED, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %22, %27
  %29 = call i32 @cpu_to_le32(i32 %28)
  store i32 %29, i32* %19, align 8
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %31 = ptrtoint %struct.iwl_fw_paging_cmd* %5 to i32
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  store i32 24, i32* %32, align 4
  %33 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  %34 = load i32, i32* @FW_PAGING_BLOCK_CMD, align 4
  %35 = load i32, i32* @IWL_ALWAYS_LONG_GROUP, align 4
  %36 = call i32 @iwl_cmd_id(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %33, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %64, %2
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %37
  %45 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PAGE_2_EXP_SIZE, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = getelementptr inbounds %struct.iwl_fw_paging_cmd, %struct.iwl_fw_paging_cmd* %5, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %44
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %37

67:                                               ; preds = %37
  %68 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @iwl_trans_send_cmd(i32 %70, %struct.iwl_host_cmd* %6)
  ret i32 %71
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

declare dso_local i32 @iwl_trans_send_cmd(i32, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
