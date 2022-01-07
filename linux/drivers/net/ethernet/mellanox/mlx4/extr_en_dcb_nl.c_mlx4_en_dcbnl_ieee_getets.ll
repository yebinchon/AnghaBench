; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_getets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_getets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.ieee_ets }

@EINVAL = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @mlx4_en_dcbnl_ieee_getets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_ieee_getets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.ieee_ets*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %6, align 8
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 0
  store %struct.ieee_ets* %11, %struct.ieee_ets** %7, align 8
  %12 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %13 = icmp ne %struct.ieee_ets* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %19 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %20 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %22 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %25 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %27 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %30 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 4)
  %33 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %34 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %37 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %35, i32 %38, i32 4)
  %40 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %41 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %44 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %42, i32 %45, i32 4)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %17, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
