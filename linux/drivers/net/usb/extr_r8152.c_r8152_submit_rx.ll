; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_submit_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_submit_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_agg = type { i32, %struct.urb*, i32 }
%struct.urb = type { i64 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@WORK_ENABLE = common dso_local global i32 0, align 4
@read_bulk_callback = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't submit rx[%p], ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, %struct.rx_agg*, i32)* @r8152_submit_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8152_submit_rx(%struct.r8152* %0, %struct.rx_agg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8152*, align 8
  %6 = alloca %struct.rx_agg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i64, align 8
  store %struct.r8152* %0, %struct.r8152** %5, align 8
  store %struct.rx_agg* %1, %struct.rx_agg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @RTL8152_UNPLUG, align 4
  %12 = load %struct.r8152*, %struct.r8152** %5, align 8
  %13 = getelementptr inbounds %struct.r8152, %struct.r8152* %12, i32 0, i32 6
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @WORK_ENABLE, align 4
  %18 = load %struct.r8152*, %struct.r8152** %5, align 8
  %19 = getelementptr inbounds %struct.r8152, %struct.r8152* %18, i32 0, i32 6
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.r8152*, %struct.r8152** %5, align 8
  %24 = getelementptr inbounds %struct.r8152, %struct.r8152* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_carrier_ok(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %16, %3
  store i32 0, i32* %4, align 4
  br label %102

29:                                               ; preds = %22
  %30 = load %struct.rx_agg*, %struct.rx_agg** %6, align 8
  %31 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %30, i32 0, i32 1
  %32 = load %struct.urb*, %struct.urb** %31, align 8
  %33 = load %struct.r8152*, %struct.r8152** %5, align 8
  %34 = getelementptr inbounds %struct.r8152, %struct.r8152* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.r8152*, %struct.r8152** %5, align 8
  %37 = getelementptr inbounds %struct.r8152, %struct.r8152* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_rcvbulkpipe(i32 %38, i32 1)
  %40 = load %struct.rx_agg*, %struct.rx_agg** %6, align 8
  %41 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.r8152*, %struct.r8152** %5, align 8
  %44 = getelementptr inbounds %struct.r8152, %struct.r8152* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @read_bulk_callback, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.rx_agg*, %struct.rx_agg** %6, align 8
  %49 = call i32 @usb_fill_bulk_urb(%struct.urb* %32, i32 %35, i32 %39, i32 %42, i32 %45, i32 %47, %struct.rx_agg* %48)
  %50 = load %struct.rx_agg*, %struct.rx_agg** %6, align 8
  %51 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %50, i32 0, i32 1
  %52 = load %struct.urb*, %struct.urb** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @usb_submit_urb(%struct.urb* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %29
  %60 = load %struct.r8152*, %struct.r8152** %5, align 8
  %61 = call i32 @rtl_set_unplug(%struct.r8152* %60)
  %62 = load %struct.r8152*, %struct.r8152** %5, align 8
  %63 = getelementptr inbounds %struct.r8152, %struct.r8152* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @netif_device_detach(i32 %64)
  br label %100

66:                                               ; preds = %29
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %66
  %70 = load %struct.rx_agg*, %struct.rx_agg** %6, align 8
  %71 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %70, i32 0, i32 1
  %72 = load %struct.urb*, %struct.urb** %71, align 8
  store %struct.urb* %72, %struct.urb** %9, align 8
  %73 = load %struct.urb*, %struct.urb** %9, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.r8152*, %struct.r8152** %5, align 8
  %76 = getelementptr inbounds %struct.r8152, %struct.r8152* %75, i32 0, i32 2
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.rx_agg*, %struct.rx_agg** %6, align 8
  %80 = getelementptr inbounds %struct.rx_agg, %struct.rx_agg* %79, i32 0, i32 0
  %81 = load %struct.r8152*, %struct.r8152** %5, align 8
  %82 = getelementptr inbounds %struct.r8152, %struct.r8152* %81, i32 0, i32 3
  %83 = call i32 @list_add_tail(i32* %80, i32* %82)
  %84 = load %struct.r8152*, %struct.r8152** %5, align 8
  %85 = getelementptr inbounds %struct.r8152, %struct.r8152* %84, i32 0, i32 2
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.r8152*, %struct.r8152** %5, align 8
  %89 = load i32, i32* @rx_err, align 4
  %90 = load %struct.r8152*, %struct.r8152** %5, align 8
  %91 = getelementptr inbounds %struct.r8152, %struct.r8152* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rx_agg*, %struct.rx_agg** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @netif_err(%struct.r8152* %88, i32 %89, i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.rx_agg* %93, i32 %94)
  %96 = load %struct.r8152*, %struct.r8152** %5, align 8
  %97 = getelementptr inbounds %struct.r8152, %struct.r8152* %96, i32 0, i32 0
  %98 = call i32 @napi_schedule(i32* %97)
  br label %99

99:                                               ; preds = %69, %66
  br label %100

100:                                              ; preds = %99, %59
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %28
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.rx_agg*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @rtl_set_unplug(%struct.r8152*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_err(%struct.r8152*, i32, i32, i8*, %struct.rx_agg*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
