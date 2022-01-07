; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_prox_interrupt_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_prox_interrupt_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i32, i32 }

@BH1770_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1770_chip*, i32)* @bh1770_prox_interrupt_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_prox_interrupt_control(%struct.bh1770_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.bh1770_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %7 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %9 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BH1770_INTERRUPT, align 4
  %12 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %13 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 1
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 0
  %18 = or i32 %15, %17
  %19 = call i32 @i2c_smbus_write_byte_data(i32 %10, i32 %11, i32 %18)
  ret i32 %19
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
