; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_hwrm_cfa_flow_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_hwrm_cfa_flow_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32 }
%struct.bnxt_tc_stats_batch = type { %struct.TYPE_2__, %struct.bnxt_tc_flow_node* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.bnxt_tc_flow_node = type { i32 }
%struct.hwrm_cfa_flow_stats_input = type { i32, i32, i32, i32 }
%struct.hwrm_cfa_flow_stats_output = type { i32, i32 }

@HWRM_CFA_FLOW_STATS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"error rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, %struct.bnxt_tc_stats_batch*)* @bnxt_hwrm_cfa_flow_stats_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_cfa_flow_stats_get(%struct.bnxt* %0, i32 %1, %struct.bnxt_tc_stats_batch* %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_tc_stats_batch*, align 8
  %7 = alloca %struct.hwrm_cfa_flow_stats_input, align 4
  %8 = alloca %struct.hwrm_cfa_flow_stats_output*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bnxt_tc_flow_node*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bnxt_tc_stats_batch* %2, %struct.bnxt_tc_stats_batch** %6, align 8
  %16 = bitcast %struct.hwrm_cfa_flow_stats_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.hwrm_cfa_flow_stats_input, %struct.hwrm_cfa_flow_stats_input* %7, i32 0, i32 2
  store i32* %17, i32** %9, align 8
  %18 = getelementptr inbounds %struct.hwrm_cfa_flow_stats_input, %struct.hwrm_cfa_flow_stats_input* %7, i32 0, i32 1
  store i32* %18, i32** %10, align 8
  %19 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %20 = load i32, i32* @HWRM_CFA_FLOW_STATS, align 4
  %21 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %19, %struct.hwrm_cfa_flow_stats_input* %7, i32 %20, i32 -1, i32 -1)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.hwrm_cfa_flow_stats_input, %struct.hwrm_cfa_flow_stats_input* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %47, %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.bnxt_tc_stats_batch*, %struct.bnxt_tc_stats_batch** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %30, i64 %32
  %34 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %33, i32 0, i32 1
  %35 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %34, align 8
  store %struct.bnxt_tc_flow_node* %35, %struct.bnxt_tc_flow_node** %13, align 8
  %36 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %37 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %13, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @bnxt_fill_cfa_stats_req(%struct.bnxt* %36, %struct.bnxt_tc_flow_node* %37, i32* %41, i32* %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %55 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %56 = call i32 @_hwrm_send_message(%struct.bnxt* %54, %struct.hwrm_cfa_flow_stats_input* %7, i32 16, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %99, label %59

59:                                               ; preds = %50
  %60 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %61 = call %struct.hwrm_cfa_flow_stats_output* @bnxt_get_hwrm_resp_addr(%struct.bnxt* %60, %struct.hwrm_cfa_flow_stats_input* %7)
  store %struct.hwrm_cfa_flow_stats_output* %61, %struct.hwrm_cfa_flow_stats_output** %8, align 8
  %62 = load %struct.hwrm_cfa_flow_stats_output*, %struct.hwrm_cfa_flow_stats_output** %8, align 8
  %63 = getelementptr inbounds %struct.hwrm_cfa_flow_stats_output, %struct.hwrm_cfa_flow_stats_output* %62, i32 0, i32 1
  store i32* %63, i32** %14, align 8
  %64 = load %struct.hwrm_cfa_flow_stats_output*, %struct.hwrm_cfa_flow_stats_output** %8, align 8
  %65 = getelementptr inbounds %struct.hwrm_cfa_flow_stats_output, %struct.hwrm_cfa_flow_stats_output* %64, i32 0, i32 0
  store i32* %65, i32** %15, align 8
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %95, %59
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %66
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le64_to_cpu(i32 %75)
  %77 = load %struct.bnxt_tc_stats_batch*, %struct.bnxt_tc_stats_batch** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %77, i64 %79
  %81 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8* %76, i8** %82, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le64_to_cpu(i32 %87)
  %89 = load %struct.bnxt_tc_stats_batch*, %struct.bnxt_tc_stats_batch** %6, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %89, i64 %91
  %93 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i8* %88, i8** %94, align 8
  br label %95

95:                                               ; preds = %70
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %66

98:                                               ; preds = %66
  br label %105

99:                                               ; preds = %50
  %100 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %101 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @netdev_info(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %98
  %106 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %107 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_cfa_flow_stats_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @bnxt_fill_cfa_stats_req(%struct.bnxt*, %struct.bnxt_tc_flow_node*, i32*, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_cfa_flow_stats_input*, i32, i32) #2

declare dso_local %struct.hwrm_cfa_flow_stats_output* @bnxt_get_hwrm_resp_addr(%struct.bnxt*, %struct.hwrm_cfa_flow_stats_input*) #2

declare dso_local i8* @le64_to_cpu(i32) #2

declare dso_local i32 @netdev_info(i32, i8*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
