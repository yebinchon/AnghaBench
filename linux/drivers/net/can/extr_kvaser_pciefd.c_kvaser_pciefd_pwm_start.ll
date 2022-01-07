; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_pwm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_pwm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_PWM_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_pwm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_pwm_start(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd_can*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %2, align 8
  %7 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %8 = call i32 @kvaser_pciefd_pwm_stop(%struct.kvaser_pciefd_can* %7)
  %9 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %10 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %14 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 1000000
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* @KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %30 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KVASER_PCIEFD_KCAN_PWM_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite32(i32 %28, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 100, %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 95, %38
  %40 = sub nsw i32 %36, %39
  %41 = add nsw i32 %40, 50
  %42 = sdiv i32 %41, 100
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 255
  %47 = load i32, i32* @KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %53 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KVASER_PCIEFD_KCAN_PWM_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 %51, i64 %56)
  %58 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %59 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i32 @kvaser_pciefd_pwm_stop(%struct.kvaser_pciefd_can*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
