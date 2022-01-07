; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_adapter = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@FJES_IRQ_WATCH_DELAY = common dso_local global i32 0, align 4
@fjes_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fjes_adapter*)* @fjes_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_request_irq(%struct.fjes_adapter* %0) #0 {
  %2 = alloca %struct.fjes_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.fjes_adapter* %0, %struct.fjes_adapter** %2, align 8
  %5 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %5, i32 0, i32 5
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %10, i32 0, i32 3
  %12 = call i32 @delayed_work_pending(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %18, i32 0, i32 3
  %20 = load i32, i32* @FJES_IRQ_WATCH_DELAY, align 4
  %21 = call i32 @queue_delayed_work(i32 %17, i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @fjes_intr, align 4
  %34 = load i32, i32* @IRQF_SHARED, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %39 = call i32 @request_irq(i32 %32, i32 %33, i32 %34, i32 %37, %struct.fjes_adapter* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %48

45:                                               ; preds = %27
  %46 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.fjes_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
