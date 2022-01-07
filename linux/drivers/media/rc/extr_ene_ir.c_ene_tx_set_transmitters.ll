; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_tx_set_transmitters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_tx_set_transmitters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32 }

@ENE_GPIOFS8 = common dso_local global i32 0, align 4
@ENE_GPIOFS8_GPIO41 = common dso_local global i32 0, align 4
@ENE_GPIOFS1 = common dso_local global i32 0, align 4
@ENE_GPIOFS1_GPIO0D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_tx_set_transmitters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_tx_set_transmitters(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  %3 = alloca i64, align 8
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %4 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %5 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %9 = load i32, i32* @ENE_GPIOFS8, align 4
  %10 = load i32, i32* @ENE_GPIOFS8_GPIO41, align 4
  %11 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %12 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ene_set_clear_reg_mask(%struct.ene_device* %8, i32 %9, i32 %10, i32 %18)
  %20 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %21 = load i32, i32* @ENE_GPIOFS1, align 4
  %22 = load i32, i32* @ENE_GPIOFS1_GPIO0D, align 4
  %23 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %24 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ene_set_clear_reg_mask(%struct.ene_device* %20, i32 %21, i32 %22, i32 %30)
  %32 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %33 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %32, i32 0, i32 1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ene_set_clear_reg_mask(%struct.ene_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
