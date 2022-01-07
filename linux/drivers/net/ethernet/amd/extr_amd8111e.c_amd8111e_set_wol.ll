; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.amd8111e_priv = type { i32, i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OPTION_WOL_ENABLE = common dso_local global i32 0, align 4
@OPTION_WAKE_MAGIC_ENABLE = common dso_local global i32 0, align 4
@OPTION_WAKE_PHY_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @amd8111e_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.amd8111e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.amd8111e_priv* %8, %struct.amd8111e_priv** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_MAGIC, align 4
  %13 = load i32, i32* @WAKE_PHY, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %6, align 8
  %23 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WAKE_MAGIC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @OPTION_WOL_ENABLE, align 4
  %33 = load i32, i32* @OPTION_WAKE_MAGIC_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %6, align 8
  %36 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %62

39:                                               ; preds = %21
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WAKE_PHY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32, i32* @OPTION_WOL_ENABLE, align 4
  %48 = load i32, i32* @OPTION_WAKE_PHY_ENABLE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %6, align 8
  %51 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %61

54:                                               ; preds = %39
  %55 = load i32, i32* @OPTION_WOL_ENABLE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %6, align 8
  %58 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %46
  br label %62

62:                                               ; preds = %61, %31
  %63 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %6, align 8
  %64 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_irq(i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
