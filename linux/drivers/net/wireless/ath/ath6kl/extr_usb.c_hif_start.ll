; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_hif_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_hif_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_usb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ATH6KL_USB_PIPE_TX_CTRL = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_TX_DATA_HP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl*)* @hif_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hif_start(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca %struct.ath6kl_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %5 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %6 = call %struct.ath6kl_usb* @ath6kl_usb_priv(%struct.ath6kl* %5)
  store %struct.ath6kl_usb* %6, %struct.ath6kl_usb** %3, align 8
  %7 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %3, align 8
  %8 = call i32 @ath6kl_usb_start_recv_pipes(%struct.ath6kl_usb* %7)
  %9 = load i32, i32* @ATH6KL_USB_PIPE_TX_CTRL, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ATH6KL_USB_PIPE_TX_DATA_HP, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %3, align 8
  %16 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %3, align 8
  %25 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %10
  ret void
}

declare dso_local %struct.ath6kl_usb* @ath6kl_usb_priv(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_usb_start_recv_pipes(%struct.ath6kl_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
