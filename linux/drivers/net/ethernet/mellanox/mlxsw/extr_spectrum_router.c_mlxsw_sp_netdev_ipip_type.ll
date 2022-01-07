; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdev_ipip_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdev_ipip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_router* }
%struct.mlxsw_sp_router = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i64 }
%struct.net_device = type { i64 }

@MLXSW_SP_IPIP_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i32*)* @mlxsw_sp_netdev_ipip_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdev_ipip_type(%struct.mlxsw_sp* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlxsw_sp_router*, align 8
  %9 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %12, align 8
  store %struct.mlxsw_sp_router* %13, %struct.mlxsw_sp_router** %8, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @MLXSW_SP_IPIP_TYPE_MAX, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %8, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %19, i32 0, i32 0
  %21 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %21, i64 %23
  %25 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %24, align 8
  store %struct.mlxsw_sp_ipip_ops* %25, %struct.mlxsw_sp_ipip_ops** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %9, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  store i32 1, i32* %4, align 4
  br label %45

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %14

44:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
