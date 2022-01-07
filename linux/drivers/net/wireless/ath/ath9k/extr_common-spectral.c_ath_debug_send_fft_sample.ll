; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath_debug_send_fft_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath_debug_send_fft_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_spec_scan_priv = type { i32 }
%struct.fft_sample_tlv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_spec_scan_priv*, %struct.fft_sample_tlv*)* @ath_debug_send_fft_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_debug_send_fft_sample(%struct.ath_spec_scan_priv* %0, %struct.fft_sample_tlv* %1) #0 {
  %3 = alloca %struct.ath_spec_scan_priv*, align 8
  %4 = alloca %struct.fft_sample_tlv*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_spec_scan_priv* %0, %struct.ath_spec_scan_priv** %3, align 8
  store %struct.fft_sample_tlv* %1, %struct.fft_sample_tlv** %4, align 8
  %6 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.fft_sample_tlv*, %struct.fft_sample_tlv** %4, align 8
  %13 = getelementptr inbounds %struct.fft_sample_tlv, %struct.fft_sample_tlv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__be16_to_cpu(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fft_sample_tlv*, %struct.fft_sample_tlv** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @relay_write(i32 %21, %struct.fft_sample_tlv* %22, i32 %23)
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @__be16_to_cpu(i32) #1

declare dso_local i32 @relay_write(i32, %struct.fft_sample_tlv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
