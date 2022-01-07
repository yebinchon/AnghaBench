; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_put_rxbuf_data_and_resubmit_ctrl_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_put_rxbuf_data_and_resubmit_ctrl_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i64, %struct.TYPE_2__, %struct.urb** }
%struct.TYPE_2__ = type { i64 }
%struct.urb = type { i64 }

@RX_PENDING = common dso_local global i64 0, align 8
@RX_SENT = common dso_local global i64 0, align 8
@RX_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_serial*)* @put_rxbuf_data_and_resubmit_ctrl_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_rxbuf_data_and_resubmit_ctrl_urb(%struct.hso_serial* %0) #0 {
  %2 = alloca %struct.hso_serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.hso_serial* %0, %struct.hso_serial** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %6 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %5, i32 0, i32 2
  %7 = load %struct.urb**, %struct.urb*** %6, align 8
  %8 = getelementptr inbounds %struct.urb*, %struct.urb** %7, i64 0
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %4, align 8
  %10 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %11 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %18 = call i32 @put_rxbuf_data(%struct.urb* %16, %struct.hso_serial* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %47

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.urb*, %struct.urb** %4, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %33 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RX_PENDING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31, %26
  %38 = load i64, i64* @RX_SENT, align 8
  %39 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %40 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %42 = call i32 @hso_mux_serial_read(%struct.hso_serial* %41)
  br label %47

43:                                               ; preds = %31, %23
  %44 = load i64, i64* @RX_IDLE, align 8
  %45 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %46 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %21, %43, %37
  ret void
}

declare dso_local i32 @put_rxbuf_data(%struct.urb*, %struct.hso_serial*) #1

declare dso_local i32 @hso_mux_serial_read(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
