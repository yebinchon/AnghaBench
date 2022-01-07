; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.si476x_power_down_args = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_stop(%struct.si476x_core* %0, i32 %1) #0 {
  %3 = alloca %struct.si476x_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.si476x_power_down_args, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %8 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %7, i32 0, i32 3
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = bitcast %struct.si476x_power_down_args* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %15 = call i32 @si476x_core_cmd_power_down(%struct.si476x_core* %14, %struct.si476x_power_down_args* %6)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %18 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %25 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @disable_irq(i64 %28)
  br label %34

30:                                               ; preds = %16
  %31 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %32 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %31, i32 0, i32 1
  %33 = call i32 @cancel_delayed_work_sync(i32* %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %39 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @gpio_is_valid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %45 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @gpio_set_value_cansleep(i32 %46, i32 0)
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @atomic_set(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @si476x_core_cmd_power_down(%struct.si476x_core*, %struct.si476x_power_down_args*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
