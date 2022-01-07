; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ucb1x00 = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ucb1x00_plat_data* }
%struct.ucb1x00_plat_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @ucb1x00_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucb1x00*, align 8
  %7 = alloca %struct.ucb1x00_plat_data*, align 8
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.ucb1x00* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.ucb1x00* %10, %struct.ucb1x00** %6, align 8
  %11 = load %struct.ucb1x00*, %struct.ucb1x00** %6, align 8
  %12 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ucb1x00_plat_data*, %struct.ucb1x00_plat_data** %15, align 8
  store %struct.ucb1x00_plat_data* %16, %struct.ucb1x00_plat_data** %7, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ucb1x00*, %struct.ucb1x00** %6, align 8
  %21 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  %24 = shl i32 1, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ucb1x00_plat_data*, %struct.ucb1x00_plat_data** %7, align 8
  %26 = icmp ne %struct.ucb1x00_plat_data* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.ucb1x00_plat_data*, %struct.ucb1x00_plat_data** %7, align 8
  %29 = getelementptr inbounds %struct.ucb1x00_plat_data, %struct.ucb1x00_plat_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %27
  %36 = load %struct.ucb1x00*, %struct.ucb1x00** %6, align 8
  %37 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %36, i32 0, i32 2
  %38 = call i32 @raw_spin_lock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ucb1x00*, %struct.ucb1x00** %6, align 8
  %44 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ucb1x00*, %struct.ucb1x00** %6, align 8
  %51 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.ucb1x00*, %struct.ucb1x00** %6, align 8
  %56 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %55, i32 0, i32 2
  %57 = call i32 @raw_spin_unlock(i32* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %32
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ucb1x00* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
