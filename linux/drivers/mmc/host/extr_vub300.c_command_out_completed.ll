; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_command_out_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_command_out_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64 }
%struct.vub300_mmc_host = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@command_res_completed = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @command_out_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_out_completed(%struct.urb* %0) #0 {
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
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %15, i32 0, i32 0
  %17 = call i32 @complete(i32* %16)
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_rcvbulkpipe(i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %33, i32 0, i32 2
  %35 = load i32, i32* @command_res_completed, align 4
  %36 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %37 = call i32 @usb_fill_bulk_urb(%struct.TYPE_3__* %28, i32 %31, i32 %32, i32* %34, i32 4, i32 %35, %struct.vub300_mmc_host* %36)
  %38 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call i32 @usb_submit_urb(%struct.TYPE_3__* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %18
  br label %54

50:                                               ; preds = %18
  %51 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %51, i32 0, i32 0
  %53 = call i32 @complete(i32* %52)
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %14
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
