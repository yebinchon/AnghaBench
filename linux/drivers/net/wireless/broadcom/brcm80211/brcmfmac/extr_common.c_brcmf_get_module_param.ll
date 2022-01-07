; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_get_module_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_get_module_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.brcmfmac_pd_device* }
%struct.brcmfmac_pd_device = type { i32, i64, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.brcmf_mp_device = type { i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.device = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Enter, bus=%d, chip=%d, rev=%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@brcmf_p2p_enable = common dso_local global i32 0, align 4
@brcmf_feature_disable = common dso_local global i32 0, align 4
@brcmf_fcmode = common dso_local global i32 0, align 4
@brcmf_roamoff = common dso_local global i32 0, align 4
@brcmf_iapp_enable = common dso_local global i32 0, align 4
@BRCMF_BUSTYPE_SDIO = common dso_local global i32 0, align 4
@brcmf_sdiod_txglomsz = common dso_local global i32 0, align 4
@brcmfmac_pdata = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Platform data for device found\0A\00", align 1
@brcmf_ignore_probe_fail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcmf_mp_device* @brcmf_get_module_param(%struct.device* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.brcmf_mp_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brcmf_mp_device*, align 8
  %11 = alloca %struct.brcmfmac_pd_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @INFO, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16, i64 %17)
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.brcmf_mp_device* @kzalloc(i32 32, i32 %19)
  store %struct.brcmf_mp_device* %20, %struct.brcmf_mp_device** %10, align 8
  %21 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %22 = icmp ne %struct.brcmf_mp_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.brcmf_mp_device* null, %struct.brcmf_mp_device** %5, align 8
  br label %141

24:                                               ; preds = %4
  %25 = load i32, i32* @brcmf_p2p_enable, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %31 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @brcmf_feature_disable, align 4
  %33 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %34 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @brcmf_fcmode, align 4
  %36 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %37 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @brcmf_roamoff, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %44 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @brcmf_iapp_enable, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %51 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BRCMF_BUSTYPE_SDIO, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %24
  %56 = load i32, i32* @brcmf_sdiod_txglomsz, align 4
  %57 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %58 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %24
  store i32 0, i32* %12, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @brcmfmac_pdata, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %127

64:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %123, %64
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @brcmfmac_pdata, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @brcmfmac_pdata, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %74, i64 %76
  store %struct.brcmfmac_pd_device* %77, %struct.brcmfmac_pd_device** %11, align 8
  %78 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %11, align 8
  %79 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %71
  %84 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %11, align 8
  %85 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %83
  %90 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %11, align 8
  %91 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %11, align 8
  %97 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, -1
  br i1 %99, label %100, label %122

100:                                              ; preds = %95, %89
  %101 = load i32, i32* @INFO, align 4
  %102 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %11, align 8
  %104 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %107 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %11, align 8
  %109 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BRCMF_BUSTYPE_SDIO, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %100
  %114 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %115 = getelementptr inbounds %struct.brcmf_mp_device, %struct.brcmf_mp_device* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.brcmfmac_pd_device*, %struct.brcmfmac_pd_device** %11, align 8
  %118 = getelementptr inbounds %struct.brcmfmac_pd_device, %struct.brcmfmac_pd_device* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = call i32 @memcpy(%struct.TYPE_7__* %116, i32* %119, i32 4)
  br label %121

121:                                              ; preds = %113, %100
  store i32 1, i32* %12, align 4
  br label %126

122:                                              ; preds = %95, %83, %71
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %65

126:                                              ; preds = %121, %65
  br label %127

127:                                              ; preds = %126, %61
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @brcmf_dmi_probe(%struct.brcmf_mp_device* %131, i64 %132, i64 %133)
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  %138 = call i32 @brcmf_of_probe(%struct.device* %135, i32 %136, %struct.brcmf_mp_device* %137)
  br label %139

139:                                              ; preds = %130, %127
  %140 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %10, align 8
  store %struct.brcmf_mp_device* %140, %struct.brcmf_mp_device** %5, align 8
  br label %141

141:                                              ; preds = %139, %23
  %142 = load %struct.brcmf_mp_device*, %struct.brcmf_mp_device** %5, align 8
  ret %struct.brcmf_mp_device* %142
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local %struct.brcmf_mp_device* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @brcmf_dmi_probe(%struct.brcmf_mp_device*, i64, i64) #1

declare dso_local i32 @brcmf_of_probe(%struct.device*, i32, %struct.brcmf_mp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
