; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02e_beacon_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mmio.c_mt76x02e_beacon_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_INT_TIMER_EN = common dso_local global i32 0, align 4
@MT_INT_TIMER_EN_PRE_TBTT_EN = common dso_local global i32 0, align 4
@MT_INT_PRE_TBTT = common dso_local global i32 0, align 4
@MT_INT_TBTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x02e_beacon_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02e_beacon_enable(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %6 = load i32, i32* @MT_INT_TIMER_EN, align 4
  %7 = load i32, i32* @MT_INT_TIMER_EN_PRE_TBTT_EN, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %5, i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %14 = load i32, i32* @MT_INT_PRE_TBTT, align 4
  %15 = load i32, i32* @MT_INT_TBTT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mt76x02_irq_enable(%struct.mt76x02_dev* %13, i32 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = load i32, i32* @MT_INT_PRE_TBTT, align 4
  %21 = load i32, i32* @MT_INT_TBTT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @mt76x02_irq_disable(%struct.mt76x02_dev* %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x02_irq_enable(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_irq_disable(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
