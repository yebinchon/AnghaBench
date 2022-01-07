; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_req_ctx_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_req_ctx_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ezusb_priv = type { i32 }
%struct.request_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DEF_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ezusb_priv*, %struct.request_context*)* @ezusb_req_ctx_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ezusb_req_ctx_wait(%struct.ezusb_priv* %0, %struct.request_context* %1) #0 {
  %3 = alloca %struct.ezusb_priv*, align 8
  %4 = alloca %struct.request_context*, align 8
  %5 = alloca i32, align 4
  store %struct.ezusb_priv* %0, %struct.ezusb_priv** %3, align 8
  store %struct.request_context* %1, %struct.request_context** %4, align 8
  %6 = load %struct.request_context*, %struct.request_context** %4, align 8
  %7 = getelementptr inbounds %struct.request_context, %struct.request_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %43 [
    i32 131, label %9
    i32 129, label %9
    i32 130, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2, %2, %2
  %10 = call i32 (...) @in_softirq()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load i32, i32* @DEF_TIMEOUT, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 1000, %14
  %16 = mul nsw i32 %13, %15
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %29, %12
  %18 = load %struct.request_context*, %struct.request_context** %4, align 8
  %19 = getelementptr inbounds %struct.request_context, %struct.request_context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %24, 0
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = call i32 @udelay(i32 1000)
  br label %17

31:                                               ; preds = %27
  br label %42

32:                                               ; preds = %9
  %33 = load %struct.request_context*, %struct.request_context** %4, align 8
  %34 = getelementptr inbounds %struct.request_context, %struct.request_context* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.request_context*, %struct.request_context** %4, align 8
  %38 = getelementptr inbounds %struct.request_context, %struct.request_context* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wait_event_interruptible(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %32, %31
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @in_softirq(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
