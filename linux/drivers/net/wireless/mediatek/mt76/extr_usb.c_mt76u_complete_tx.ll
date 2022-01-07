; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_complete_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_complete_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.mt76_queue_entry*, %struct.TYPE_2__* }
%struct.mt76_queue_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mt76_dev = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"tx urb failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mt76u_complete_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76u_complete_tx(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue_entry*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call %struct.mt76_dev* @dev_get_drvdata(i32* %8)
  store %struct.mt76_dev* %9, %struct.mt76_dev** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 1
  %12 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %11, align 8
  store %struct.mt76_queue_entry* %12, %struct.mt76_queue_entry** %4, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = call i64 @mt76u_urb_error(%struct.urb* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %4, align 8
  %26 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %27, i32 0, i32 0
  %29 = call i32 @tasklet_schedule(i32* %28)
  ret void
}

declare dso_local %struct.mt76_dev* @dev_get_drvdata(i32*) #1

declare dso_local i64 @mt76u_urb_error(%struct.urb*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
