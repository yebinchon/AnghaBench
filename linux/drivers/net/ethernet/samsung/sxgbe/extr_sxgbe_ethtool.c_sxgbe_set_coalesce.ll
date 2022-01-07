; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32 }
%struct.sxgbe_priv_data = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@SXGBE_MAX_DMA_RIWT = common dso_local global i32 0, align 4
@SXGBE_MIN_DMA_RIWT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @sxgbe_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.sxgbe_priv_data*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device* %8)
  store %struct.sxgbe_priv_data* %9, %struct.sxgbe_priv_data** %6, align 8
  %10 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %22 = call i32 @sxgbe_usec2riwt(i32 %20, %struct.sxgbe_priv_data* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SXGBE_MAX_DMA_RIWT, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SXGBE_MIN_DMA_RIWT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %26
  %34 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %35 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %45 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %47 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %54 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %57 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %52(i32 %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %42, %38, %30, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sxgbe_usec2riwt(i32, %struct.sxgbe_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
