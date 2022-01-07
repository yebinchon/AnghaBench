; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @mlx4_en_dcbnl_ieee_setets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_ieee_setets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %6, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 2
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %7, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %15 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %16 = call i32 @mlx4_en_ets_validate(%struct.mlx4_en_priv* %14, %struct.ieee_ets* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %29 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx4_SET_PORT_PRIO2TC(i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %21
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %38 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %39 = call i32 @mlx4_en_config_port_scheduler(%struct.mlx4_en_priv* %37, %struct.ieee_ets* %38, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 0
  %47 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %48 = call i32 @memcpy(i32* %46, %struct.ieee_ets* %47, i32 4)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %42, %34, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_ets_validate(%struct.mlx4_en_priv*, %struct.ieee_ets*) #1

declare dso_local i32 @mlx4_SET_PORT_PRIO2TC(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_config_port_scheduler(%struct.mlx4_en_priv*, %struct.ieee_ets*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee_ets*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
