; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_start_controller_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_start_controller_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, i32, i64 }

@KVASER_PCIEFD_KCAN_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_IRQ_ABD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TFD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IEN_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_STAT_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_STAT_IDLE = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CMD_AT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CMD_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_STAT_RMR = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_MODE_RM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_start_controller_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_start_controller_flush(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd_can*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %2, align 8
  %7 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %8 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %12 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KVASER_PCIEFD_KCAN_IRQ_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite32(i32 -1, i64 %15)
  %17 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_ABD, align 4
  %18 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TFD, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %21 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 %19, i64 %24)
  %26 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %27 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KVASER_PCIEFD_KCAN_STAT_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread32(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_IDLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %1
  %37 = load i32, i32* @KVASER_PCIEFD_KCAN_CMD_AT, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %39 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %48 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @KVASER_PCIEFD_KCAN_CMD_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @iowrite32(i32 %46, i64 %51)
  br label %76

53:                                               ; preds = %1
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_RMR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %53
  %59 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %60 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @ioread32(i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_RM, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %70 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @iowrite32(i32 %68, i64 %73)
  br label %75

75:                                               ; preds = %58, %53
  br label %76

76:                                               ; preds = %75, %36
  %77 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %78 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %77, i32 0, i32 1
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
