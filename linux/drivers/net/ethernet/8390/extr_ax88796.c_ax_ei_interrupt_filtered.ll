; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_ei_interrupt_filtered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_ei_interrupt_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ax_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.platform_device*)* }
%struct.platform_device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ax_ei_interrupt_filtered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_ei_interrupt_filtered(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ax_device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %11)
  store %struct.ax_device* %12, %struct.ax_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.platform_device* @to_platform_device(i32 %16)
  store %struct.platform_device* %17, %struct.platform_device** %8, align 8
  %18 = load %struct.ax_device*, %struct.ax_device** %7, align 8
  %19 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %21, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %24 = call i32 %22(%struct.platform_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @ax_ei_interrupt(i32 %29, i8* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @ax_ei_interrupt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
