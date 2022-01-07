; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_spectral_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_spectral_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_phyerr_ev_arg = type { i32, i32* }
%struct.phyerr_tlv = type { i32, i32 }
%struct.phyerr_fft_report = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"failed to parse phyerr tlv header at byte %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to parse phyerr tlv payload at byte %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to parse fft report at byte %d\0A\00", align 1
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to process fft report: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_spectral_scan(%struct.ath10k* %0, %struct.wmi_phyerr_ev_arg* %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_phyerr_ev_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.phyerr_tlv*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.phyerr_fft_report*, align 8
  %14 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_phyerr_ev_arg* %1, %struct.wmi_phyerr_ev_arg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %16 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %98, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ath10k_warn(%struct.ath10k* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %106

33:                                               ; preds = %22
  %34 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %35 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = bitcast i32* %39 to %struct.phyerr_tlv*
  store %struct.phyerr_tlv* %40, %struct.phyerr_tlv** %11, align 8
  %41 = load %struct.phyerr_tlv*, %struct.phyerr_tlv** %11, align 8
  %42 = getelementptr inbounds %struct.phyerr_tlv, %struct.phyerr_tlv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__le16_to_cpu(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %46 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = bitcast i32* %51 to i8*
  store i8* %52, i8** %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %55, %57
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %33
  %63 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @ath10k_warn(%struct.ath10k* %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %106

66:                                               ; preds = %33
  %67 = load %struct.phyerr_tlv*, %struct.phyerr_tlv** %11, align 8
  %68 = getelementptr inbounds %struct.phyerr_tlv, %struct.phyerr_tlv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %98 [
    i32 128, label %70
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 4, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ath10k_warn(%struct.ath10k* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %106

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 4
  store i64 %81, i64* %14, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = bitcast i8* %82 to %struct.phyerr_fft_report*
  store %struct.phyerr_fft_report* %83, %struct.phyerr_fft_report** %13, align 8
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %86 = load %struct.phyerr_fft_report*, %struct.phyerr_fft_report** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ath10k_spectral_process_fft(%struct.ath10k* %84, %struct.wmi_phyerr_ev_arg* %85, %struct.phyerr_fft_report* %86, i64 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %94 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ath10k_dbg(%struct.ath10k* %93, i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %106

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %66, %97
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 8, %100
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %10, align 4
  br label %18

106:                                              ; preds = %29, %62, %74, %92, %18
  ret void
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_spectral_process_fft(%struct.ath10k*, %struct.wmi_phyerr_ev_arg*, %struct.phyerr_fft_report*, i64, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
