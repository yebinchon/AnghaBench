; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_stop_net_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_stop_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32 }
%struct.hso_net = type { i64, i64* }

@ENODEV = common dso_local global i32 0, align 4
@MUX_BULK_RX_BUF_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_device*)* @hso_stop_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_stop_net_device(%struct.hso_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hso_net*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %3, align 8
  %6 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  %7 = call %struct.hso_net* @dev2net(%struct.hso_device* %6)
  store %struct.hso_net* %7, %struct.hso_net** %5, align 8
  %8 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %9 = icmp ne %struct.hso_net* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MUX_BULK_RX_BUF_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %20 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %29 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @usb_kill_urb(i64 %34)
  br label %36

36:                                               ; preds = %27, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %42 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %47 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @usb_kill_urb(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.hso_net* @dev2net(%struct.hso_device*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
