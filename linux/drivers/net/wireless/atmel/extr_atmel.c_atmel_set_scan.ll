; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_set_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.atmel_private = type { i64, i64, i32, i64, i32, i64 }

@STATION_STATE_DOWN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SITE_SURVEY_IDLE = common dso_local global i64 0, align 8
@SITE_SURVEY_IN_PROGRESS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_set_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_scan(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %12)
  store %struct.atmel_private* %13, %struct.atmel_private** %10, align 8
  %14 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %15 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATION_STATE_DOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %68

22:                                               ; preds = %4
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %25 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 20, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i64 @time_after(i64 %23, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i64, i64* @SITE_SURVEY_IDLE, align 8
  %35 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %36 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %42 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SITE_SURVEY_IN_PROGRESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %68

49:                                               ; preds = %37
  %50 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %51 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %50, i32 0, i32 4
  %52 = call i32 @del_timer_sync(i32* %51)
  %53 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %54 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %53, i32 0, i32 2
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load i64, i64* @SITE_SURVEY_IN_PROGRESS, align 8
  %58 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %59 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %61 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %63 = call i32 @atmel_scan(%struct.atmel_private* %62, i32 0)
  %64 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %65 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %64, i32 0, i32 2
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %49, %46, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atmel_scan(%struct.atmel_private*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
