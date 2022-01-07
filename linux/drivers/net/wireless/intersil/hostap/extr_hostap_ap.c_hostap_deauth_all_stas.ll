; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_deauth_all_stas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_deauth_all_stas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ap_data = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Deauthenticate all stations\0A\00", align 1
@WLAN_REASON_PREV_AUTH_NOT_VALID = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostap_deauth_all_stas(%struct.net_device* %0, %struct.ap_data* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ap_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ap_data* %1, %struct.ap_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @DEBUG_AP, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PDEBUG(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @eth_broadcast_addr(i32* %15)
  %22 = load i32, i32* @WLAN_REASON_PREV_AUTH_NOT_VALID, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %44, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %30 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %31 = or i32 %29, %30
  %32 = bitcast i32* %9 to i8*
  %33 = call i32 @prism2_send_mgmt(%struct.net_device* %28, i32 %31, i8* %32, i32 2, i32* %15, i32 0)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.ap_data*, %struct.ap_data** %5, align 8
  %38 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %27
  store i32 1, i32* %11, align 4
  br label %48

42:                                               ; preds = %36
  %43 = call i32 @mdelay(i32 50)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %24

47:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %11, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %48, %48
  ret void

52:                                               ; preds = %48
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #2

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @prism2_send_mgmt(%struct.net_device*, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @mdelay(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
