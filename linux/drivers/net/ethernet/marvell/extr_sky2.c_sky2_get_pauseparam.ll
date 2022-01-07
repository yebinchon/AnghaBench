; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.sky2_port = type { i32, i32 }

@SKY2_FLAG_AUTO_PAUSE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @sky2_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.sky2_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %6)
  store %struct.sky2_port* %7, %struct.sky2_port** %5, align 8
  %8 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 130, label %11
    i32 128, label %16
    i32 129, label %21
    i32 131, label %26
  ]

11:                                               ; preds = %2
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %2, %21, %16, %11
  %32 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %33 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SKY2_FLAG_AUTO_PAUSE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
