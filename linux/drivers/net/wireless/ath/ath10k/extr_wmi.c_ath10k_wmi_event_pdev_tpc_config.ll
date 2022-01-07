; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_pdev_tpc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_pdev_tpc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_pdev_tpc_config_event = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_tpc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WMI_TPC_RATE_MAX = common dso_local global i32 0, align 4
@WMI_TPC_PREAM_TABLE_MAX = common dso_local global i32 0, align 4
@WMI_TPC_TX_N_CHAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"number of tx chain is %d greater than TPC configured tx chain %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WMI_TPC_TABLE_TYPE_CDD = common dso_local global i32 0, align 4
@WMI_TPC_TABLE_TYPE_STBC = common dso_local global i32 0, align 4
@WMI_TPC_TABLE_TYPE_TXBF = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [112 x i8] c"wmi event tpc config channel %d mode %d ctl %d regd %d gain %d %d limit %d max_power %d tx_chanins %d rates %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_pdev_tpc_config(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wmi_pdev_tpc_config_event*, align 8
  %10 = alloca %struct.ath10k_tpc_stats*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @WMI_TPC_RATE_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @WMI_TPC_PREAM_TABLE_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.wmi_pdev_tpc_config_event*
  store %struct.wmi_pdev_tpc_config_event* %22, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %23 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %24 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le32_to_cpu(i32 %25)
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @WMI_TPC_TX_N_CHAIN, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @WMI_TPC_TX_N_CHAIN, align 8
  %35 = call i32 @ath10k_warn(%struct.ath10k* %32, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  store i32 1, i32* %11, align 4
  br label %167

36:                                               ; preds = %2
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.ath10k_tpc_stats* @kzalloc(i32 40, i32 %37)
  store %struct.ath10k_tpc_stats* %38, %struct.ath10k_tpc_stats** %10, align 8
  %39 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %40 = icmp ne %struct.ath10k_tpc_stats* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %167

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ath10k_wmi_tpc_config_get_rate_code(i32* %15, i32* %18, i64 %43)
  %45 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %46 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__le32_to_cpu(i32 %47)
  %49 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %50 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %52 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__le32_to_cpu(i32 %53)
  %55 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %56 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %58 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__le32_to_cpu(i32 %59)
  %61 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %62 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %64 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__le32_to_cpu(i32 %65)
  %67 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %68 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %70 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @a_sle32_to_cpu(i32 %71)
  %73 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %74 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %76 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @__le32_to_cpu(i32 %77)
  %79 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %80 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %82 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__le32_to_cpu(i32 %83)
  %85 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %86 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %88 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__le32_to_cpu(i32 %89)
  %91 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %92 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %94 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__le32_to_cpu(i32 %95)
  %97 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %98 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %100 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__le32_to_cpu(i32 %101)
  %103 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %104 = getelementptr inbounds %struct.ath10k_tpc_stats, %struct.ath10k_tpc_stats* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %106 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %107 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %108 = load i32, i32* @WMI_TPC_TABLE_TYPE_CDD, align 4
  %109 = call i32 @ath10k_tpc_config_disp_tables(%struct.ath10k* %105, %struct.wmi_pdev_tpc_config_event* %106, %struct.ath10k_tpc_stats* %107, i32* %15, i32* %18, i32 %108)
  %110 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %111 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %112 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %113 = load i32, i32* @WMI_TPC_TABLE_TYPE_STBC, align 4
  %114 = call i32 @ath10k_tpc_config_disp_tables(%struct.ath10k* %110, %struct.wmi_pdev_tpc_config_event* %111, %struct.ath10k_tpc_stats* %112, i32* %15, i32* %18, i32 %113)
  %115 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %116 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %117 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %118 = load i32, i32* @WMI_TPC_TABLE_TYPE_TXBF, align 4
  %119 = call i32 @ath10k_tpc_config_disp_tables(%struct.ath10k* %115, %struct.wmi_pdev_tpc_config_event* %116, %struct.ath10k_tpc_stats* %117, i32* %15, i32* %18, i32 %118)
  %120 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %121 = load %struct.ath10k_tpc_stats*, %struct.ath10k_tpc_stats** %10, align 8
  %122 = call i32 @ath10k_debug_tpc_stats_process(%struct.ath10k* %120, %struct.ath10k_tpc_stats* %121)
  %123 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %124 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %125 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %126 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @__le32_to_cpu(i32 %127)
  %129 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %130 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @__le32_to_cpu(i32 %131)
  %133 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %134 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @__le32_to_cpu(i32 %135)
  %137 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %138 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @__le32_to_cpu(i32 %139)
  %141 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %142 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @a_sle32_to_cpu(i32 %143)
  %145 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %146 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @__le32_to_cpu(i32 %147)
  %149 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %150 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @__le32_to_cpu(i32 %151)
  %153 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %154 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @__le32_to_cpu(i32 %155)
  %157 = sdiv i32 %156, 2
  %158 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %159 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @__le32_to_cpu(i32 %160)
  %162 = load %struct.wmi_pdev_tpc_config_event*, %struct.wmi_pdev_tpc_config_event** %9, align 8
  %163 = getelementptr inbounds %struct.wmi_pdev_tpc_config_event, %struct.wmi_pdev_tpc_config_event* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @__le32_to_cpu(i32 %164)
  %166 = call i32 @ath10k_dbg(%struct.ath10k* %123, i32 %124, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %132, i32 %136, i32 %140, i32 %144, i32 %148, i32 %152, i32 %157, i32 %161, i32 %165)
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %42, %41, %31
  %168 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %11, align 4
  switch i32 %169, label %171 [
    i32 0, label %170
    i32 1, label %170
  ]

170:                                              ; preds = %167, %167
  ret void

171:                                              ; preds = %167
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64, i64) #2

declare dso_local %struct.ath10k_tpc_stats* @kzalloc(i32, i32) #2

declare dso_local i32 @ath10k_wmi_tpc_config_get_rate_code(i32*, i32*, i64) #2

declare dso_local i32 @a_sle32_to_cpu(i32) #2

declare dso_local i32 @ath10k_tpc_config_disp_tables(%struct.ath10k*, %struct.wmi_pdev_tpc_config_event*, %struct.ath10k_tpc_stats*, i32*, i32*, i32) #2

declare dso_local i32 @ath10k_debug_tpc_stats_process(%struct.ath10k*, %struct.ath10k_tpc_stats*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
