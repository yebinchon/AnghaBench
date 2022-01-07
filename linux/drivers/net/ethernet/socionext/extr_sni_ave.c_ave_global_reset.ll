; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_global_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_global_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { i64, i32 }

@AVE_CFGR_FLE = common dso_local global i32 0, align 4
@AVE_CFGR_IPFCEN = common dso_local global i32 0, align 4
@AVE_CFGR_CHE = common dso_local global i32 0, align 4
@AVE_CFGR_MII = common dso_local global i32 0, align 4
@AVE_CFGR = common dso_local global i64 0, align 8
@AVE_RSTCTRL = common dso_local global i64 0, align 8
@AVE_RSTCTRL_RMIIRST = common dso_local global i32 0, align 4
@AVE_GRR_GRST = common dso_local global i32 0, align 4
@AVE_GRR_PHYRST = common dso_local global i32 0, align 4
@AVE_GRR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ave_global_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ave_global_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ave_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ave_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ave_private* %6, %struct.ave_private** %3, align 8
  %7 = load i32, i32* @AVE_CFGR_FLE, align 4
  %8 = load i32, i32* @AVE_CFGR_IPFCEN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @AVE_CFGR_CHE, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %13 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @phy_interface_mode_is_rgmii(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @AVE_CFGR_MII, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %24 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AVE_CFGR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %30 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AVE_RSTCTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @AVE_RSTCTRL_RMIIRST, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %41 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVE_RSTCTRL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @AVE_GRR_GRST, align 4
  %47 = load i32, i32* @AVE_GRR_PHYRST, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %50 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AVE_GRR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = call i32 @msleep(i32 20)
  %56 = load i32, i32* @AVE_GRR_GRST, align 4
  %57 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %58 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AVE_GRR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = call i32 @msleep(i32 40)
  %64 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %65 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AVE_GRR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 0, i64 %68)
  %70 = call i32 @msleep(i32 40)
  %71 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %72 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AVE_RSTCTRL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @AVE_RSTCTRL_RMIIRST, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %82 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AVE_RSTCTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @ave_irq_disable_all(%struct.net_device* %87)
  ret void
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_interface_mode_is_rgmii(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ave_irq_disable_all(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
