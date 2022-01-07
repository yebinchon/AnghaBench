; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_irqpoll_out_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_irqpoll_out_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }
%struct.vub300_mmc_host = type { i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@irqpoll_res_completed = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @irqpoll_out_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irqpoll_out_completed(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.vub300_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.vub300_mmc_host*
  store %struct.vub300_mmc_host* %9, %struct.vub300_mmc_host** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %20, i32 0, i32 1
  %22 = call i32 @complete(i32* %21)
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_rcvbulkpipe(i32 %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %38, i32 0, i32 3
  %40 = load i32, i32* @irqpoll_res_completed, align 4
  %41 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %42 = call i32 @usb_fill_bulk_urb(%struct.TYPE_3__* %33, i32 %36, i32 %37, i32* %39, i32 4, i32 %40, %struct.vub300_mmc_host* %41)
  %43 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %44 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i32 @usb_submit_urb(%struct.TYPE_3__* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %23
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %57 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %59 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %58, i32 0, i32 1
  %60 = call i32 @complete(i32* %59)
  br label %61

61:                                               ; preds = %54, %23
  br label %62

62:                                               ; preds = %61, %14
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_3__*, i32, i32, i32*, i32, i32, %struct.vub300_mmc_host*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
