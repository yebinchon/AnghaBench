; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_notify_block = type { i32, %struct.gve_priv* }
%struct.gve_priv = type { i32 }

@GVE_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gve_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gve_notify_block*, align 8
  %6 = alloca %struct.gve_priv*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.gve_notify_block*
  store %struct.gve_notify_block* %8, %struct.gve_notify_block** %5, align 8
  %9 = load %struct.gve_notify_block*, %struct.gve_notify_block** %5, align 8
  %10 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %9, i32 0, i32 1
  %11 = load %struct.gve_priv*, %struct.gve_priv** %10, align 8
  store %struct.gve_priv* %11, %struct.gve_priv** %6, align 8
  %12 = load i32, i32* @GVE_IRQ_MASK, align 4
  %13 = load %struct.gve_priv*, %struct.gve_priv** %6, align 8
  %14 = load %struct.gve_notify_block*, %struct.gve_notify_block** %5, align 8
  %15 = call i32 @gve_irq_doorbell(%struct.gve_priv* %13, %struct.gve_notify_block* %14)
  %16 = call i32 @iowrite32be(i32 %12, i32 %15)
  %17 = load %struct.gve_notify_block*, %struct.gve_notify_block** %5, align 8
  %18 = getelementptr inbounds %struct.gve_notify_block, %struct.gve_notify_block* %17, i32 0, i32 0
  %19 = call i32 @napi_schedule_irqoff(i32* %18)
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %20
}

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @gve_irq_doorbell(%struct.gve_priv*, %struct.gve_notify_block*) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
