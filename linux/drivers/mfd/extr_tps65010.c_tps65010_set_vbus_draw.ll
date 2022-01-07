; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_set_vbus_draw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_set_vbus_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@the_tps = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@TPS_CHG_USB = common dso_local global i32 0, align 4
@FLAG_VBUS_CHANGED = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tps65010_set_vbus_draw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp uge i32 %13, 500
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 500, i32* %3, align 4
  br label %22

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp uge i32 %17, 100
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 100, i32* %3, align 4
  br label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TPS_CHG_USB, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load i32, i32* @FLAG_VBUS_CHANGED, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = call i64 @test_and_set_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @system_power_efficient_wq, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_tps, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = call i32 @queue_delayed_work(i32 %39, i32* %41, i32 0)
  br label %43

43:                                               ; preds = %38, %32, %22
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %7
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
