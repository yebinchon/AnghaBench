; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_put_rxbuf_data_and_resubmit_bulk_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_put_rxbuf_data_and_resubmit_bulk_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i64, i64, %struct.urb**, i64* }
%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_serial*)* @put_rxbuf_data_and_resubmit_bulk_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_rxbuf_data_and_resubmit_bulk_urb(%struct.hso_serial* %0) #0 {
  %2 = alloca %struct.hso_serial*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.hso_serial* %0, %struct.hso_serial** %2, align 8
  br label %5

5:                                                ; preds = %52, %1
  %6 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %7 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %6, i32 0, i32 3
  %8 = load i64*, i64** %7, align 8
  %9 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %10 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %5
  %16 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %17 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %16, i32 0, i32 2
  %18 = load %struct.urb**, %struct.urb*** %17, align 8
  %19 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %20 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.urb*, %struct.urb** %18, i64 %21
  %23 = load %struct.urb*, %struct.urb** %22, align 8
  store %struct.urb* %23, %struct.urb** %4, align 8
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %26 = call i32 @put_rxbuf_data(%struct.urb* %24, %struct.hso_serial* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %53

30:                                               ; preds = %15
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %35 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %39 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %42 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %47 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %50 = load %struct.urb*, %struct.urb** %4, align 8
  %51 = call i32 @hso_resubmit_rx_bulk_urb(%struct.hso_serial* %49, %struct.urb* %50)
  br label %52

52:                                               ; preds = %48, %30
  br label %5

53:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @put_rxbuf_data(%struct.urb*, %struct.hso_serial*) #1

declare dso_local i32 @hso_resubmit_rx_bulk_urb(%struct.hso_serial*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
