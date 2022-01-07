; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_detach_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_detach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5i_priv*, %struct.mlx5_core_dev* }
%struct.mlx5i_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"detaching QPN 0x%x, MGID %pI6\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed detaching QPN 0x%x, MGID %pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ib_device*, %union.ib_gid*, i32)* @mlx5i_detach_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_detach_mcast(%struct.net_device* %0, %struct.ib_device* %1, %union.ib_gid* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5e_priv*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca %struct.mlx5i_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %13)
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %9, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %10, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 0
  %20 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %19, align 8
  store %struct.mlx5i_priv* %20, %struct.mlx5i_priv** %11, align 8
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %22 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %11, align 8
  %23 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %27 = bitcast %union.ib_gid* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %31 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %32 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %11, align 8
  %33 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlx5_core_detach_mcg(%struct.mlx5_core_dev* %30, %union.ib_gid* %31, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %4
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %41 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %11, align 8
  %42 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %46 = bitcast %union.ib_gid* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %39, %4
  %50 = load i32, i32* %12, align 4
  ret i32 %50
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_detach_mcg(%struct.mlx5_core_dev*, %union.ib_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
