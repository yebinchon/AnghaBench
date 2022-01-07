; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.jme_adapter = type { i32, %struct.ethtool_link_ksettings, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@JME_FLAG_SSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @jme_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.jme_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.jme_adapter* %10, %struct.jme_adapter** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPEED_1000, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AUTONEG_ENABLE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %17, %2
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AUTONEG_ENABLE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %40, %33, %27
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %52, i32 0, i32 2
  %54 = call i32 @spin_lock_bh(i32* %53)
  %55 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %55, i32 0, i32 3
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %58 = call i32 @mii_ethtool_set_link_ksettings(%struct.TYPE_4__* %56, %struct.ethtool_link_ksettings* %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %59, i32 0, i32 2
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %69 = call i32 @jme_reset_link(%struct.jme_adapter* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %72 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %71, i32 0, i32 1
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %74 = bitcast %struct.ethtool_link_ksettings* %72 to i8*
  %75 = bitcast %struct.ethtool_link_ksettings* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = load i32, i32* @JME_FLAG_SSET, align 4
  %77 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %77, i32 0, i32 0
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  br label %80

80:                                               ; preds = %70, %51
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %24
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mii_ethtool_set_link_ksettings(%struct.TYPE_4__*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @jme_reset_link(%struct.jme_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
