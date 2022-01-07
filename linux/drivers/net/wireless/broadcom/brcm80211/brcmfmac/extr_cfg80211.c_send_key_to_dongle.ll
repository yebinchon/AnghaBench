; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_send_key_to_dongle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_send_key_to_dongle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_wsec_key = type { i32 }
%struct.brcmf_wsec_key_le = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"wsec_key\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"wsec_key error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_wsec_key*)* @send_key_to_dongle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_key_to_dongle(%struct.brcmf_if* %0, %struct.brcmf_wsec_key* %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.brcmf_wsec_key*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_wsec_key_le, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store %struct.brcmf_wsec_key* %1, %struct.brcmf_wsec_key** %4, align 8
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 0
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %5, align 8
  %11 = load %struct.brcmf_wsec_key*, %struct.brcmf_wsec_key** %4, align 8
  %12 = call i32 @convert_key_from_CPU(%struct.brcmf_wsec_key* %11, %struct.brcmf_wsec_key_le* %7)
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %14 = call i32 @brcmf_netdev_wait_pend8021x(%struct.brcmf_if* %13)
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %16 = call i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.brcmf_wsec_key_le* %7, i32 4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bphy_err(%struct.brcmf_pub* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @convert_key_from_CPU(%struct.brcmf_wsec_key*, %struct.brcmf_wsec_key_le*) #1

declare dso_local i32 @brcmf_netdev_wait_pend8021x(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_wsec_key_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
