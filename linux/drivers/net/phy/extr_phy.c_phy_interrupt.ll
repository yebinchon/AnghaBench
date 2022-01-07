; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.phy_device*)*, i32 (%struct.phy_device*)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @phy_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.phy_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.phy_device*
  store %struct.phy_device* %8, %struct.phy_device** %6, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %12, align 8
  %14 = icmp ne i32 (%struct.phy_device*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %19, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %22 = call i32 %20(%struct.phy_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %15, %2
  %27 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (%struct.phy_device*)*, i64 (%struct.phy_device*)** %30, align 8
  %32 = icmp ne i64 (%struct.phy_device*)* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.phy_device*)*, i64 (%struct.phy_device*)** %37, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %40 = call i64 %38(%struct.phy_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %54

43:                                               ; preds = %33
  br label %47

44:                                               ; preds = %26
  %45 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %46 = call i32 @phy_trigger_machine(%struct.phy_device* %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %49 = call i64 @phy_clear_interrupt(%struct.phy_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %51, %42
  %55 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %56 = call i32 @phy_error(%struct.phy_device* %55)
  %57 = load i32, i32* @IRQ_NONE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %52, %24
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @phy_trigger_machine(%struct.phy_device*) #1

declare dso_local i64 @phy_clear_interrupt(%struct.phy_device*) #1

declare dso_local i32 @phy_error(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
