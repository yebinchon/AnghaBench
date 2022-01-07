; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmdresp.c_lbs_mac_event_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmdresp.c_lbs_mac_event_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i64, i32, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LBS_CONNECTED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@LBS_DISCONNECTED = common dso_local global i64 0, align 8
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"disconnected, so exit PS mode\0A\00", align 1
@PS_MODE_ACTION_EXIT_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_mac_event_disconnected(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LBS_CONNECTED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %63

12:                                               ; preds = %2
  %13 = call i32 @msleep_interruptible(i32 1000)
  %14 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @lbs_send_disconnect_notification(%struct.lbs_private* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %12
  %26 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netif_stop_queue(i32 %28)
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netif_carrier_off(i32 %32)
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 2
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree_skb(i32* %40)
  %42 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %43 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 2
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i64, i64* @LBS_DISCONNECTED, align 8
  %51 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %54 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %25
  %59 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %61 = load i32, i32* @PS_MODE_ACTION_EXIT_PS, align 4
  %62 = call i32 @lbs_set_ps_mode(%struct.lbs_private* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %11, %58, %25
  ret void
}

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @lbs_send_disconnect_notification(%struct.lbs_private*, i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lbs_deb_cmd(i8*) #1

declare dso_local i32 @lbs_set_ps_mode(%struct.lbs_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
