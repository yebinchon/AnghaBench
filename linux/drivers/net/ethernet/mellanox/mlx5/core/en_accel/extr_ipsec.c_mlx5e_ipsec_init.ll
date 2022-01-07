; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec.c_mlx5e_ipsec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__*, i32, %struct.mlx5e_ipsec* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_ipsec = type { i32, i32, %struct.mlx5e_priv*, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Not an IPSec offload device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"mlx5e_ipsec: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"IPSec attached to netdevice\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_ipsec_init(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_ipsec*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_ipsec* null, %struct.mlx5e_ipsec** %4, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @MLX5_IPSEC_DEV(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @netdev_dbg(%struct.TYPE_2__* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx5e_ipsec* @kzalloc(i32 32, i32 %16)
  store %struct.mlx5e_ipsec* %17, %struct.mlx5e_ipsec** %4, align 8
  %18 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %19 = icmp ne %struct.mlx5e_ipsec* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %76

23:                                               ; preds = %15
  %24 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @hash_init(i32 %26)
  %28 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %28, i32 0, i32 4
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %31, i32 0, i32 3
  %33 = call i32 @ida_init(i32* %32)
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %35 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %35, i32 0, i32 2
  store %struct.mlx5e_priv* %34, %struct.mlx5e_priv** %36, align 8
  %37 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %38 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %38, i32 0, i32 2
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %39, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 2
  store %struct.mlx5e_ipsec* %37, %struct.mlx5e_ipsec** %41, align 8
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mlx5_accel_ipsec_device_caps(i32 %44)
  %46 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %58)
  %60 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %63 = getelementptr inbounds %struct.mlx5e_ipsec, %struct.mlx5e_ipsec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %23
  %67 = load %struct.mlx5e_ipsec*, %struct.mlx5e_ipsec** %4, align 8
  %68 = call i32 @kfree(%struct.mlx5e_ipsec* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %76

71:                                               ; preds = %23
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @netdev_dbg(%struct.TYPE_2__* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %66, %20, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @MLX5_IPSEC_DEV(i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.mlx5e_ipsec* @kzalloc(i32, i32) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @mlx5_accel_ipsec_device_caps(i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5e_ipsec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
