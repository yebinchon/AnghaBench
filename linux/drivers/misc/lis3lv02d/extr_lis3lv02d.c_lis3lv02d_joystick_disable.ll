; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_joystick_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_joystick_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32*, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lis3lv02d_joystick_disable(%struct.lis3lv02d* %0) #0 {
  %2 = alloca %struct.lis3lv02d*, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %2, align 8
  %3 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %4 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %9 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %12 = call i32 @free_irq(i64 %10, %struct.lis3lv02d* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %15 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %20 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %27 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %32 = call i32 @free_irq(i64 %30, %struct.lis3lv02d* %31)
  br label %33

33:                                               ; preds = %25, %18, %13
  %34 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %35 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %59

39:                                               ; preds = %33
  %40 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %41 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %46 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %45, i32 0, i32 1
  %47 = call i32 @misc_deregister(i32* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %50 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @input_unregister_polled_device(i32* %51)
  %53 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %54 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @input_free_polled_device(i32* %55)
  %57 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %58 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %48, %38
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.lis3lv02d*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @input_unregister_polled_device(i32*) #1

declare dso_local i32 @input_free_polled_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
