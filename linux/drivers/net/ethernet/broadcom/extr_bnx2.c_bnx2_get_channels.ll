; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i32, i32, i64, i64, i8*, i8* }
%struct.bnx2 = type { i32, i32, i32 }

@BNX2_FLAG_MSIX_CAP = common dso_local global i32 0, align 4
@disable_msi = common dso_local global i32 0, align 4
@RX_MAX_RINGS = common dso_local global i8* null, align 8
@TX_MAX_RINGS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @bnx2_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnx2* @netdev_priv(%struct.net_device* %8)
  store %struct.bnx2* %9, %struct.bnx2** %5, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %7, align 8
  %10 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @disable_msi, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** @RX_MAX_RINGS, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** @TX_MAX_RINGS, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %16, %2
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  ret void
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
