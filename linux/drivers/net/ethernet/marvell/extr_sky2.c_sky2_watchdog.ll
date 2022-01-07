; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i32, i32, i32, %struct.net_device**, i32 }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@watchdog_timer = common dso_local global i32 0, align 4
@B0_ISRC = common dso_local global i32 0, align 4
@SKY2_HW_RAM_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"receiver hang detected\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@hw = common dso_local global %struct.sky2_hw* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sky2_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %8 = ptrtoint %struct.sky2_hw* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @watchdog_timer, align 4
  %11 = call %struct.sky2_hw* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.sky2_hw* %11, %struct.sky2_hw** %3, align 8
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %13 = load i32, i32* @B0_ISRC, align 4
  %14 = call i64 @sky2_read32(%struct.sky2_hw* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %18 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %17, i32 0, i32 5
  %19 = call i32 @napi_schedule(i32* %18)
  br label %67

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %24 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %29 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %28, i32 0, i32 4
  %30 = load %struct.net_device**, %struct.net_device*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.net_device*, %struct.net_device** %30, i64 %32
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %6, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 @netif_running(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %59

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %43 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SKY2_HW_RAM_BUFFER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call i64 @sky2_rx_hung(%struct.net_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @netdev_info(%struct.net_device* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %56 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %55, i32 0, i32 3
  %57 = call i32 @schedule_work(i32* %56)
  br label %75

58:                                               ; preds = %48, %39
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %21

62:                                               ; preds = %21
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %75

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %16
  %68 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %69 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %68, i32 0, i32 2
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* @HZ, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @round_jiffies(i64 %72)
  %74 = call i32 @mod_timer(i32* %69, i32 %73)
  br label %75

75:                                               ; preds = %67, %65, %52
  ret void
}

declare dso_local %struct.sky2_hw* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @sky2_rx_hung(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
