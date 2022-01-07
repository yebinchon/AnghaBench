; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_request_timerfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_request_timerfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_context = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@URB_ASYNC_UNLINK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EZUSB_CTX_REQ_TIMEOUT = common dso_local global i32 0, align 4
@EZUSB_CTX_RESP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"couldn't unlink\0A\00", align 1
@ctx = common dso_local global %struct.request_context* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ezusb_request_timerfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ezusb_request_timerfn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.request_context*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.request_context*, %struct.request_context** %3, align 8
  %5 = ptrtoint %struct.request_context* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.request_context* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.request_context* %8, %struct.request_context** %3, align 8
  %9 = load i32, i32* @URB_ASYNC_UNLINK, align 4
  %10 = load %struct.request_context*, %struct.request_context** %3, align 8
  %11 = getelementptr inbounds %struct.request_context, %struct.request_context* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %9
  store i32 %15, i32* %13, align 8
  %16 = load %struct.request_context*, %struct.request_context** %3, align 8
  %17 = getelementptr inbounds %struct.request_context, %struct.request_context* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @usb_unlink_urb(%struct.TYPE_4__* %18)
  %20 = load i32, i32* @EINPROGRESS, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @EZUSB_CTX_REQ_TIMEOUT, align 4
  %25 = load %struct.request_context*, %struct.request_context** %3, align 8
  %26 = getelementptr inbounds %struct.request_context, %struct.request_context* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  br label %47

27:                                               ; preds = %1
  %28 = load i32, i32* @EZUSB_CTX_RESP_TIMEOUT, align 4
  %29 = load %struct.request_context*, %struct.request_context** %3, align 8
  %30 = getelementptr inbounds %struct.request_context, %struct.request_context* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.request_context*, %struct.request_context** %3, align 8
  %32 = getelementptr inbounds %struct.request_context, %struct.request_context* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.request_context*, %struct.request_context** %3, align 8
  %39 = getelementptr inbounds %struct.request_context, %struct.request_context* %38, i32 0, i32 1
  %40 = call i32 @refcount_inc(i32* %39)
  %41 = load %struct.request_context*, %struct.request_context** %3, align 8
  %42 = getelementptr inbounds %struct.request_context, %struct.request_context* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.request_context*, %struct.request_context** %3, align 8
  %44 = call i32 @ezusb_ctx_complete(%struct.request_context* %43)
  %45 = load %struct.request_context*, %struct.request_context** %3, align 8
  %46 = call i32 @ezusb_request_context_put(%struct.request_context* %45)
  br label %47

47:                                               ; preds = %27, %23
  ret void
}

declare dso_local %struct.request_context* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @ezusb_ctx_complete(%struct.request_context*) #1

declare dso_local i32 @ezusb_request_context_put(%struct.request_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
