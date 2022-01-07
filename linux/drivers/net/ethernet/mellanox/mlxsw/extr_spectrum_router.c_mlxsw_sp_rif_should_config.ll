; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_should_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_should_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.in_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_rif*, %struct.net_device*, i64)* @mlxsw_sp_rif_should_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_should_config(%struct.mlxsw_sp_rif* %0, %struct.net_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_rif*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in_device*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  switch i64 %11, label %63 [
    i64 128, label %12
    i64 129, label %16
  ]

12:                                               ; preds = %3
  %13 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %14 = icmp eq %struct.mlxsw_sp_rif* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %17)
  store %struct.in_device* %18, %struct.in_device** %10, align 8
  %19 = load %struct.in_device*, %struct.in_device** %10, align 8
  %20 = icmp ne %struct.in_device* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.in_device*, %struct.in_device** %10, align 8
  %23 = getelementptr inbounds %struct.in_device, %struct.in_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %21, %16
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %28)
  store %struct.inet6_dev* %29, %struct.inet6_dev** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %34 = icmp ne %struct.inet6_dev* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %37 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %36, i32 0, i32 0
  %38 = call i32 @list_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %35, %32, %27
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @netif_is_macvlan(%struct.net_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %64

49:                                               ; preds = %45, %41
  %50 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %51 = icmp ne %struct.mlxsw_sp_rif* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_is_l3_slave(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %64

62:                                               ; preds = %55, %52, %49
  store i32 0, i32* %4, align 4
  br label %64

63:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %61, %48, %12
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i32 @netif_is_l3_slave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
