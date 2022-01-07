; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_gen_dbglog_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_gen_dbglog_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_10_4_dbglog_cfg_cmd = type { i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBGLOG_CFG_LOG_LVL = common dso_local global i32 0, align 4
@ATH10K_DBGLOG_LEVEL_WARN = common dso_local global i32 0, align 4
@ATH10K_DBGLOG_CFG_LOG_LVL_MASK = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"wmi dbglog cfg modules 0x%016llx 0x%016llx config %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32)* @ath10k_wmi_10_4_op_gen_dbglog_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_4_op_gen_dbglog_cfg(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_10_4_dbglog_cfg_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %11, i32 32)
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.sk_buff* @ERR_PTR(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.wmi_10_4_dbglog_cfg_cmd*
  store %struct.wmi_10_4_dbglog_cfg_cmd* %23, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ATH10K_DBGLOG_CFG_LOG_LVL, align 4
  %29 = call i32 @SM(i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @ATH10K_DBGLOG_LEVEL_WARN, align 4
  %32 = load i32, i32* @ATH10K_DBGLOG_CFG_LOG_LVL, align 4
  %33 = call i32 @SM(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  store i32 -1, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @__cpu_to_le64(i32 %35)
  %37 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = call i8* @__cpu_to_le64(i32 -1)
  %40 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i8* @__cpu_to_le32(i32 %42)
  %44 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @ATH10K_DBGLOG_CFG_LOG_LVL_MASK, align 4
  %47 = call i8* @__cpu_to_le32(i32 %46)
  %48 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %51 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %52 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @__le64_to_cpu(i8* %54)
  %56 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @__le64_to_cpu(i8* %58)
  %60 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %61 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @__le32_to_cpu(i8* %62)
  %64 = load %struct.wmi_10_4_dbglog_cfg_cmd*, %struct.wmi_10_4_dbglog_cfg_cmd** %8, align 8
  %65 = getelementptr inbounds %struct.wmi_10_4_dbglog_cfg_cmd, %struct.wmi_10_4_dbglog_cfg_cmd* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @__le32_to_cpu(i8* %66)
  %68 = call i32 @ath10k_dbg(%struct.ath10k* %50, i32 %51, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59, i32 %63, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %4, align 8
  br label %70

70:                                               ; preds = %34, %15
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %71
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i8* @__cpu_to_le64(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @__le64_to_cpu(i8*) #1

declare dso_local i32 @__le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
