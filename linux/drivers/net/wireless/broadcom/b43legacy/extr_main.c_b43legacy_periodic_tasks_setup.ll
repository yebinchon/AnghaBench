; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_periodic_tasks_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_periodic_tasks_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__*, i64, %struct.delayed_work }
%struct.TYPE_2__ = type { i32 }
%struct.delayed_work = type { i32 }

@b43legacy_periodic_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_periodic_tasks_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_periodic_tasks_setup(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.delayed_work*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %4, i32 0, i32 2
  store %struct.delayed_work* %5, %struct.delayed_work** %3, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %9 = load i32, i32* @b43legacy_periodic_work_handler, align 4
  %10 = call i32 @INIT_DELAYED_WORK(%struct.delayed_work* %8, i32 %9)
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %17 = call i32 @ieee80211_queue_delayed_work(i32 %15, %struct.delayed_work* %16, i32 0)
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(%struct.delayed_work*, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, %struct.delayed_work*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
