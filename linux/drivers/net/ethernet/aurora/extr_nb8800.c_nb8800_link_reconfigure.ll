; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_link_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_link_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64 }
%struct.nb8800_priv = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nb8800_link_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nb8800_link_reconfigure(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.nb8800_priv* %7, %struct.nb8800_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %20 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %28 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %15
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %34 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %42 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @nb8800_mac_config(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @nb8800_pause_config(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %49, %1
  %53 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %57 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %65 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %52
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %71 = call i32 @phy_print_status(%struct.phy_device* %70)
  br label %72

72:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_mac_config(%struct.net_device*) #1

declare dso_local i32 @nb8800_pause_config(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
