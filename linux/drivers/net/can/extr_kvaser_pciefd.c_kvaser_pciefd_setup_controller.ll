; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_KCAN_MODE_REG = common dso_local global i64 0, align 8
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_CCM = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_NIFDEN = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_LOM = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_EEN = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_EPEN = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_APT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_RM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_setup_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_setup_controller(%struct.kvaser_pciefd_can* %0) #0 {
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
  %15 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %16 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_CCM, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %28 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_NIFDEN, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %22
  %39 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_NIFDEN, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %34
  br label %52

44:                                               ; preds = %1
  %45 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_CCM, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_NIFDEN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %43
  %53 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %54 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_LOM, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_EEN, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_EPEN, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_APT, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_RM, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %81 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @iowrite32(i32 %79, i64 %84)
  %86 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %87 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %86, i32 0, i32 0
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
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
