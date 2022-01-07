; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { %struct.task_struct*, %struct.i2400m }
%struct.task_struct = type { i32 }
%struct.i2400m = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"RX: kthread had already exited\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400mu_rx_release(%struct.i2400mu* %0) #0 {
  %2 = alloca %struct.i2400mu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %2, align 8
  %7 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %8 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %7, i32 0, i32 1
  store %struct.i2400m* %8, %struct.i2400m** %4, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %16 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %15, i32 0, i32 0
  %17 = load %struct.task_struct*, %struct.task_struct** %16, align 8
  store %struct.task_struct* %17, %struct.task_struct** %6, align 8
  %18 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %19 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %18, i32 0, i32 0
  store %struct.task_struct* null, %struct.task_struct** %19, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %21 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %20, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = call i32 @kthread_stop(%struct.task_struct* %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @d_printf(i32 1, %struct.device* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
