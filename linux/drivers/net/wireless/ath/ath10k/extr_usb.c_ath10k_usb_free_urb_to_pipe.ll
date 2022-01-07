; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_free_urb_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_free_urb_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_usb_pipe = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath10k_urb_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_usb_pipe*, %struct.ath10k_urb_context*)* @ath10k_usb_free_urb_to_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_usb_free_urb_to_pipe(%struct.ath10k_usb_pipe* %0, %struct.ath10k_urb_context* %1) #0 {
  %3 = alloca %struct.ath10k_usb_pipe*, align 8
  %4 = alloca %struct.ath10k_urb_context*, align 8
  %5 = alloca i64, align 8
  store %struct.ath10k_usb_pipe* %0, %struct.ath10k_usb_pipe** %3, align 8
  store %struct.ath10k_urb_context* %1, %struct.ath10k_urb_context** %4, align 8
  %6 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %16, i32 0, i32 0
  %18 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %18, i32 0, i32 1
  %20 = call i32 @list_add(i32* %17, i32* %19)
  %21 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
