; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_tpc_final_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_tpc_final_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_pdev_tpc_final_table_event = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_tpc_stats_final = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WMI_TPC_FINAL_RATE_MAX = common dso_local global i32 0, align 4
@WMI_TPC_PREAM_TABLE_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WMI_TPC_TABLE_TYPE_CDD = common dso_local global i32 0, align 4
@WMI_TPC_TABLE_TYPE_STBC = common dso_local global i32 0, align 4
@WMI_TPC_TABLE_TYPE_TXBF = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"wmi event tpc final table channel %d mode %d ctl %d regd %d gain %d %d limit %d max_power %d tx_chanins %d rates %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_tpc_final_table(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wmi_pdev_tpc_final_table_event*, align 8
  %10 = alloca %struct.ath10k_tpc_stats_final*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @WMI_TPC_FINAL_RATE_MAX, align 4
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
  %22 = inttoptr i64 %21 to %struct.wmi_pdev_tpc_final_table_event*
  store %struct.wmi_pdev_tpc_final_table_event* %22, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.ath10k_tpc_stats_final* @kzalloc(i32 40, i32 %23)
  store %struct.ath10k_tpc_stats_final* %24, %struct.ath10k_tpc_stats_final** %10, align 8
  %25 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %26 = icmp ne %struct.ath10k_tpc_stats_final* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %157

28:                                               ; preds = %2
  %29 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %30 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__le32_to_cpu(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ath10k_wmi_tpc_config_get_rate_code(i32* %15, i32* %18, i32 %33)
  %35 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %36 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__le32_to_cpu(i32 %37)
  %39 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %40 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %42 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__le32_to_cpu(i32 %43)
  %45 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %46 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %48 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__le32_to_cpu(i32 %49)
  %51 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %52 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %54 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__le32_to_cpu(i32 %55)
  %57 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %58 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %60 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @a_sle32_to_cpu(i32 %61)
  %63 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %64 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %66 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__le32_to_cpu(i32 %67)
  %69 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %70 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %72 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__le32_to_cpu(i32 %73)
  %75 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %76 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %78 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @__le32_to_cpu(i32 %79)
  %81 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %82 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %84 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__le32_to_cpu(i32 %85)
  %87 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %88 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %90 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @__le32_to_cpu(i32 %91)
  %93 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %94 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %96 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %97 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %98 = load i32, i32* @WMI_TPC_TABLE_TYPE_CDD, align 4
  %99 = call i32 @ath10k_wmi_tpc_stats_final_disp_tables(%struct.ath10k* %95, %struct.wmi_pdev_tpc_final_table_event* %96, %struct.ath10k_tpc_stats_final* %97, i32* %15, i32* %18, i32 %98)
  %100 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %101 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %102 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %103 = load i32, i32* @WMI_TPC_TABLE_TYPE_STBC, align 4
  %104 = call i32 @ath10k_wmi_tpc_stats_final_disp_tables(%struct.ath10k* %100, %struct.wmi_pdev_tpc_final_table_event* %101, %struct.ath10k_tpc_stats_final* %102, i32* %15, i32* %18, i32 %103)
  %105 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %106 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %107 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %108 = load i32, i32* @WMI_TPC_TABLE_TYPE_TXBF, align 4
  %109 = call i32 @ath10k_wmi_tpc_stats_final_disp_tables(%struct.ath10k* %105, %struct.wmi_pdev_tpc_final_table_event* %106, %struct.ath10k_tpc_stats_final* %107, i32* %15, i32* %18, i32 %108)
  %110 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %111 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %10, align 8
  %112 = call i32 @ath10k_debug_tpc_stats_final_process(%struct.ath10k* %110, %struct.ath10k_tpc_stats_final* %111)
  %113 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %114 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %115 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %116 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @__le32_to_cpu(i32 %117)
  %119 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %120 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @__le32_to_cpu(i32 %121)
  %123 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %124 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @__le32_to_cpu(i32 %125)
  %127 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %128 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @__le32_to_cpu(i32 %129)
  %131 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %132 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @a_sle32_to_cpu(i32 %133)
  %135 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %136 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @__le32_to_cpu(i32 %137)
  %139 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %140 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @__le32_to_cpu(i32 %141)
  %143 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %144 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @__le32_to_cpu(i32 %145)
  %147 = sdiv i32 %146, 2
  %148 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %149 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @__le32_to_cpu(i32 %150)
  %152 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %9, align 8
  %153 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @__le32_to_cpu(i32 %154)
  %156 = call i32 @ath10k_dbg(%struct.ath10k* %113, i32 %114, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %122, i32 %126, i32 %130, i32 %134, i32 %138, i32 %142, i32 %147, i32 %151, i32 %155)
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %28, %27
  %158 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %11, align 4
  switch i32 %159, label %161 [
    i32 0, label %160
    i32 1, label %160
  ]

160:                                              ; preds = %157, %157
  ret void

161:                                              ; preds = %157
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ath10k_tpc_stats_final* @kzalloc(i32, i32) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i32 @ath10k_wmi_tpc_config_get_rate_code(i32*, i32*, i32) #2

declare dso_local i32 @a_sle32_to_cpu(i32) #2

declare dso_local i32 @ath10k_wmi_tpc_stats_final_disp_tables(%struct.ath10k*, %struct.wmi_pdev_tpc_final_table_event*, %struct.ath10k_tpc_stats_final*, i32*, i32*, i32) #2

declare dso_local i32 @ath10k_debug_tpc_stats_final_process(%struct.ath10k*, %struct.ath10k_tpc_stats_final*) #2

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
