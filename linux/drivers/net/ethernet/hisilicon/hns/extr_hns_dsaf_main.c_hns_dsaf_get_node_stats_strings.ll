; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_node_stats_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_node_stats_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"innod%d_pad_drop_pkts\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"innod%d_manage_pkts\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"innod%d_rx_pkts\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"innod%d_rx_pkt_id\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"innod%d_rx_pause_frame\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"innod%d_release_buf_num\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"innod%d_sbm_drop_pkts\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"innod%d_crc_false_pkts\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"innod%d_bp_drop_pkts\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"innod%d_lookup_rslt_drop_pkts\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"innod%d_local_rslt_fail_pkts\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"innod%d_vlan_drop_pkts\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"innod%d_stp_drop_pkts\00", align 1
@DSAF_SERVICE_NW_NUM = common dso_local global i32 0, align 4
@DSAF_PRIO_NR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"inod%d_pfc_prio%d_pkts\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"onod%d_pfc_prio%d_pkts\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"onnod%d_tx_pkts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, %struct.dsaf_device*)* @hns_dsaf_get_node_stats_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hns_dsaf_get_node_stats_strings(i8* %0, i32 %1, %struct.dsaf_device* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsaf_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dsaf_device* %2, %struct.dsaf_device** %6, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %12 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AE_IS_VER1(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %87, i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %7, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %95, i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %7, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %103, i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %116 = load i8*, i8** %7, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %7, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @DSAF_SERVICE_NW_NUM, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %168

122:                                              ; preds = %3
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %168, label %125

125:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %157, %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @DSAF_PRIO_NR, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %126
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %133 = mul nsw i32 0, %132
  %134 = load i32, i32* @DSAF_PRIO_NR, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %131, i64 %136
  %138 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %137, i32 %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %144 = mul nsw i32 1, %143
  %145 = load i32, i32* @DSAF_PRIO_NR, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %142, i64 %147
  %149 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %148, i32 %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %7, align 8
  br label %157

157:                                              ; preds = %130
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %126

160:                                              ; preds = %126
  %161 = load i32, i32* @DSAF_PRIO_NR, align 4
  %162 = mul nsw i32 1, %161
  %163 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i8*, i8** %7, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %7, align 8
  br label %168

168:                                              ; preds = %160, %122, %3
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %171 = load i32, i32* %5, align 4
  %172 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %169, i32 %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %174 = load i8*, i8** %7, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %7, align 8
  %177 = load i8*, i8** %7, align 8
  ret i8* %177
}

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
