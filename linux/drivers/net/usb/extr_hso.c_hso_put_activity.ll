; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_put_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_put_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_device*)* @hso_put_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_put_activity(%struct.hso_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_device*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %3, align 8
  %4 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %5 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %13 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %18 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %20 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %19, i32 0, i32 1
  %21 = call i32 @schedule_work(i32* %20)
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %27 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
