; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_handle_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_handle_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32 }
%struct.netdata_local = type { i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lpc_handle_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_handle_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdata_local*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %7)
  store %struct.netdata_local* %8, %struct.netdata_local** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %13 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %12, i32 0, i32 3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %1
  %21 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %22 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %30 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %28, %20
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %41 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %46 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %36, %28
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %53 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %48
  %57 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %63 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %65 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %71 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %66, %48
  %73 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %74 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %73, i32 0, i32 3
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %81 = call i32 @__lpc_params_setup(%struct.netdata_local* %80)
  br label %82

82:                                               ; preds = %79, %72
  ret void
}

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__lpc_params_setup(%struct.netdata_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
