; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.ice_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ice_pf* }
%struct.ice_pf = type { %struct.ice_hw }
%struct.ice_hw = type { i32 }

@ice_regs_dump_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @ice_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ice_netdev_priv*, align 8
  %8 = alloca %struct.ice_pf*, align 8
  %9 = alloca %struct.ice_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ice_netdev_priv* %13, %struct.ice_netdev_priv** %7, align 8
  %14 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %7, align 8
  %15 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ice_pf*, %struct.ice_pf** %17, align 8
  store %struct.ice_pf* %18, %struct.ice_pf** %8, align 8
  %19 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %20 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %19, i32 0, i32 0
  store %struct.ice_hw* %20, %struct.ice_hw** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %42, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** @ice_regs_dump_list, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %32 = load i32*, i32** @ice_regs_dump_list, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rd32(%struct.ice_hw* %31, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %25

45:                                               ; preds = %25
  ret void
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
