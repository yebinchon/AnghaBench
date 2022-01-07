; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_fsl-imx25-tsadc.c_mx25_tsadc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_fsl-imx25-tsadc.c_mx25_tsadc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.mx25_tsadc = type { i32, i32 }
%struct.irq_chip = type { i32 }

@MX25_TSC_TGSR = common dso_local global i32 0, align 4
@MX25_TGSR_GCQ_INT = common dso_local global i32 0, align 4
@MX25_TGSR_TCQ_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @mx25_tsadc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx25_tsadc_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.mx25_tsadc*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.mx25_tsadc* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.mx25_tsadc* %7, %struct.mx25_tsadc** %3, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %8)
  store %struct.irq_chip* %9, %struct.irq_chip** %4, align 8
  %10 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call i32 @chained_irq_enter(%struct.irq_chip* %10, %struct.irq_desc* %11)
  %13 = load %struct.mx25_tsadc*, %struct.mx25_tsadc** %3, align 8
  %14 = getelementptr inbounds %struct.mx25_tsadc, %struct.mx25_tsadc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MX25_TSC_TGSR, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MX25_TGSR_GCQ_INT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.mx25_tsadc*, %struct.mx25_tsadc** %3, align 8
  %24 = getelementptr inbounds %struct.mx25_tsadc, %struct.mx25_tsadc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @irq_find_mapping(i32 %25, i32 1)
  %27 = call i32 @generic_handle_irq(i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MX25_TGSR_TCQ_INT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.mx25_tsadc*, %struct.mx25_tsadc** %3, align 8
  %35 = getelementptr inbounds %struct.mx25_tsadc, %struct.mx25_tsadc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @irq_find_mapping(i32 %36, i32 0)
  %38 = call i32 @generic_handle_irq(i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %41 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %42 = call i32 @chained_irq_exit(%struct.irq_chip* %40, %struct.irq_desc* %41)
  ret void
}

declare dso_local %struct.mx25_tsadc* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
