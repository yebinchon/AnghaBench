; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65217.c_tps65217_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.tps65217 = type { i32, i32, i32 }

@TPS65217_REG_INT = common dso_local global i32 0, align 4
@TPS65217_INT_MASK = common dso_local global i32 0, align 4
@TPS65217_PROTECT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to sync IRQ masks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @tps65217_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps65217_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.tps65217*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.tps65217* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.tps65217* %6, %struct.tps65217** %3, align 8
  %7 = load %struct.tps65217*, %struct.tps65217** %3, align 8
  %8 = load i32, i32* @TPS65217_REG_INT, align 4
  %9 = load i32, i32* @TPS65217_INT_MASK, align 4
  %10 = load %struct.tps65217*, %struct.tps65217** %3, align 8
  %11 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %14 = call i32 @tps65217_set_bits(%struct.tps65217* %7, i32 %8, i32 %9, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.tps65217*, %struct.tps65217** %3, align 8
  %19 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.tps65217*, %struct.tps65217** %3, align 8
  %24 = getelementptr inbounds %struct.tps65217, %struct.tps65217* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local %struct.tps65217* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @tps65217_set_bits(%struct.tps65217*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
