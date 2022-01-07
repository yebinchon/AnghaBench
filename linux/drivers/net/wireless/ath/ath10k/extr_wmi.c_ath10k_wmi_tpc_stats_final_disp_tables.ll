; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_tpc_stats_final_disp_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_tpc_stats_final_disp_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_pdev_tpc_final_table_event = type { i32, i32, i32 }
%struct.ath10k_tpc_stats_final = type { %struct.TYPE_2__*, i8** }
%struct.TYPE_2__ = type { i64*, i32*, i32* }

@WMI_TPC_TX_N_CHAIN = common dso_local global i32 0, align 4
@WMI_TPC_BUF_SIZE = common dso_local global i32 0, align 4
@WMI_TPC_CONFIG_EVENT_FLAG_TABLE_CDD = common dso_local global i64 0, align 8
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CDD not supported\0A\00", align 1
@ATH10K_TPC_TABLE_TYPE_FLAG = common dso_local global i8* null, align 8
@WMI_TPC_CONFIG_EVENT_FLAG_TABLE_STBC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"STBC not supported\0A\00", align 1
@WMI_TPC_CONFIG_EVENT_FLAG_TABLE_TXBF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"TXBF not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"invalid table type in wmi tpc event: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%8d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.wmi_pdev_tpc_final_table_event*, %struct.ath10k_tpc_stats_final*, i32*, i64*, i32)* @ath10k_wmi_tpc_stats_final_disp_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_tpc_stats_final_disp_tables(%struct.ath10k* %0, %struct.wmi_pdev_tpc_final_table_event* %1, %struct.ath10k_tpc_stats_final* %2, i32* %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.wmi_pdev_tpc_final_table_event*, align 8
  %9 = alloca %struct.ath10k_tpc_stats_final*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store %struct.wmi_pdev_tpc_final_table_event* %1, %struct.wmi_pdev_tpc_final_table_event** %8, align 8
  store %struct.ath10k_tpc_stats_final* %2, %struct.ath10k_tpc_stats_final** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* @WMI_TPC_TX_N_CHAIN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i32, i32* @WMI_TPC_TX_N_CHAIN, align 4
  %27 = load i32, i32* @WMI_TPC_BUF_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %31 = load i32, i32* @WMI_TPC_BUF_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %20, align 8
  %34 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %8, align 8
  %35 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @__le32_to_cpu(i32 %36)
  store i64 %37, i64* %16, align 8
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %90 [
    i32 130, label %39
    i32 129, label %56
    i32 128, label %73
  ]

39:                                               ; preds = %6
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* @WMI_TPC_CONFIG_EVENT_FLAG_TABLE_CDD, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %46 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %47 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %45, i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** @ATH10K_TPC_TABLE_TYPE_FLAG, align 8
  %49 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %9, align 8
  %50 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  store i32 1, i32* %21, align 4
  br label %199

55:                                               ; preds = %39
  br label %95

56:                                               ; preds = %6
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* @WMI_TPC_CONFIG_EVENT_FLAG_TABLE_STBC, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %63 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %64 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %62, i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i8*, i8** @ATH10K_TPC_TABLE_TYPE_FLAG, align 8
  %66 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %9, align 8
  %67 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %65, i8** %71, align 8
  store i32 1, i32* %21, align 4
  br label %199

72:                                               ; preds = %56
  br label %95

73:                                               ; preds = %6
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* @WMI_TPC_CONFIG_EVENT_FLAG_TABLE_TXBF, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %73
  %79 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %80 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %81 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %79, i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i8*, i8** @ATH10K_TPC_TABLE_TYPE_FLAG, align 8
  %83 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %9, align 8
  %84 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  store i32 1, i32* %21, align 4
  br label %199

89:                                               ; preds = %73
  br label %95

90:                                               ; preds = %6
  %91 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %92 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %91, i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  store i32 1, i32* %21, align 4
  br label %199

95:                                               ; preds = %89, %72, %55
  store i64 0, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %96

96:                                               ; preds = %195, %95
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %8, align 8
  %99 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @__le32_to_cpu(i32 %100)
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %198

103:                                              ; preds = %96
  %104 = trunc i64 %29 to i32
  %105 = call i32 @memset(i8* %30, i32 0, i32 %104)
  %106 = trunc i64 %32 to i32
  %107 = call i32 @memset(i8* %33, i32 0, i32 %106)
  %108 = load i64, i64* %13, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %108, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load i64, i64* %15, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %15, align 8
  br label %117

117:                                              ; preds = %114, %103
  store i64 0, i64* %14, align 8
  br label %118

118:                                              ; preds = %153, %117
  %119 = load i64, i64* %14, align 8
  %120 = load i32, i32* @WMI_TPC_TX_N_CHAIN, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %118
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %8, align 8
  %126 = getelementptr inbounds %struct.wmi_pdev_tpc_final_table_event, %struct.wmi_pdev_tpc_final_table_event* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @__le32_to_cpu(i32 %127)
  %129 = icmp uge i64 %124, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %156

131:                                              ; preds = %123
  %132 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %133 = load %struct.wmi_pdev_tpc_final_table_event*, %struct.wmi_pdev_tpc_final_table_event** %8, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %135, 1
  %137 = load i32*, i32** %10, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i64, i64* %15, align 8
  %143 = call i32 @ath10k_wmi_tpc_final_get_rate(%struct.ath10k* %132, %struct.wmi_pdev_tpc_final_table_event* %133, i64 %134, i64 %136, i32 %140, i32 %141, i64 %142)
  %144 = load i64, i64* %14, align 8
  %145 = getelementptr inbounds i32, i32* %25, i64 %144
  store i32 %143, i32* %145, align 4
  %146 = trunc i64 %32 to i32
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds i32, i32* %25, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @snprintf(i8* %33, i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = trunc i64 %29 to i32
  %152 = call i32 @strlcat(i8* %30, i8* %33, i32 %151)
  br label %153

153:                                              ; preds = %131
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %14, align 8
  br label %118

156:                                              ; preds = %130, %118
  %157 = load i64, i64* %15, align 8
  %158 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %9, align 8
  %159 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  store i64 %157, i64* %167, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = load i64, i64* %13, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %9, align 8
  %173 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 %171, i32* %181, align 4
  %182 = load %struct.ath10k_tpc_stats_final*, %struct.ath10k_tpc_stats_final** %9, align 8
  %183 = getelementptr inbounds %struct.ath10k_tpc_stats_final, %struct.ath10k_tpc_stats_final* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* %13, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = trunc i64 %29 to i32
  %194 = call i32 @memcpy(i32 %192, i8* %30, i32 %193)
  br label %195

195:                                              ; preds = %156
  %196 = load i64, i64* %13, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %13, align 8
  br label %96

198:                                              ; preds = %96
  store i32 0, i32* %21, align 4
  br label %199

199:                                              ; preds = %198, %90, %78, %61, %44
  %200 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %21, align 4
  switch i32 %201, label %203 [
    i32 0, label %202
    i32 1, label %202
  ]

202:                                              ; preds = %199, %199
  ret void

203:                                              ; preds = %199
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @__le32_to_cpu(i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ath10k_wmi_tpc_final_get_rate(%struct.ath10k*, %struct.wmi_pdev_tpc_final_table_event*, i64, i64, i32, i32, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
