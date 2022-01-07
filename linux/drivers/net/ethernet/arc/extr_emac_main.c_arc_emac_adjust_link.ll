; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64 }
%struct.arc_emac_priv = type { i64, i64, i64, i32 (%struct.arc_emac_priv*, i64)* }

@R_CTRL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@ENFL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @arc_emac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_emac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arc_emac_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.arc_emac_priv* %8, %struct.arc_emac_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %24 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %27 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %25
  %34 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %38 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  store i32 1, i32* %6, align 4
  %39 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %40 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %39, i32 0, i32 3
  %41 = load i32 (%struct.arc_emac_priv*, i64)*, i32 (%struct.arc_emac_priv*, i64)** %40, align 8
  %42 = icmp ne i32 (%struct.arc_emac_priv*, i64)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %45 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %44, i32 0, i32 3
  %46 = load i32 (%struct.arc_emac_priv*, i64)*, i32 (%struct.arc_emac_priv*, i64)** %45, align 8
  %47 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %48 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %49 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 %46(%struct.arc_emac_priv* %47, i64 %50)
  br label %52

52:                                               ; preds = %43, %33
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %55 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %53
  %62 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %63 = load i32, i32* @R_CTRL, align 4
  %64 = call i32 @arc_reg_get(%struct.arc_emac_priv* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DUPLEX_FULL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @ENFL_MASK, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %79

74:                                               ; preds = %61
  %75 = load i32, i32* @ENFL_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %81 = load i32, i32* @R_CTRL, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @arc_reg_set(%struct.arc_emac_priv* %80, i32 %81, i32 %82)
  %84 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %88 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %79, %53
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %94 = call i32 @phy_print_status(%struct.phy_device* %93)
  br label %95

95:                                               ; preds = %92, %89
  ret void
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_reg_get(%struct.arc_emac_priv*, i32) #1

declare dso_local i32 @arc_reg_set(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
