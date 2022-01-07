; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_config_sched_scans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_config_sched_scans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_pno_info = type { i32 }
%struct.brcmf_gscan_config = type { i32, i32*, i32, i32, i32, i32 }
%struct.brcmf_gscan_bucket_config = type { i32, i32*, i32, i32, i32, i32 }
%struct.brcmf_pno_config_le = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed error=%d\0A\00", align 1
@BRCMF_GSCAN_CFG_VERSION = common dso_local global i32 0, align 4
@GSCAN_RETRY_THRESHOLD = common dso_local global i32 0, align 4
@GSCAN_BATCH_NO_THR_SET = common dso_local global i32 0, align 4
@BRCMF_GSCAN_CFG_ALL_BUCKETS_IN_1ST_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pfn_gscan_cfg\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*)* @brcmf_pno_config_sched_scans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_config_sched_scans(%struct.brcmf_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.brcmf_pno_info*, align 8
  %6 = alloca %struct.brcmf_gscan_config*, align 8
  %7 = alloca %struct.brcmf_gscan_bucket_config*, align 8
  %8 = alloca %struct.brcmf_pno_config_le, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 0
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  store %struct.brcmf_pub* %15, %struct.brcmf_pub** %4, align 8
  %16 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %17 = call %struct.brcmf_pno_info* @ifp_to_pno(%struct.brcmf_if* %16)
  store %struct.brcmf_pno_info* %17, %struct.brcmf_pno_info** %5, align 8
  %18 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %19 = bitcast %struct.brcmf_gscan_bucket_config** %7 to %struct.brcmf_gscan_config**
  %20 = call i32 @brcmf_pno_prep_fwconfig(%struct.brcmf_pno_info* %18, %struct.brcmf_pno_config_le* %8, %struct.brcmf_gscan_config** %19, i32* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %2, align 4
  br label %128

25:                                               ; preds = %1
  %26 = load i32, i32* %12, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 32
  %30 = add i64 32, %29
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.brcmf_gscan_config* @kzalloc(i64 %31, i32 %32)
  store %struct.brcmf_gscan_config* %33, %struct.brcmf_gscan_config** %6, align 8
  %34 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %35 = icmp ne %struct.brcmf_gscan_config* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %123

39:                                               ; preds = %25
  %40 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %41 = call i32 @brcmf_pno_clean(%struct.brcmf_if* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @bphy_err(%struct.brcmf_pub* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %120

48:                                               ; preds = %39
  %49 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @brcmf_pno_config(%struct.brcmf_if* %49, i32 %50, i32 0, i32 0)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %120

55:                                               ; preds = %48
  %56 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %57 = call i32 @brcmf_pno_channel_config(%struct.brcmf_if* %56, %struct.brcmf_pno_config_le* %8)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %113

61:                                               ; preds = %55
  %62 = load i32, i32* @BRCMF_GSCAN_CFG_VERSION, align 4
  %63 = call i32 @cpu_to_le16(i32 %62)
  %64 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %65 = getelementptr inbounds %struct.brcmf_gscan_config, %struct.brcmf_gscan_config* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @GSCAN_RETRY_THRESHOLD, align 4
  %67 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %68 = getelementptr inbounds %struct.brcmf_gscan_config, %struct.brcmf_gscan_config* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @GSCAN_BATCH_NO_THR_SET, align 4
  %70 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %71 = getelementptr inbounds %struct.brcmf_gscan_config, %struct.brcmf_gscan_config* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @BRCMF_GSCAN_CFG_ALL_BUCKETS_IN_1ST_SCAN, align 4
  %73 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %74 = getelementptr inbounds %struct.brcmf_gscan_config, %struct.brcmf_gscan_config* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %77 = getelementptr inbounds %struct.brcmf_gscan_config, %struct.brcmf_gscan_config* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %79 = getelementptr inbounds %struct.brcmf_gscan_config, %struct.brcmf_gscan_config* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %7, align 8
  %83 = bitcast %struct.brcmf_gscan_bucket_config* %82 to %struct.brcmf_gscan_config*
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 32
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32* %81, %struct.brcmf_gscan_config* %83, i32 %87)
  %89 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %90 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_gscan_config* %90, i64 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %61
  br label %113

96:                                               ; preds = %61
  %97 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %98 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %99 = call i32 @brcmf_pno_set_random(%struct.brcmf_if* %97, %struct.brcmf_pno_info* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %113

103:                                              ; preds = %96
  %104 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %105 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %5, align 8
  %106 = call i32 @brcmf_pno_config_networks(%struct.brcmf_if* %104, %struct.brcmf_pno_info* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %113

110:                                              ; preds = %103
  %111 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %112 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %110, %109, %102, %95, %60
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %118 = call i32 @brcmf_pno_clean(%struct.brcmf_if* %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %54, %44
  %121 = load %struct.brcmf_gscan_config*, %struct.brcmf_gscan_config** %6, align 8
  %122 = call i32 @kfree(%struct.brcmf_gscan_config* %121)
  br label %123

123:                                              ; preds = %120, %36
  %124 = load %struct.brcmf_gscan_bucket_config*, %struct.brcmf_gscan_bucket_config** %7, align 8
  %125 = bitcast %struct.brcmf_gscan_bucket_config* %124 to %struct.brcmf_gscan_config*
  %126 = call i32 @kfree(%struct.brcmf_gscan_config* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %23
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.brcmf_pno_info* @ifp_to_pno(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_pno_prep_fwconfig(%struct.brcmf_pno_info*, %struct.brcmf_pno_config_le*, %struct.brcmf_gscan_config**, i32*) #1

declare dso_local %struct.brcmf_gscan_config* @kzalloc(i64, i32) #1

declare dso_local i32 @brcmf_pno_clean(%struct.brcmf_if*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @brcmf_pno_config(%struct.brcmf_if*, i32, i32, i32) #1

declare dso_local i32 @brcmf_pno_channel_config(%struct.brcmf_if*, %struct.brcmf_pno_config_le*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.brcmf_gscan_config*, i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_gscan_config*, i64) #1

declare dso_local i32 @brcmf_pno_set_random(%struct.brcmf_if*, %struct.brcmf_pno_info*) #1

declare dso_local i32 @brcmf_pno_config_networks(%struct.brcmf_if*, %struct.brcmf_pno_info*) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_gscan_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
