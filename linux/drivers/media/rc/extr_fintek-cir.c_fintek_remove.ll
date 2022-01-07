; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.fintek_dev = type { i32, i32, i32, i32, i32 }

@CIR_STATUS_IRQ_MASK = common dso_local global i32 0, align 4
@CIR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @fintek_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fintek_remove(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.fintek_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %6 = call %struct.fintek_dev* @pnp_get_drvdata(%struct.pnp_dev* %5)
  store %struct.fintek_dev* %6, %struct.fintek_dev** %3, align 8
  %7 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %8 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %7, i32 0, i32 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %12 = call i32 @fintek_disable_cir(%struct.fintek_dev* %11)
  %13 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %14 = load i32, i32* @CIR_STATUS_IRQ_MASK, align 4
  %15 = load i32, i32* @CIR_STATUS, align 4
  %16 = call i32 @fintek_cir_reg_write(%struct.fintek_dev* %13, i32 %14, i32 %15)
  %17 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %18 = call i32 @fintek_enable_wake(%struct.fintek_dev* %17)
  %19 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %19, i32 0, i32 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %24 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.fintek_dev* %26)
  %28 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %29 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %32 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @release_region(i32 %30, i32 %33)
  %35 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %36 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rc_unregister_device(i32 %37)
  %39 = load %struct.fintek_dev*, %struct.fintek_dev** %3, align 8
  %40 = call i32 @kfree(%struct.fintek_dev* %39)
  ret void
}

declare dso_local %struct.fintek_dev* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fintek_disable_cir(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_cir_reg_write(%struct.fintek_dev*, i32, i32) #1

declare dso_local i32 @fintek_enable_wake(%struct.fintek_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.fintek_dev*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.fintek_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
