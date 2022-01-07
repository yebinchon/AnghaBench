; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_config_rss_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_config_rss_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_rss_ind_tbl_cmd = type { i8*, i8*, i32, i8*, i8* }

@FW_RSS_IND_TBL_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_config_rss_range(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.fw_rss_ind_tbl_cmd, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [3 x i64], align 16
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i64*, i64** %12, align 8
  store i64* %23, i64** %14, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64* %27, i64** %15, align 8
  %28 = call i32 @memset(%struct.fw_rss_ind_tbl_cmd* %16, i32 0, i32 40)
  %29 = load i32, i32* @FW_RSS_IND_TBL_CMD, align 4
  %30 = call i32 @FW_CMD_OP_V(i32 %29)
  %31 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @FW_RSS_IND_TBL_CMD_VIID_V(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %16, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = call i32 @FW_LEN16(%struct.fw_rss_ind_tbl_cmd* byval(%struct.fw_rss_ind_tbl_cmd) align 8 %16)
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %16, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %115, %6
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %116

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %16, i32 0, i32 2
  store i32* %47, i32** %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @min(i32 %48, i32 32)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i8* @cpu_to_be16(i32 %50)
  %52 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %16, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @cpu_to_be16(i32 %53)
  %55 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %16, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %92, %46
  %63 = load i32, i32* %18, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %62
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 0
  store i64* %66, i64** %21, align 8
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @min(i32 3, i32 %67)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %18, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %18, align 4
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 2
  store i64 0, i64* %72, align 16
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %74, align 16
  br label %75

75:                                               ; preds = %91, %65
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %22, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %22, align 4
  %81 = load i64*, i64** %14, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %14, align 8
  %83 = load i64, i64* %81, align 8
  %84 = load i64*, i64** %21, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %21, align 8
  store i64 %83, i64* %84, align 8
  %86 = load i64*, i64** %14, align 8
  %87 = load i64*, i64** %15, align 8
  %88 = icmp uge i64* %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i64*, i64** %12, align 8
  store i64* %90, i64** %14, align 8
  br label %91

91:                                               ; preds = %89, %78
  br label %75

92:                                               ; preds = %75
  %93 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 0
  %94 = load i64, i64* %93, align 16
  %95 = call i32 @FW_RSS_IND_TBL_CMD_IQ0_V(i64 %94)
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @FW_RSS_IND_TBL_CMD_IQ1_V(i64 %97)
  %99 = or i32 %95, %98
  %100 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 2
  %101 = load i64, i64* %100, align 16
  %102 = call i32 @FW_RSS_IND_TBL_CMD_IQ2_V(i64 %101)
  %103 = or i32 %99, %102
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %17, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %17, align 8
  store i32 %105, i32* %106, align 4
  br label %62

108:                                              ; preds = %62
  %109 = load %struct.adapter*, %struct.adapter** %8, align 8
  %110 = call i32 @t4vf_wr_mbox(%struct.adapter* %109, %struct.fw_rss_ind_tbl_cmd* %16, i32 40, i32* null)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %19, align 4
  store i32 %114, i32* %7, align 4
  br label %117

115:                                              ; preds = %108
  br label %43

116:                                              ; preds = %43
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @memset(%struct.fw_rss_ind_tbl_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_VIID_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_ind_tbl_cmd* byval(%struct.fw_rss_ind_tbl_cmd) align 8) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_IQ0_V(i64) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_IQ1_V(i64) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_IQ2_V(i64) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_rss_ind_tbl_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
