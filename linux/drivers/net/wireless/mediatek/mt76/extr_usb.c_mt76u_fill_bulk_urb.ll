; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_fill_bulk_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_fill_bulk_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.urb = type { i32, i8*, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, i32, i32, %struct.urb*, i32, i8*)* @mt76u_fill_bulk_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76u_fill_bulk_urb(%struct.mt76_dev* %0, i32 %1, i32 %2, %struct.urb* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.mt76_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.urb* %3, %struct.urb** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_device* @to_usb_device(i32 %17)
  store %struct.usb_device* %18, %struct.usb_device** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @USB_DIR_IN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %6
  %23 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %24 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %25 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %23, i32 %31)
  store i32 %32, i32* %14, align 4
  br label %44

33:                                               ; preds = %6
  %34 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %35 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_sndbulkpipe(%struct.usb_device* %34, i32 %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %33, %22
  %45 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %46 = load %struct.urb*, %struct.urb** %10, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 3
  store %struct.usb_device* %45, %struct.usb_device** %47, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.urb*, %struct.urb** %10, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.urb*, %struct.urb** %10, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.urb*, %struct.urb** %10, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  ret void
}

declare dso_local %struct.usb_device* @to_usb_device(i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
