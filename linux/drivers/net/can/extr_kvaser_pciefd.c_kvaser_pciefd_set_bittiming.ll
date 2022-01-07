; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.can_bittiming, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@KVASER_PCIEFD_KCAN_BTRN_TSEG2_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_BTRN_TSEG1_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_BTRN_SJW_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_MODE_RM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_BTRD_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_BTRN_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd_can*, i32)* @kvaser_pciefd_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_set_bittiming(%struct.kvaser_pciefd_can* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_pciefd_can*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.can_bittiming*, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %16 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.can_bittiming* %17, %struct.can_bittiming** %11, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %20 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.can_bittiming* %21, %struct.can_bittiming** %11, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.can_bittiming*, %struct.can_bittiming** %11, align 8
  %24 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %26, 31
  %28 = load i32, i32* @KVASER_PCIEFD_KCAN_BTRN_TSEG2_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load %struct.can_bittiming*, %struct.can_bittiming** %11, align 8
  %31 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.can_bittiming*, %struct.can_bittiming** %11, align 8
  %34 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, 511
  %39 = load i32, i32* @KVASER_PCIEFD_KCAN_BTRN_TSEG1_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %29, %40
  %42 = load %struct.can_bittiming*, %struct.can_bittiming** %11, align 8
  %43 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %45, 15
  %47 = load i32, i32* @KVASER_PCIEFD_KCAN_BTRN_SJW_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %41, %48
  %50 = load %struct.can_bittiming*, %struct.can_bittiming** %11, align 8
  %51 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %53, 8191
  %55 = or i32 %49, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %57 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %61 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @ioread32(i64 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_RM, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %70 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @iowrite32(i32 %68, i64 %73)
  %75 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %76 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_RM, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @readl_poll_timeout(i64 %79, i32 %80, i32 %83, i32 0, i32 10)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %22
  %88 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %89 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %88, i32 0, i32 0
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %125

94:                                               ; preds = %22
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %100 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @KVASER_PCIEFD_KCAN_BTRD_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @iowrite32(i32 %98, i64 %103)
  br label %113

105:                                              ; preds = %94
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %108 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @KVASER_PCIEFD_KCAN_BTRN_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @iowrite32(i32 %106, i64 %111)
  br label %113

113:                                              ; preds = %105, %97
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %116 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @iowrite32(i32 %114, i64 %119)
  %121 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %4, align 8
  %122 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %121, i32 0, i32 0
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %113, %87
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
