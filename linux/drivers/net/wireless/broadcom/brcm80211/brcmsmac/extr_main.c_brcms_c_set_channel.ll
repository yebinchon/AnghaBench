; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@MAXCHANNEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_set_channel(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @ch20mhz_chspec(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAXCHANNEL, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %88

18:                                               ; preds = %11
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %20 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @brcms_c_valid_chanspec_db(i32 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %88

28:                                               ; preds = %18
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %30 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %37 = call i64 @brcms_is_mband_unlocked(%struct.brcms_c_info* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %41 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @chspec_bandunit(i64 %45)
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %50 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %53 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %35, %28
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  %61 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %62 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %55
  %68 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %69 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @wlc_phy_chanspec_get(i32 %72)
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @brcms_c_set_home_chanspec(%struct.brcms_c_info* %77, i64 %78)
  %80 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %81 = call i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info* %80)
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @brcms_c_set_chanspec(%struct.brcms_c_info* %82, i64 %83)
  %85 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %86 = call i32 @brcms_c_enable_mac(%struct.brcms_c_info* %85)
  br label %87

87:                                               ; preds = %76, %67, %55
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %25, %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @ch20mhz_chspec(i64) #1

declare dso_local i32 @brcms_c_valid_chanspec_db(i32, i64) #1

declare dso_local i64 @brcms_is_mband_unlocked(%struct.brcms_c_info*) #1

declare dso_local i64 @chspec_bandunit(i64) #1

declare dso_local i64 @wlc_phy_chanspec_get(i32) #1

declare dso_local i32 @brcms_c_set_home_chanspec(%struct.brcms_c_info*, i64) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_set_chanspec(%struct.brcms_c_info*, i64) #1

declare dso_local i32 @brcms_c_enable_mac(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
