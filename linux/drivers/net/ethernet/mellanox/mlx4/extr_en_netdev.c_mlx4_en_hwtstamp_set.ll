; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_hwtstamp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_hwtstamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @mlx4_en_hwtstamp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_hwtstamp_set(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca %struct.hwtstamp_config, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %6, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %7, align 8
  %14 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @copy_from_user(%struct.hwtstamp_config* %8, i32 %16, i32 16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %85

29:                                               ; preds = %22
  %30 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %46 [
    i32 129, label %45
    i32 128, label %45
  ]

45:                                               ; preds = %42, %42
  br label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %55 [
    i32 144, label %52
    i32 145, label %53
    i32 130, label %53
    i32 141, label %53
    i32 140, label %53
    i32 142, label %53
    i32 133, label %53
    i32 132, label %53
    i32 134, label %53
    i32 136, label %53
    i32 135, label %53
    i32 137, label %53
    i32 138, label %53
    i32 131, label %53
    i32 139, label %53
    i32 143, label %53
  ]

52:                                               ; preds = %49
  br label %58

53:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  %54 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 1
  store i32 145, i32* %54, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %85

58:                                               ; preds = %53, %52
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %struct.hwtstamp_config* %8 to { i64, i64 }*
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @mlx4_en_reset_config(%struct.net_device* %59, i64 %65, i64 %67, i32 %62)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 0
  store i32 129, i32* %71, align 8
  %72 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 1
  store i32 144, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %58
  %74 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %75 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @copy_to_user(i32 %76, %struct.hwtstamp_config* %8, i32 16)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  br label %83

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i32 [ %81, %79 ], [ 0, %82 ]
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %55, %46, %39, %26, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i64 @mlx4_en_reset_config(%struct.net_device*, i64, i64, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
