; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_controller_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_controller_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Controller RESET (%s) ...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_controller_restart(%struct.b43_wldev* %0, i8* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i8*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = call i64 @b43_status(%struct.b43_wldev* %5)
  %7 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @b43info(%struct.TYPE_2__* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 0
  %23 = call i32 @ieee80211_queue_work(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43info(%struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
