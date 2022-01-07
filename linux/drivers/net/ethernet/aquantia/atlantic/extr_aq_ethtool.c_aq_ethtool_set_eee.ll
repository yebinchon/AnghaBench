; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64 }
%struct.aq_nic_s = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64*, i64*)*, i32 (i32, i64)* }
%struct.aq_nic_cfg_s = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @aq_ethtool_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.aq_nic_cfg_s*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %11)
  store %struct.aq_nic_s* %12, %struct.aq_nic_s** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %14 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %13)
  store %struct.aq_nic_cfg_s* %14, %struct.aq_nic_cfg_s** %9, align 8
  %15 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %16 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i64*, i64*)*, i32 (i32, i64*, i64*)** %18, align 8
  %20 = icmp ne i32 (i32, i64*, i64*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %23 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (i32, i64)*, i32 (i32, i64)** %25, align 8
  %27 = icmp ne i32 (i32, i64)* %26, null
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %2
  %30 = phi i1 [ true, %2 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %88

37:                                               ; preds = %29
  %38 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %39 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %42 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32, i64*, i64*)*, i32 (i32, i64*, i64*)** %44, align 8
  %46 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %47 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %45(i32 %48, i64* %7, i64* %8)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %51 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %88

57:                                               ; preds = %37
  %58 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %66 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %70

67:                                               ; preds = %57
  store i64 0, i64* %7, align 8
  %68 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %9, align 8
  %69 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %72 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %75 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (i32, i64)*, i32 (i32, i64)** %77, align 8
  %79 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %80 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 %78(i32 %81, i64 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %85 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %70, %55, %34
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
