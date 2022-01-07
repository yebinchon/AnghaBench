; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { i64*, i32, i32 }
%struct.i2c_client = type { i32 }

@PALMAS_NUM_CLIENTS = common dso_local global i32 0, align 4
@palmas_dev = common dso_local global %struct.palmas* null, align 8
@pm_power_off = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @palmas_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.palmas*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.palmas* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.palmas* %6, %struct.palmas** %3, align 8
  %7 = load %struct.palmas*, %struct.palmas** %3, align 8
  %8 = getelementptr inbounds %struct.palmas, %struct.palmas* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.palmas*, %struct.palmas** %3, align 8
  %11 = getelementptr inbounds %struct.palmas, %struct.palmas* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @regmap_del_irq_chip(i32 %9, i32 %12)
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %37, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PALMAS_NUM_CLIENTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.palmas*, %struct.palmas** %3, align 8
  %20 = getelementptr inbounds %struct.palmas, %struct.palmas* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.palmas*, %struct.palmas** %3, align 8
  %29 = getelementptr inbounds %struct.palmas, %struct.palmas* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @i2c_unregister_device(i64 %34)
  br label %36

36:                                               ; preds = %27, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.palmas*, %struct.palmas** %3, align 8
  %42 = load %struct.palmas*, %struct.palmas** @palmas_dev, align 8
  %43 = icmp eq %struct.palmas* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32* null, i32** @pm_power_off, align 8
  store %struct.palmas* null, %struct.palmas** @palmas_dev, align 8
  br label %45

45:                                               ; preds = %44, %40
  ret i32 0
}

declare dso_local %struct.palmas* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @i2c_unregister_device(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
