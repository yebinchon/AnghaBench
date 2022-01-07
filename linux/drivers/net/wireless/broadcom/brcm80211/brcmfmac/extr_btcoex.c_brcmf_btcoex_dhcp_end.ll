; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_dhcp_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_dhcp_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_btcoex_info = type { i32, i32, i64, i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"disable BT DHCP Timer\0A\00", align 1
@BRCMF_BT_DHCP_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"bt_state:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_btcoex_info*)* @brcmf_btcoex_dhcp_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_btcoex_dhcp_end(%struct.brcmf_btcoex_info* %0) #0 {
  %2 = alloca %struct.brcmf_btcoex_info*, align 8
  store %struct.brcmf_btcoex_info* %0, %struct.brcmf_btcoex_info** %2, align 8
  %3 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %4 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @INFO, align 4
  %11 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %13 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %15 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %14, i32 0, i32 4
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BRCMF_BT_DHCP_IDLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %9
  %23 = load i32, i32* @INFO, align 4
  %24 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %29 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %28, i32 0, i32 3
  %30 = call i32 @schedule_work(i32* %29)
  br label %31

31:                                               ; preds = %22, %9
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %34 = call i32 @brcmf_btcoex_restore_part1(%struct.brcmf_btcoex_info* %33)
  br label %35

35:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @brcmf_btcoex_restore_part1(%struct.brcmf_btcoex_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
