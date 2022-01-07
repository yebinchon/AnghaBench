; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_prox_mode_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_prox_mode_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i32, i32, i64, i64 }

@PROX_BELOW_THRESHOLD = common dso_local global i32 0, align 4
@BH1770_ENABLE = common dso_local global i32 0, align 4
@BH1770_PS_CONTROL = common dso_local global i32 0, align 4
@BH1770_STANDALONE = common dso_local global i32 0, align 4
@BH1770_DISABLE = common dso_local global i32 0, align 4
@BH1770_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1770_chip*)* @bh1770_prox_mode_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_prox_mode_control(%struct.bh1770_chip* %0) #0 {
  %2 = alloca %struct.bh1770_chip*, align 8
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %2, align 8
  %3 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %4 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %9 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %11 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %12 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bh1770_lux_rate(%struct.bh1770_chip* %10, i32 %13)
  %15 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %16 = call i32 @bh1770_prox_set_threshold(%struct.bh1770_chip* %15)
  %17 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %18 = call i32 @bh1770_led_cfg(%struct.bh1770_chip* %17)
  %19 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %20 = load i32, i32* @PROX_BELOW_THRESHOLD, align 4
  %21 = call i32 @bh1770_prox_rate(%struct.bh1770_chip* %19, i32 %20)
  %22 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %23 = load i32, i32* @BH1770_ENABLE, align 4
  %24 = call i32 @bh1770_prox_interrupt_control(%struct.bh1770_chip* %22, i32 %23)
  %25 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %26 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BH1770_PS_CONTROL, align 4
  %29 = load i32, i32* @BH1770_STANDALONE, align 4
  %30 = call i32 @i2c_smbus_write_byte_data(i32 %27, i32 %28, i32 %29)
  br label %48

31:                                               ; preds = %1
  %32 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %33 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %35 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %36 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bh1770_lux_rate(%struct.bh1770_chip* %34, i32 %37)
  %39 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %40 = load i32, i32* @BH1770_DISABLE, align 4
  %41 = call i32 @bh1770_prox_interrupt_control(%struct.bh1770_chip* %39, i32 %40)
  %42 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %43 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BH1770_PS_CONTROL, align 4
  %46 = load i32, i32* @BH1770_STANDBY, align 4
  %47 = call i32 @i2c_smbus_write_byte_data(i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %31, %7
  ret i32 0
}

declare dso_local i32 @bh1770_lux_rate(%struct.bh1770_chip*, i32) #1

declare dso_local i32 @bh1770_prox_set_threshold(%struct.bh1770_chip*) #1

declare dso_local i32 @bh1770_led_cfg(%struct.bh1770_chip*) #1

declare dso_local i32 @bh1770_prox_rate(%struct.bh1770_chip*, i32) #1

declare dso_local i32 @bh1770_prox_interrupt_control(%struct.bh1770_chip*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
