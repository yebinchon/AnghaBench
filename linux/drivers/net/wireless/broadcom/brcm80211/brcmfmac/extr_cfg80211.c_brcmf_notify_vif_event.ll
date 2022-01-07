; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_vif_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_vif_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_6__*, %struct.brcmf_cfg80211_vif*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.brcmf_cfg80211_vif = type { %struct.TYPE_5__, %struct.brcmf_if* }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { i32, %struct.brcmf_cfg80211_vif_event }
%struct.brcmf_cfg80211_vif_event = type { i32, i32, i32, %struct.brcmf_cfg80211_vif* }
%struct.brcmf_event_msg = type { i32 }
%struct.brcmf_if_event = type { i32, i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Enter: action %u flags %u ifidx %u bsscfgidx %u\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_event_msg*, i8*)* @brcmf_notify_vif_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_notify_vif_event(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_event_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_if_event*, align 8
  %10 = alloca %struct.brcmf_cfg80211_vif_event*, align 8
  %11 = alloca %struct.brcmf_cfg80211_vif*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %15, align 8
  store %struct.brcmf_cfg80211_info* %16, %struct.brcmf_cfg80211_info** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.brcmf_if_event*
  store %struct.brcmf_if_event* %18, %struct.brcmf_if_event** %9, align 8
  %19 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %19, i32 0, i32 1
  store %struct.brcmf_cfg80211_vif_event* %20, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %21 = load i32, i32* @TRACE, align 4
  %22 = load %struct.brcmf_if_event*, %struct.brcmf_if_event** %9, align 8
  %23 = getelementptr inbounds %struct.brcmf_if_event, %struct.brcmf_if_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.brcmf_if_event*, %struct.brcmf_if_event** %9, align 8
  %26 = getelementptr inbounds %struct.brcmf_if_event, %struct.brcmf_if_event* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.brcmf_if_event*, %struct.brcmf_if_event** %9, align 8
  %29 = getelementptr inbounds %struct.brcmf_if_event, %struct.brcmf_if_event* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.brcmf_if_event*, %struct.brcmf_if_event** %9, align 8
  %32 = getelementptr inbounds %struct.brcmf_if_event, %struct.brcmf_if_event* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @brcmf_dbg(i32 %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %36 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.brcmf_if_event*, %struct.brcmf_if_event** %9, align 8
  %39 = getelementptr inbounds %struct.brcmf_if_event, %struct.brcmf_if_event* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %44 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %43, i32 0, i32 3
  %45 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %44, align 8
  store %struct.brcmf_cfg80211_vif* %45, %struct.brcmf_cfg80211_vif** %11, align 8
  %46 = load %struct.brcmf_if_event*, %struct.brcmf_if_event** %9, align 8
  %47 = getelementptr inbounds %struct.brcmf_if_event, %struct.brcmf_if_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %119 [
    i32 130, label %49
    i32 128, label %100
    i32 129, label %112
  ]

49:                                               ; preds = %3
  %50 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %51 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %51, i32 0, i32 3
  %53 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %52, align 8
  %54 = icmp ne %struct.brcmf_cfg80211_vif* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %57 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* @EBADF, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %126

61:                                               ; preds = %49
  %62 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %63 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %64 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %63, i32 0, i32 1
  store %struct.brcmf_cfg80211_vif* %62, %struct.brcmf_cfg80211_vif** %64, align 8
  %65 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %66 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %67 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %66, i32 0, i32 1
  store %struct.brcmf_if* %65, %struct.brcmf_if** %67, align 8
  %68 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %69 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %61
  %73 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %74 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %77 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %80 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %79, i32 0, i32 0
  %81 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %82 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %84, align 8
  %85 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %86 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %89 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @wiphy_dev(i32 %90)
  %92 = call i32 @SET_NETDEV_DEV(%struct.TYPE_6__* %87, i32 %91)
  br label %93

93:                                               ; preds = %72, %61
  %94 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %95 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %98 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %97, i32 0, i32 2
  %99 = call i32 @wake_up(i32* %98)
  store i32 0, i32* %4, align 4
  br label %126

100:                                              ; preds = %3
  %101 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %102 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %101, i32 0, i32 1
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %105 = call i32 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %109 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %108, i32 0, i32 2
  %110 = call i32 @wake_up(i32* %109)
  br label %111

111:                                              ; preds = %107, %100
  store i32 0, i32* %4, align 4
  br label %126

112:                                              ; preds = %3
  %113 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %114 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %113, i32 0, i32 1
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %117 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %116, i32 0, i32 2
  %118 = call i32 @wake_up(i32* %117)
  store i32 0, i32* %4, align 4
  br label %126

119:                                              ; preds = %3
  %120 = load %struct.brcmf_cfg80211_vif_event*, %struct.brcmf_cfg80211_vif_event** %10, align 8
  %121 = getelementptr inbounds %struct.brcmf_cfg80211_vif_event, %struct.brcmf_cfg80211_vif_event* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %112, %111, %93, %55
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @wiphy_dev(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
