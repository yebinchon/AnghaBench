; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_phyerr_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_phyerr_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_phyerr_ev_arg = type { i32, i32, i8**, i32, i8*, i32, i32, i8*, i8*, i8* }
%struct.wmi_phyerr = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"wrong phyerr event head len %d (need: >=%zd)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PHY_ERROR_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@PHY_ERROR_FALSE_RADAR_EXT = common dso_local global i32 0, align 4
@PHY_ERROR_RADAR = common dso_local global i32 0, align 4
@PHY_ERROR_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_op_pull_phyerr_ev(%struct.ath10k* %0, i8* %1, i32 %2, %struct.wmi_phyerr_ev_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wmi_phyerr_ev_arg*, align 8
  %10 = alloca %struct.wmi_phyerr*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wmi_phyerr_ev_arg* %3, %struct.wmi_phyerr_ev_arg** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.wmi_phyerr*
  store %struct.wmi_phyerr* %13, %struct.wmi_phyerr** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 48
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ath10k_warn(%struct.ath10k* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19, i32 48)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %107

23:                                               ; preds = %4
  %24 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %25 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @__le32_to_cpu(i32 %26)
  %28 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %29 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %31 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @__le16_to_cpu(i32 %32)
  %34 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %35 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %37 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @__le16_to_cpu(i32 %38)
  %40 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %41 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %43 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %46 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %48 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %51 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %53 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @__le32_to_cpu(i32 %54)
  %56 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %57 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %59 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %62 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %64 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %63, i32 0, i32 0
  store i32 48, i32* %64, align 8
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %83, %23
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %70 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @__le16_to_cpu(i32 %75)
  %77 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %78 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load %struct.wmi_phyerr*, %struct.wmi_phyerr** %10, align 8
  %88 = getelementptr inbounds %struct.wmi_phyerr, %struct.wmi_phyerr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %102 [
    i32 128, label %90
    i32 130, label %94
    i32 129, label %98
  ]

90:                                               ; preds = %86
  %91 = load i32, i32* @PHY_ERROR_SPECTRAL_SCAN, align 4
  %92 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %93 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %106

94:                                               ; preds = %86
  %95 = load i32, i32* @PHY_ERROR_FALSE_RADAR_EXT, align 4
  %96 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %97 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %106

98:                                               ; preds = %86
  %99 = load i32, i32* @PHY_ERROR_RADAR, align 4
  %100 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %101 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %106

102:                                              ; preds = %86
  %103 = load i32, i32* @PHY_ERROR_UNKNOWN, align 4
  %104 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %9, align 8
  %105 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %98, %94, %90
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %17
  %108 = load i32, i32* %5, align 4
  ret i32 %108
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
