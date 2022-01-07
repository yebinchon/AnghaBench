; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hix5hd2_priv = type { i32, i64 }

@RAW_PMU_INT = common dso_local global i64 0, align 8
@DEF_INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hix5hd2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hix5hd2_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hix5hd2_priv* %11, %struct.hix5hd2_priv** %6, align 8
  %12 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RAW_PMU_INT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %6, align 8
  %20 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RAW_PMU_INT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DEF_INT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %6, align 8
  %32 = call i32 @hix5hd2_irq_disable(%struct.hix5hd2_priv* %31)
  %33 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %6, align 8
  %34 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %33, i32 0, i32 0
  %35 = call i32 @napi_schedule(i32* %34)
  br label %36

36:                                               ; preds = %30, %2
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hix5hd2_irq_disable(%struct.hix5hd2_priv*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
