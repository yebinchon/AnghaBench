; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.qlcnic_adapter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_WOL_CONFIG_NV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_WOL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @qlcnic_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %12 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WAKE_MAGIC, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %17
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = load i32, i32* @QLCNIC_WOL_CONFIG_NV, align 4
  %31 = call i32 @QLCRD32(%struct.qlcnic_adapter* %29, i32 %30, i32* %8)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %92

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %92

49:                                               ; preds = %38
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %51 = load i32, i32* @QLCNIC_WOL_CONFIG, align 4
  %52 = call i32 @QLCRD32(%struct.qlcnic_adapter* %50, i32 %51, i32* %8)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %92

59:                                               ; preds = %49
  %60 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WAKE_MAGIC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = shl i64 1, %70
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = or i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %87

76:                                               ; preds = %59
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  %81 = shl i64 1, %80
  %82 = xor i64 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %76, %66
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %89 = load i32, i32* @QLCNIC_WOL_CONFIG, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @QLCWR32(%struct.qlcnic_adapter* %88, i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %57, %46, %36, %25, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
