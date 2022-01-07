; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ucb1x00 = type { i32, i32, i32, i32, i32 }

@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@UCB_IE_RIS = common dso_local global i32 0, align 4
@UCB_IE_FAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @ucb1x00_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucb1x00*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.ucb1x00* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.ucb1x00* %8, %struct.ucb1x00** %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %13 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = shl i32 1, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %18 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %17, i32 0, i32 4
  %19 = call i32 @raw_spin_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %27 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %34 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %45 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %52 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %57 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %55
  %63 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %64 = load i32, i32* @UCB_IE_RIS, align 4
  %65 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %66 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %69 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %63, i32 %64, i32 %71)
  %73 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %74 = load i32, i32* @UCB_IE_FAL, align 4
  %75 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %76 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %79 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %77, %80
  %82 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %73, i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %62, %55
  %84 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %85 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %84, i32 0, i32 4
  %86 = call i32 @raw_spin_unlock(i32* %85)
  ret i32 0
}

declare dso_local %struct.ucb1x00* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
