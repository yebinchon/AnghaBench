; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_htcap_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_set_htcap_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.ath6kl_htcap = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_set_htcap_cmd = type { i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_40MHZ_INTOLERANT = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"Set htcap: band:%d ht_enable:%d 40mhz:%d sgi_20mhz:%d sgi_40mhz:%d 40mhz_intolerant:%d ampdu_len_exp:%d\0A\00", align 1
@WMI_SET_HT_CAP_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_set_htcap_cmd(%struct.wmi* %0, i32 %1, i32 %2, %struct.ath6kl_htcap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_htcap*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wmi_set_htcap_cmd*, align 8
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ath6kl_htcap* %3, %struct.ath6kl_htcap** %9, align 8
  %12 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 28)
  store %struct.sk_buff* %12, %struct.sk_buff** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %113

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.wmi_set_htcap_cmd*
  store %struct.wmi_set_htcap_cmd* %22, %struct.wmi_set_htcap_cmd** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %25 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %9, align 8
  %27 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %34 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %9, align 8
  %36 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %45 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %9, align 8
  %47 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %56 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %9, align 8
  %58 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %67 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %9, align 8
  %69 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_HT_CAP_40MHZ_INTOLERANT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %78 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ath6kl_htcap*, %struct.ath6kl_htcap** %9, align 8
  %80 = getelementptr inbounds %struct.ath6kl_htcap, %struct.ath6kl_htcap* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %83 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %85 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %86 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %89 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %92 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %95 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %98 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %101 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.wmi_set_htcap_cmd*, %struct.wmi_set_htcap_cmd** %11, align 8
  %104 = getelementptr inbounds %struct.wmi_set_htcap_cmd, %struct.wmi_set_htcap_cmd* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ath6kl_dbg(i32 %84, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.wmi*, %struct.wmi** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = load i32, i32* @WMI_SET_HT_CAP_CMDID, align 4
  %111 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %112 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %107, i32 %108, %struct.sk_buff* %109, i32 %110, i32 %111)
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %18, %15
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
