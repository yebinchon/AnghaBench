; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.atusb* }
%struct.atusb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i32, i32)* @atusb_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atusb_channel(%struct.ieee802154_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atusb*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %9, i32 0, i32 0
  %11 = load %struct.atusb*, %struct.atusb** %10, align 8
  store %struct.atusb* %11, %struct.atusb** %7, align 8
  %12 = load i32, i32* @ENOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.atusb*, %struct.atusb** %7, align 8
  %15 = getelementptr inbounds %struct.atusb, %struct.atusb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.atusb*, %struct.atusb** %7, align 8
  %20 = getelementptr inbounds %struct.atusb, %struct.atusb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.ieee802154_hw*, i32, i32)**
  %24 = load i32 (%struct.ieee802154_hw*, i32, i32)*, i32 (%struct.ieee802154_hw*, i32, i32)** %23, align 8
  %25 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 %24(%struct.ieee802154_hw* %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.atusb*, %struct.atusb** %7, align 8
  %30 = getelementptr inbounds %struct.atusb, %struct.atusb* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @msleep(i32 %33)
  br label %35

35:                                               ; preds = %18, %3
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
