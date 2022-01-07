; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_ap_probe_resp_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_ap_probe_resp_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_FRAME_PROBE_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, i32*, i64)* @ath6kl_set_ap_probe_resp_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_ap_probe_resp_ies(%struct.ath6kl_vif* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %13, i32 0, i32 1
  %15 = load %struct.ath6kl*, %struct.ath6kl** %14, align 8
  store %struct.ath6kl* %15, %struct.ath6kl** %8, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %82

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc(i64 %22, i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %96

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  store i32* %31, i32** %9, align 8
  br label %32

32:                                               ; preds = %73, %30
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = icmp ult i32* %34, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %32
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = icmp ugt i32* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %81

52:                                               ; preds = %39
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @ath6kl_is_p2p_ie(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 2, %63
  %65 = call i32 @memcpy(i32* %59, i32* %60, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 2, %68
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %56, %52
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 2, %76
  %78 = load i32*, i32** %9, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %9, align 8
  br label %32

81:                                               ; preds = %51, %32
  br label %82

82:                                               ; preds = %81, %18, %3
  %83 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %84 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %87 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WMI_FRAME_PROBE_RESP, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @ath6kl_wmi_set_appie_cmd(i32 %85, i32 %88, i32 %89, i32* %90, i64 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %82, %27
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @ath6kl_is_p2p_ie(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_set_appie_cmd(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
