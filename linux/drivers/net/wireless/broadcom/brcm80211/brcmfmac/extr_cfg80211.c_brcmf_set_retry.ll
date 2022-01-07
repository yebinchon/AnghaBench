; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@BRCMF_C_SET_LRL = common dso_local global i32 0, align 4
@BRCMF_C_SET_SRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cmd (%d) , error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i32, i32)* @brcmf_set_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_set_retry(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcmf_if*, align 8
  %9 = alloca %struct.brcmf_pub*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %12)
  store %struct.brcmf_if* %13, %struct.brcmf_if** %8, align 8
  %14 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %15 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %14, i32 0, i32 0
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %15, align 8
  store %struct.brcmf_pub* %16, %struct.brcmf_pub** %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @BRCMF_C_SET_LRL, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @BRCMF_C_SET_SRL, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %25, i32 %26, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @bphy_err(%struct.brcmf_pub* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %34)
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %4, align 8
  br label %39

37:                                               ; preds = %23
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
