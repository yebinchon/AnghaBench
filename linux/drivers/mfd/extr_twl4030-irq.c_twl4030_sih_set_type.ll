; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.sih_agent = type { i64, i32 }

@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @twl4030_sih_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_sih_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sih_agent*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call %struct.sih_agent* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.sih_agent* %8, %struct.sih_agent** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %11 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %21 = call i32 @irqd_get_trigger_type(%struct.irq_data* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %26 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %29 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = call i32 @BIT(i64 %31)
  %33 = load %struct.sih_agent*, %struct.sih_agent** %6, align 8
  %34 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.sih_agent* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
