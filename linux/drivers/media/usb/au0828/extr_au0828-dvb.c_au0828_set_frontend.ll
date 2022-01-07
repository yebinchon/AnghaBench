; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-dvb.c_au0828_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-dvb.c_au0828_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.au0828_dev* }
%struct.au0828_dev = type { i32, i32, %struct.au0828_dvb }
%struct.au0828_dvb = type { {}*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @au0828_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca %struct.au0828_dvb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.au0828_dev*, %struct.au0828_dev** %10, align 8
  store %struct.au0828_dev* %11, %struct.au0828_dev** %3, align 8
  %12 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %13 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %12, i32 0, i32 2
  store %struct.au0828_dvb* %13, %struct.au0828_dvb** %4, align 8
  %14 = load %struct.au0828_dvb*, %struct.au0828_dvb** %4, align 8
  %15 = getelementptr inbounds %struct.au0828_dvb, %struct.au0828_dvb* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %18 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %24 = call i32 @au0828_stop_transport(%struct.au0828_dev* %23, i32 1)
  %25 = load %struct.au0828_dvb*, %struct.au0828_dvb** %4, align 8
  %26 = getelementptr inbounds %struct.au0828_dvb, %struct.au0828_dvb* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %29 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %28, i32 0, i32 1
  %30 = call i32 @cancel_work_sync(i32* %29)
  %31 = load %struct.au0828_dvb*, %struct.au0828_dvb** %4, align 8
  %32 = getelementptr inbounds %struct.au0828_dvb, %struct.au0828_dvb* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %35 = call i32 @stop_urb_transfer(%struct.au0828_dev* %34)
  br label %36

36:                                               ; preds = %22, %1
  %37 = load %struct.au0828_dvb*, %struct.au0828_dvb** %4, align 8
  %38 = getelementptr inbounds %struct.au0828_dvb, %struct.au0828_dvb* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.au0828_dvb*, %struct.au0828_dvb** %4, align 8
  %41 = getelementptr inbounds %struct.au0828_dvb, %struct.au0828_dvb* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.dvb_frontend*)**
  %43 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %42, align 8
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %45 = call i32 %43(%struct.dvb_frontend* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %36
  %49 = load %struct.au0828_dvb*, %struct.au0828_dvb** %4, align 8
  %50 = getelementptr inbounds %struct.au0828_dvb, %struct.au0828_dvb* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %53 = call i32 @au0828_start_transport(%struct.au0828_dev* %52)
  %54 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %55 = call i32 @start_urb_transfer(%struct.au0828_dev* %54)
  %56 = load %struct.au0828_dvb*, %struct.au0828_dvb** %4, align 8
  %57 = getelementptr inbounds %struct.au0828_dvb, %struct.au0828_dvb* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %48, %36
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @au0828_stop_transport(%struct.au0828_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @stop_urb_transfer(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_start_transport(%struct.au0828_dev*) #1

declare dso_local i32 @start_urb_transfer(%struct.au0828_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
