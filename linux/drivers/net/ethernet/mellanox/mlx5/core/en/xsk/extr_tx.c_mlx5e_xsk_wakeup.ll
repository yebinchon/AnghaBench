; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_tx.c_mlx5e_xsk_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_tx.c_mlx5e_xsk_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5e_channel**, %struct.mlx5e_params }
%struct.mlx5e_channel = type { i32, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_params = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@MLX5E_RQ_GROUP_XSK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5E_CHANNEL_STATE_XSK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MLX5E_SQ_STATE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xsk_wakeup(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5e_params*, align 8
  %10 = alloca %struct.mlx5e_channel*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx5e_priv* %13, %struct.mlx5e_priv** %8, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.mlx5e_params* %16, %struct.mlx5e_params** %9, align 8
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %18 = call i32 @mlx5e_xdp_is_open(%struct.mlx5e_priv* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENETDOWN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MLX5E_RQ_GROUP_XSK, align 4
  %31 = call i32 @mlx5e_qid_get_ch_if_in_group(%struct.mlx5e_params* %28, i32 %29, i32 %30, i64* %11)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %89

40:                                               ; preds = %27
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %44, i64 %45
  %47 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %46, align 8
  store %struct.mlx5e_channel* %47, %struct.mlx5e_channel** %10, align 8
  %48 = load i32, i32* @MLX5E_CHANNEL_STATE_XSK, align 4
  %49 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %50 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @test_bit(i32 %48, i32* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %89

61:                                               ; preds = %40
  %62 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %63 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %62, i32 0, i32 2
  %64 = call i32 @napi_if_scheduled_mark_missed(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @MLX5E_SQ_STATE_ENABLED, align 4
  %68 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %69 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @test_bit(i32 %67, i32* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %89

78:                                               ; preds = %66
  %79 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %80 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %79, i32 0, i32 0
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %83 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %82, i32 0, i32 1
  %84 = call i32 @mlx5e_trigger_irq(%struct.TYPE_4__* %83)
  %85 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %10, align 8
  %86 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %78, %61
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %77, %58, %37, %24
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xdp_is_open(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_qid_get_ch_if_in_group(%struct.mlx5e_params*, i32, i32, i64*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @napi_if_scheduled_mark_missed(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlx5e_trigger_irq(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
