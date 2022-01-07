; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_sih_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.sih_agent = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @twl4030_sih_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_sih_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.sih_agent*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.sih_agent* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.sih_agent* %5, %struct.sih_agent** %3, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sih_agent*, %struct.sih_agent** %3, align 8
  %10 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = call i32 @BIT(i64 %12)
  %14 = load %struct.sih_agent*, %struct.sih_agent** %3, align 8
  %15 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.sih_agent*, %struct.sih_agent** %3, align 8
  %19 = getelementptr inbounds %struct.sih_agent, %struct.sih_agent* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  ret void
}

declare dso_local %struct.sih_agent* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
