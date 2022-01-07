; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_mac_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_mac_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32 }

@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@MCTL_PROMISC = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@MCTL_BCNS_PROMISC = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@MCTL_KEEPBADFCS = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@MCTL_KEEPCONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_mac_promisc(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FIF_OTHER_BSS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MCTL_PROMISC, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @MCTL_BCNS_PROMISC, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FIF_FCSFAIL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @MCTL_KEEPBADFCS, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FIF_CONTROL, align 4
  %38 = load i32, i32* @FIF_PSPOLL, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @MCTL_KEEPCONTROL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MCTL_PROMISC, align 4
  %51 = load i32, i32* @MCTL_BCNS_PROMISC, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MCTL_KEEPCONTROL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MCTL_KEEPBADFCS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @brcms_b_mctrl(i32 %49, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @brcms_b_mctrl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
