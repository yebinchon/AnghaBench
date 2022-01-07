; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_wait_pend8021x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_wait_pend8021x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@MAX_WAIT_FOR_8021X_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Timed out waiting for no pending 802.1x packets\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_netdev_wait_pend8021x(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %5 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %5, i32 0, i32 1
  %7 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  store %struct.brcmf_pub* %7, %struct.brcmf_pub** %3, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %12 = call i32 @brcmf_get_pend_8021x_cnt(%struct.brcmf_if* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @MAX_WAIT_FOR_8021X_TX, align 4
  %17 = call i32 @wait_event_timeout(i32 %10, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %22 = call i32 @bphy_err(%struct.brcmf_pub* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @brcmf_get_pend_8021x_cnt(%struct.brcmf_if*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
