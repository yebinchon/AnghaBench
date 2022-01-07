; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.encx24j600_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SFR_REG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @encx24j600_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.encx24j600_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.encx24j600_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.encx24j600_priv* %12, %struct.encx24j600_priv** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %7, align 8
  %18 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %36, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @SFR_REG_COUNT, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  %25 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %7, align 8
  %26 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @regmap_read(i32 %28, i64 %29, i32* %10)
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 65535
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %24
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, 2
  store i64 %38, i64* %9, align 8
  br label %20

39:                                               ; preds = %20
  %40 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %7, align 8
  %41 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local %struct.encx24j600_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
