; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_disable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_disable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, i32 }

@CAL_HL_IRQ_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @disable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_irqs(%struct.cal_ctx* %0) #0 {
  %2 = alloca %struct.cal_ctx*, align 8
  store %struct.cal_ctx* %0, %struct.cal_ctx** %2, align 8
  %3 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @CAL_HL_IRQENABLE_CLR(i32 2)
  %7 = load i32, i32* @CAL_HL_IRQ_CLEAR, align 4
  %8 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @CAL_HL_IRQ_MASK(i32 %10)
  %12 = call i32 @reg_write_field(i32 %5, i32 %6, i32 %7, i32 %11)
  %13 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CAL_HL_IRQENABLE_CLR(i32 3)
  %17 = load i32, i32* @CAL_HL_IRQ_CLEAR, align 4
  %18 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CAL_HL_IRQ_MASK(i32 %20)
  %22 = call i32 @reg_write_field(i32 %15, i32 %16, i32 %17, i32 %21)
  %23 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CAL_CSI2_VC_IRQENABLE(i32 1)
  %27 = call i32 @reg_write(i32 %25, i32 %26, i32 0)
  ret void
}

declare dso_local i32 @reg_write_field(i32, i32, i32, i32) #1

declare dso_local i32 @CAL_HL_IRQENABLE_CLR(i32) #1

declare dso_local i32 @CAL_HL_IRQ_MASK(i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @CAL_CSI2_VC_IRQENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
