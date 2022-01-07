; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_attach_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_attach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.mlx5e_priv = type { %struct.mlx5i_priv*, %struct.mlx5_core_dev* }
%struct.mlx5i_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"attaching QPN 0x%x, MGID %pI6\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed attaching QPN 0x%x, MGID %pI6\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s setting qkey 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ib_device*, %union.ib_gid*, i32, i32, i32)* @mlx5i_attach_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_attach_mcast(%struct.net_device* %0, %struct.ib_device* %1, %union.ib_gid* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5e_priv*, align 8
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca %struct.mlx5i_priv*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.ib_device* %1, %struct.ib_device** %8, align 8
  store %union.ib_gid* %2, %union.ib_gid** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %17)
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %13, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %13, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %14, align 8
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %13, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 0
  %24 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %23, align 8
  store %struct.mlx5i_priv* %24, %struct.mlx5i_priv** %15, align 8
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %26 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %15, align 8
  %27 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %31 = bitcast %union.ib_gid* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %35 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %36 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %15, align 8
  %37 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlx5_core_attach_mcg(%struct.mlx5_core_dev* %34, %union.ib_gid* %35, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %6
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %45 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %15, align 8
  %46 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %50 = bitcast %union.ib_gid* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %43, %6
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %15, align 8
  %65 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %56, %53
  %67 = load i32, i32* %16, align 4
  ret i32 %67
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_attach_mcg(%struct.mlx5_core_dev*, %union.ib_gid*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
