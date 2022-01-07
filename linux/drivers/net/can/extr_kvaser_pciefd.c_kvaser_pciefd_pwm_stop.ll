; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_pwm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_pwm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, i64 }

@KVASER_PCIEFD_KCAN_PWM_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_pwm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_pwm_stop(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd_can*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %2, align 8
  %6 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %7 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %11 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KVASER_PCIEFD_KCAN_PWM_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = and i32 %18, 255
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %25 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KVASER_PCIEFD_KCAN_PWM_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @iowrite32(i32 %23, i64 %28)
  %30 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %31 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
