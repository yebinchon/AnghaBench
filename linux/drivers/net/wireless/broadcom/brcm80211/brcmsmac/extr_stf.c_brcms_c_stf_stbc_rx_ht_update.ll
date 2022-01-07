; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_stbc_rx_ht_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_stbc_rx_ht_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@HT_CAP_RX_STBC_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i32)* @brcms_c_stf_stbc_rx_ht_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_stf_stbc_rx_ht_update(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %6 = call i64 @BRCMS_STF_SS_STBC_RX(%struct.brcms_c_info* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HT_CAP_RX_STBC_NO, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %33

20:                                               ; preds = %15, %8
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %30 = call i32 @brcms_c_update_beacon(%struct.brcms_c_info* %29)
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %32 = call i32 @brcms_c_update_probe_resp(%struct.brcms_c_info* %31, i32 1)
  br label %33

33:                                               ; preds = %19, %28, %21
  ret void
}

declare dso_local i64 @BRCMS_STF_SS_STBC_RX(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_update_beacon(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_update_probe_resp(%struct.brcms_c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
