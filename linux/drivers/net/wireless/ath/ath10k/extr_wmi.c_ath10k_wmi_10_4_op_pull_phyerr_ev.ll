; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_phyerr_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_phyerr_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_phyerr_ev_arg = type { i32, i32, i8**, i32, i8*, i32, i32, i8*, i8*, i8* }
%struct.wmi_10_4_phyerr_event = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"wrong phyerr event head len %d (need: >=%zd)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PHY_ERROR_10_4_SPECTRAL_SCAN_MASK = common dso_local global i32 0, align 4
@PHY_ERROR_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@PHY_ERROR_10_4_RADAR_MASK = common dso_local global i32 0, align 4
@PHY_ERROR_RADAR = common dso_local global i32 0, align 4
@PHY_ERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*)* @ath10k_wmi_10_4_op_pull_phyerr_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10_4_op_pull_phyerr_ev(%struct.ath10k* %0, i8* %1, i32 %2, %struct.wmi_phyerr_ev_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_phyerr_ev_arg*, align 8
  %10 = alloca %struct.wmi_10_4_phyerr_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wmi_phyerr_ev_arg* %3, %struct.wmi_phyerr_ev_arg** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.wmi_10_4_phyerr_event*
  store %struct.wmi_10_4_phyerr_event* %14, %struct.wmi_10_4_phyerr_event** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 48
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ath10k_warn(%struct.ath10k* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20, i32 48)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %118

24:                                               ; preds = %4
  %25 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %26 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @__le32_to_cpu(i32 %27)
  %29 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %30 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %32 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @__le16_to_cpu(i32 %33)
  %35 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %36 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %38 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @__le16_to_cpu(i32 %39)
  %41 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %42 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %44 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %47 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %49 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %52 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %54 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @__le32_to_cpu(i32 %55)
  %57 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %58 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %60 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %63 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %65 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %64, i32 0, i32 0
  store i32 48, i32* %65, align 8
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %84, %24
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %71 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @__le16_to_cpu(i32 %76)
  %78 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %79 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %77, i8** %83, align 8
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %66

87:                                               ; preds = %66
  %88 = load %struct.wmi_10_4_phyerr_event*, %struct.wmi_10_4_phyerr_event** %10, align 8
  %89 = getelementptr inbounds %struct.wmi_10_4_phyerr_event, %struct.wmi_10_4_phyerr_event* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @__le32_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @PHY_ERROR_10_4_SPECTRAL_SCAN_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = load i32, i32* @PHY_ERROR_SPECTRAL_SCAN, align 4
  %101 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %102 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %117

103:                                              ; preds = %87
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @PHY_ERROR_10_4_RADAR_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @PHY_ERROR_RADAR, align 4
  %110 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %111 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %116

112:                                              ; preds = %103
  %113 = load i32, i32* @PHY_ERROR_UNKNOWN, align 4
  %114 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %115 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %99
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %18
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
