; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_enable_err_gen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_enable_err_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, i64 }

@KVASER_PCIEFD_KCAN_MODE_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_MODE_EPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_enable_err_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_enable_err_gen(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd_can*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %2, align 8
  %5 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %6 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %10 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @ioread32(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_EPEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_EPEN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %25 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @iowrite32(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %32 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
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
