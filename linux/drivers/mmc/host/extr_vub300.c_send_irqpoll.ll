; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_send_irqpoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_send_irqpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64 }

@firmware_irqpoll_timeout = common dso_local global i32 0, align 4
@irqpoll_out_completed = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*)* @send_irqpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_irqpoll(%struct.vub300_mmc_host* %0) #0 {
  %2 = alloca %struct.vub300_mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %2, align 8
  %5 = load i32, i32* @firmware_irqpoll_timeout, align 4
  %6 = sub nsw i32 131071, %5
  %7 = and i32 65535, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 22, i32* %11, align 8
  %12 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 2, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = and i32 255, %24
  %26 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 255, %31
  %33 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %34 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 8
  %37 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %38 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %41 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %44 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %47 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_sndbulkpipe(i32 %45, i32 %48)
  %50 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %51 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %50, i32 0, i32 3
  %52 = load i32, i32* @irqpoll_out_completed, align 4
  %53 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %54 = call i32 @usb_fill_bulk_urb(i32 %39, i32 %42, i32 %49, %struct.TYPE_4__* %51, i32 32, i32 %52, %struct.vub300_mmc_host* %53)
  %55 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %56 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @usb_submit_urb(i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp sgt i32 0, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %1
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %65 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %67 = call i32 @vub300_queue_poll_work(%struct.vub300_mmc_host* %66, i32 1)
  %68 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %69 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %68, i32 0, i32 1
  %70 = call i32 @complete(i32* %69)
  br label %72

71:                                               ; preds = %1
  br label %72

72:                                               ; preds = %71, %62
  ret void
}

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.vub300_mmc_host*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @vub300_queue_poll_work(%struct.vub300_mmc_host*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
