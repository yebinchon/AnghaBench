; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_hw_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_hw_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ltq_etop_priv = type { i32* }

@PMU_PPE = common dso_local global i32 0, align 4
@MAX_DMA_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ltq_etop_hw_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltq_etop_hw_exit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ltq_etop_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ltq_etop_priv* %6, %struct.ltq_etop_priv** %3, align 8
  %7 = load i32, i32* @PMU_PPE, align 4
  %8 = call i32 @ltq_pmu_disable(i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX_DMA_CHAN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @IS_TX(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @IS_RX(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17, %13
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @ltq_etop_free_channel(%struct.net_device* %22, i32* %28)
  br label %30

30:                                               ; preds = %21, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %9

34:                                               ; preds = %9
  ret void
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ltq_pmu_disable(i32) #1

declare dso_local i64 @IS_TX(i32) #1

declare dso_local i64 @IS_RX(i32) #1

declare dso_local i32 @ltq_etop_free_channel(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
