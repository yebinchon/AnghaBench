; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_device_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @bpq_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = call i32 @dev_net(%struct.net_device* %11)
  %13 = call i32 @net_eq(i32 %12, i32* @init_net)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call i32 @dev_is_ethdev(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  switch i64 %24, label %49 [
    i64 128, label %25
    i64 130, label %33
    i64 129, label %41
  ]

25:                                               ; preds = %23
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %26)
  %28 = icmp eq %struct.net_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call i32 @bpq_new_device(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %50

33:                                               ; preds = %23
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %34)
  store %struct.net_device* %35, %struct.net_device** %8, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = call i32 @dev_close(%struct.net_device* %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %50

41:                                               ; preds = %23
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = call %struct.net_device* @bpq_get_ax25_dev(%struct.net_device* %42)
  store %struct.net_device* %43, %struct.net_device** %8, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call i32 @bpq_free_device(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %50

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %48, %40, %32
  %51 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %21, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_is_ethdev(%struct.net_device*) #1

declare dso_local %struct.net_device* @bpq_get_ax25_dev(%struct.net_device*) #1

declare dso_local i32 @bpq_new_device(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @bpq_free_device(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
