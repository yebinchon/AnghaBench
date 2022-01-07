; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_dongle_roam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_dongle_roam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_OFF = common dso_local global i64 0, align 8
@BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"bcn_timeout\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"bcn_timeout error (%d)\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Internal Roaming = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"roam_off\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"roam_off error (%d)\0A\00", align 1
@WL_ROAM_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@BRCMF_C_SET_ROAM_TRIGGER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"WLC_SET_ROAM_TRIGGER error (%d)\0A\00", align 1
@WL_ROAM_DELTA = common dso_local global i32 0, align 4
@BRCMF_C_SET_ROAM_DELTA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"WLC_SET_ROAM_DELTA error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_if*)* @brcmf_dongle_roam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_dongle_roam(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 0
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %3, align 8
  %11 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %12 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %11, i32 0, i32 0
  %13 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  %14 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_OFF, align 8
  store i64 %20, i64* %5, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @BRCMF_DEFAULT_BCN_TIMEOUT_ROAM_ON, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @bphy_err(%struct.brcmf_pub* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %98

33:                                               ; preds = %23
  %34 = load i32, i32* @INFO, align 4
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %36 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %35, i32 0, i32 0
  %37 = load %struct.brcmf_pub*, %struct.brcmf_pub** %36, align 8
  %38 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %45 = call i32 @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %47 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %48 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %47, i32 0, i32 0
  %49 = load %struct.brcmf_pub*, %struct.brcmf_pub** %48, align 8
  %50 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %53)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %33
  %58 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @bphy_err(%struct.brcmf_pub* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %59)
  br label %98

61:                                               ; preds = %33
  %62 = load i32, i32* @WL_ROAM_TRIGGER_LEVEL, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @BRCM_BAND_ALL, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %69 = load i32, i32* @BRCMF_C_SET_ROAM_TRIGGER, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %71 = bitcast i32* %70 to i8*
  %72 = call i64 @brcmf_fil_cmd_data_set(%struct.brcmf_if* %68, i32 %69, i8* %71, i32 8)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @bphy_err(%struct.brcmf_pub* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  br label %98

79:                                               ; preds = %61
  %80 = load i32, i32* @WL_ROAM_DELTA, align 4
  %81 = call i32 @cpu_to_le32(i32 %80)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @BRCM_BAND_ALL, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %87 = load i32, i32* @BRCMF_C_SET_ROAM_DELTA, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = bitcast i32* %88 to i8*
  %90 = call i64 @brcmf_fil_cmd_data_set(%struct.brcmf_if* %86, i32 %87, i8* %89, i32 8)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @bphy_err(%struct.brcmf_pub* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %95)
  br label %98

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %93, %75, %57, %29
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i64) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @brcmf_fil_cmd_data_set(%struct.brcmf_if*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
