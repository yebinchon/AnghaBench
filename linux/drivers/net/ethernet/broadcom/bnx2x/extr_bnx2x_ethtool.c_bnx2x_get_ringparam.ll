; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }
%struct.bnx2x = type { i32, i32 }

@MAX_RX_AVAIL = common dso_local global i32 0, align 4
@MAX_TX_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @bnx2x_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %6)
  store %struct.bnx2x* %7, %struct.bnx2x** %5, align 8
  %8 = load i32, i32* @MAX_RX_AVAIL, align 4
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = call i32 @BNX2X_NUM_RX_QUEUES(%struct.bnx2x* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @MAX_RX_AVAIL, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %28 = call i32 @BNX2X_NUM_RX_QUEUES(%struct.bnx2x* %27)
  %29 = sdiv i32 %26, %28
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @MAX_RX_AVAIL, align 4
  %34 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %39 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @MAX_TX_AVAIL, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ 0, %41 ], [ %43, %42 ]
  %46 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNX2X_NUM_RX_QUEUES(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_FCOE_AFEX(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
