; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pfc_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pfc_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_pfc_stats_cmd = type { i32* }
%struct.hclge_desc = type { i64, i32 }

@HCLGE_TM_PFC_PKT_GET_CMD_NUM = common dso_local global i32 0, align 4
@HCLGE_OPC_QUERY_PFC_RX_PKT_CNT = common dso_local global i32 0, align 4
@HCLGE_OPC_QUERY_PFC_TX_PKT_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@HCLGE_TM_PFC_NUM_GET_PER_CMD = common dso_local global i32 0, align 4
@HCLGE_MAX_TC_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32*)* @hclge_pfc_stats_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_pfc_stats_get(%struct.hclge_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hclge_pfc_stats_cmd*, align 8
  %15 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @HCLGE_TM_PFC_PKT_GET_CMD_NUM, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.hclge_desc, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @HCLGE_OPC_QUERY_PFC_RX_PKT_CNT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HCLGE_OPC_QUERY_PFC_TX_PKT_CNT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %114

30:                                               ; preds = %23, %3
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @HCLGE_TM_PFC_PKT_GET_CMD_NUM, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %19, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %39, i32 %40, i32 1)
  %42 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %19, i64 %45
  %47 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %19, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %56, i32 %57, i32 1)
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %60 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %59, i32 0, i32 0
  %61 = load i32, i32* @HCLGE_TM_PFC_PKT_GET_CMD_NUM, align 4
  %62 = call i32 @hclge_cmd_send(i32* %60, %struct.hclge_desc* %19, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %114

67:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %110, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @HCLGE_TM_PFC_PKT_GET_CMD_NUM, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %113

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %19, i64 %74
  %76 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 16
  %78 = inttoptr i64 %77 to %struct.hclge_pfc_stats_cmd*
  store %struct.hclge_pfc_stats_cmd* %78, %struct.hclge_pfc_stats_cmd** %14, align 8
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %106, %72
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @HCLGE_TM_PFC_NUM_GET_PER_CMD, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @HCLGE_TM_PFC_PKT_GET_CMD_NUM, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @HCLGE_MAX_TC_NUM, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %83
  %94 = load %struct.hclge_pfc_stats_cmd*, %struct.hclge_pfc_stats_cmd** %14, align 8
  %95 = getelementptr inbounds %struct.hclge_pfc_stats_cmd, %struct.hclge_pfc_stats_cmd* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le64_to_cpu(i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %79

109:                                              ; preds = %79
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %68

113:                                              ; preds = %68
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %65, %27
  %115 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #2

declare dso_local i32 @le64_to_cpu(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
