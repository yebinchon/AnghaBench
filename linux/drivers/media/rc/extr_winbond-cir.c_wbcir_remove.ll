; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.wbcir_data = type { i64, i64, i64, i32, i32, i32 }

@WBCIR_IRQ_NONE = common dso_local global i32 0, align 4
@WBCIR_REG_WCEIR_STS = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CTL = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_EV_EN = common dso_local global i64 0, align 8
@LED_OFF = common dso_local global i32 0, align 4
@WAKEUP_IOMEM_LEN = common dso_local global i32 0, align 4
@EHFUNC_IOMEM_LEN = common dso_local global i32 0, align 4
@SP_IOMEM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @wbcir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_remove(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.wbcir_data*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %5 = call %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev* %4)
  store %struct.wbcir_data* %5, %struct.wbcir_data** %3, align 8
  %6 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %7 = load i32, i32* @WBCIR_IRQ_NONE, align 4
  %8 = call i32 @wbcir_set_irqmask(%struct.wbcir_data* %6, i32 %7)
  %9 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %10 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.pnp_dev* %12)
  %14 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %15 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WBCIR_REG_WCEIR_STS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @wbcir_set_bits(i64 %18, i32 23, i32 23)
  %20 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %21 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @wbcir_set_bits(i64 %24, i32 0, i32 1)
  %26 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %27 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @wbcir_set_bits(i64 %30, i32 0, i32 7)
  %32 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %33 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rc_unregister_device(i32 %34)
  %36 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %37 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %36, i32 0, i32 3
  %38 = call i32 @led_classdev_unregister(i32* %37)
  %39 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %40 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %39, i32 0, i32 3
  %41 = load i32, i32* @LED_OFF, align 4
  %42 = call i32 @wbcir_led_brightness_set(i32* %40, i32 %41)
  %43 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %44 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @WAKEUP_IOMEM_LEN, align 4
  %47 = call i32 @release_region(i64 %45, i32 %46)
  %48 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %49 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @EHFUNC_IOMEM_LEN, align 4
  %52 = call i32 @release_region(i64 %50, i32 %51)
  %53 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %54 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @SP_IOMEM_LEN, align 4
  %57 = call i32 @release_region(i64 %55, i32 %56)
  %58 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %59 = call i32 @kfree(%struct.wbcir_data* %58)
  %60 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %61 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %60, i32* null)
  ret void
}

declare dso_local %struct.wbcir_data* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @wbcir_set_irqmask(%struct.wbcir_data*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.pnp_dev*) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @wbcir_led_brightness_set(i32*, i32) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @kfree(%struct.wbcir_data*) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
