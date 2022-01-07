; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad_ethtool.c_bnad_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_ioc_attr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BNAD_NAME = common dso_local global i32 0, align 4
@BNAD_VERSION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @bnad_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bfa_ioc_attr*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnad* @netdev_priv(%struct.net_device* %8)
  store %struct.bnad* %9, %struct.bnad** %5, align 8
  %10 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNAD_NAME, align 4
  %14 = call i32 @strlcpy(i32 %12, i32 %13, i32 4)
  %15 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BNAD_VERSION, align 4
  %19 = call i32 @strlcpy(i32 %17, i32 %18, i32 4)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.bfa_ioc_attr* @kzalloc(i32 4, i32 %20)
  store %struct.bfa_ioc_attr* %21, %struct.bfa_ioc_attr** %6, align 8
  %22 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %6, align 8
  %23 = icmp ne %struct.bfa_ioc_attr* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %2
  %25 = load %struct.bnad*, %struct.bnad** %5, align 8
  %26 = getelementptr inbounds %struct.bnad, %struct.bnad* %25, i32 0, i32 1
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.bnad*, %struct.bnad** %5, align 8
  %30 = getelementptr inbounds %struct.bnad, %struct.bnad* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %6, align 8
  %34 = call i32 @bfa_nw_ioc_get_attr(i32* %32, %struct.bfa_ioc_attr* %33)
  %35 = load %struct.bnad*, %struct.bnad** %5, align 8
  %36 = getelementptr inbounds %struct.bnad, %struct.bnad* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %6, align 8
  %43 = getelementptr inbounds %struct.bfa_ioc_attr, %struct.bfa_ioc_attr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strlcpy(i32 %41, i32 %45, i32 4)
  %47 = load %struct.bfa_ioc_attr*, %struct.bfa_ioc_attr** %6, align 8
  %48 = call i32 @kfree(%struct.bfa_ioc_attr* %47)
  br label %49

49:                                               ; preds = %24, %2
  %50 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bnad*, %struct.bnad** %5, align 8
  %54 = getelementptr inbounds %struct.bnad, %struct.bnad* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pci_name(i32 %55)
  %57 = call i32 @strlcpy(i32 %52, i32 %56, i32 4)
  ret void
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.bfa_ioc_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_nw_ioc_get_attr(i32*, %struct.bfa_ioc_attr*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.bfa_ioc_attr*) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
