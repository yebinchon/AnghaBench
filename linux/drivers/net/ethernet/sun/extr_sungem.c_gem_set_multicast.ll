; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_set_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { i32, i64, i32, i64 }

@MAC_RXCFG = common dso_local global i64 0, align 8
@MAC_RXCFG_ENAB = common dso_local global i32 0, align 4
@MAC_RXCFG_PROM = common dso_local global i32 0, align 4
@MAC_RXCFG_HFE = common dso_local global i32 0, align 4
@MAC_RXCFG_SFCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gem_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.gem* @netdev_priv(%struct.net_device* %7)
  store %struct.gem* %8, %struct.gem** %3, align 8
  store i32 10000, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_device_present(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %1
  br label %88

17:                                               ; preds = %12
  %18 = load %struct.gem*, %struct.gem** %3, align 8
  %19 = getelementptr inbounds %struct.gem, %struct.gem* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load %struct.gem*, %struct.gem** %3, align 8
  %24 = getelementptr inbounds %struct.gem, %struct.gem* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %17
  br label %88

32:                                               ; preds = %22
  %33 = load %struct.gem*, %struct.gem** %3, align 8
  %34 = getelementptr inbounds %struct.gem, %struct.gem* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAC_RXCFG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.gem*, %struct.gem** %3, align 8
  %40 = call i32 @gem_setup_multicast(%struct.gem* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.gem*, %struct.gem** %3, align 8
  %43 = getelementptr inbounds %struct.gem, %struct.gem* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load %struct.gem*, %struct.gem** %3, align 8
  %49 = getelementptr inbounds %struct.gem, %struct.gem* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAC_RXCFG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  br label %54

54:                                               ; preds = %69, %32
  %55 = load %struct.gem*, %struct.gem** %3, align 8
  %56 = getelementptr inbounds %struct.gem, %struct.gem* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MAC_RXCFG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  %61 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  %67 = icmp ne i32 %65, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %71

69:                                               ; preds = %64
  %70 = call i32 @udelay(i32 10)
  br label %54

71:                                               ; preds = %68, %54
  %72 = load i32, i32* @MAC_RXCFG_PROM, align 4
  %73 = load i32, i32* @MAC_RXCFG_HFE, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.gem*, %struct.gem** %3, align 8
  %83 = getelementptr inbounds %struct.gem, %struct.gem* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MAC_RXCFG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  br label %88

88:                                               ; preds = %71, %31, %16
  ret void
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @gem_setup_multicast(%struct.gem*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
