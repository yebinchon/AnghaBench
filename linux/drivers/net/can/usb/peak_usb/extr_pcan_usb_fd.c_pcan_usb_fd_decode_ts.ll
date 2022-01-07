; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_decode_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_fd_if = type { i64, i32 }
%struct.pucan_msg = type { i32 }
%struct.pcan_ufd_ts_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcan_usb_fd_if*, %struct.pucan_msg*)* @pcan_usb_fd_decode_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcan_usb_fd_decode_ts(%struct.pcan_usb_fd_if* %0, %struct.pucan_msg* %1) #0 {
  %3 = alloca %struct.pcan_usb_fd_if*, align 8
  %4 = alloca %struct.pucan_msg*, align 8
  %5 = alloca %struct.pcan_ufd_ts_msg*, align 8
  store %struct.pcan_usb_fd_if* %0, %struct.pcan_usb_fd_if** %3, align 8
  store %struct.pucan_msg* %1, %struct.pucan_msg** %4, align 8
  %6 = load %struct.pucan_msg*, %struct.pucan_msg** %4, align 8
  %7 = bitcast %struct.pucan_msg* %6 to %struct.pcan_ufd_ts_msg*
  store %struct.pcan_ufd_ts_msg* %7, %struct.pcan_ufd_ts_msg** %5, align 8
  %8 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %3, align 8
  %9 = getelementptr inbounds %struct.pcan_usb_fd_if, %struct.pcan_usb_fd_if* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %3, align 8
  %14 = getelementptr inbounds %struct.pcan_usb_fd_if, %struct.pcan_usb_fd_if* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.pcan_usb_fd_if*, %struct.pcan_usb_fd_if** %3, align 8
  %19 = getelementptr inbounds %struct.pcan_usb_fd_if, %struct.pcan_usb_fd_if* %18, i32 0, i32 1
  %20 = load %struct.pcan_ufd_ts_msg*, %struct.pcan_ufd_ts_msg** %5, align 8
  %21 = getelementptr inbounds %struct.pcan_ufd_ts_msg, %struct.pcan_ufd_ts_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = call i32 @peak_usb_set_ts_now(i32* %19, i32 %23)
  br label %25

25:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @peak_usb_set_ts_now(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
