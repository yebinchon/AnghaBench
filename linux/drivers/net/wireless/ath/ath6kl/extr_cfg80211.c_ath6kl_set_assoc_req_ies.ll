; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_assoc_req_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_assoc_req_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32, i32 }

@CONNECT_WPS_FLAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_FRAME_ASSOC_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, i32*, i64)* @ath6kl_set_assoc_req_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_assoc_req_ies(%struct.ath6kl_vif* %0, i32* %1, i64 %2) #0 {
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
  %16 = load i32, i32* @CONNECT_WPS_FLAG, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %102

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %102

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc(i64 %28, i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %116

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  store i32* %37, i32** %9, align 8
  br label %38

38:                                               ; preds = %93, %36
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = icmp ult i32* %40, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %38
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = icmp ugt i32* %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %101

58:                                               ; preds = %45
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @ath6kl_is_wpa_ie(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %58
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @ath6kl_is_rsn_ie(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 2, %73
  %75 = call i32 @memcpy(i32* %69, i32* %70, i32 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %66, %62, %58
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @ath6kl_is_wps_ie(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* @CONNECT_WPS_FLAG, align 4
  %89 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %90 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %83
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 2, %96
  %98 = load i32*, i32** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %9, align 8
  br label %38

101:                                              ; preds = %57, %38
  br label %102

102:                                              ; preds = %101, %24, %3
  %103 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %104 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %107 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @WMI_FRAME_ASSOC_REQ, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @ath6kl_wmi_set_appie_cmd(i32 %105, i32 %108, i32 %109, i32* %110, i64 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @kfree(i32* %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %102, %33
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @ath6kl_is_wpa_ie(i32*) #1

declare dso_local i64 @ath6kl_is_rsn_ie(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ath6kl_is_wps_ie(i32*) #1

declare dso_local i32 @ath6kl_wmi_set_appie_cmd(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
