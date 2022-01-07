; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_hb_challenge_resp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_hb_challenge_resp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.wmix_hb_challenge_resp_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi*, i32*, i32)* @ath6kl_wmi_hb_challenge_resp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_wmi_hb_challenge_resp_event(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmix_hb_challenge_resp_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %23

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.wmix_hb_challenge_resp_cmd*
  store %struct.wmix_hb_challenge_resp_cmd* %14, %struct.wmix_hb_challenge_resp_cmd** %7, align 8
  %15 = load %struct.wmi*, %struct.wmi** %4, align 8
  %16 = getelementptr inbounds %struct.wmi, %struct.wmi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wmix_hb_challenge_resp_cmd*, %struct.wmix_hb_challenge_resp_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.wmix_hb_challenge_resp_cmd, %struct.wmix_hb_challenge_resp_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = call i32 @ath6kl_recovery_hb_event(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @ath6kl_recovery_hb_event(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
