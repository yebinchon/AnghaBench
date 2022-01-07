; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_next_transid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_next_transid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvaser_usb_dev_card_data_hydra }
%struct.kvaser_usb_dev_card_data_hydra = type { i64, i32 }

@KVASER_USB_HYDRA_MAX_TRANSID = common dso_local global i64 0, align 8
@KVASER_USB_HYDRA_MIN_TRANSID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvaser_usb*)* @kvaser_usb_hydra_get_next_transid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb* %0) #0 {
  %2 = alloca %struct.kvaser_usb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvaser_usb_dev_card_data_hydra*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %2, align 8
  %6 = load %struct.kvaser_usb*, %struct.kvaser_usb** %2, align 8
  %7 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.kvaser_usb_dev_card_data_hydra* %8, %struct.kvaser_usb_dev_card_data_hydra** %5, align 8
  %9 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %5, align 8
  %10 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %9, i32 0, i32 1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %5, align 8
  %14 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @KVASER_USB_HYDRA_MAX_TRANSID, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @KVASER_USB_HYDRA_MIN_TRANSID, align 8
  store i64 %20, i64* %4, align 8
  br label %24

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %5, align 8
  %27 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %5, align 8
  %29 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %28, i32 0, i32 1
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
