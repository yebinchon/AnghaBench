; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_xsk_redirect_rqts_to_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_xsk_redirect_rqts_to_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_channels = type { i32, %struct.mlx5e_channel** }
%struct.mlx5e_channel = type { i32 }

@MLX5E_CHANNEL_STATE_XSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xsk_redirect_rqts_to_channels(%struct.mlx5e_priv* %0, %struct.mlx5e_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_channels*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_channel*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_channels* %1, %struct.mlx5e_channels** %5, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %23, i32 0, i32 1
  %25 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %25, i64 %27
  %29 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %28, align 8
  store %struct.mlx5e_channel* %29, %struct.mlx5e_channel** %8, align 8
  %30 = load i32, i32* @MLX5E_CHANNEL_STATE_XSK, align 4
  %31 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @test_bit(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  br label %46

37:                                               ; preds = %22
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %39 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %40 = call i32 @mlx5e_xsk_redirect_rqt_to_channel(%struct.mlx5e_priv* %38, %struct.mlx5e_channel* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %50

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %16

49:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %79

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %74, %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load i32, i32* @MLX5E_CHANNEL_STATE_XSK, align 4
  %58 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %58, i32 0, i32 1
  %60 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %60, i64 %62
  %64 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %63, align 8
  %65 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @test_bit(i32 %57, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %74

70:                                               ; preds = %56
  %71 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @mlx5e_xsk_redirect_rqt_to_drop(%struct.mlx5e_priv* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %7, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %49, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mlx5e_xsk_redirect_rqt_to_channel(%struct.mlx5e_priv*, %struct.mlx5e_channel*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_xsk_redirect_rqt_to_drop(%struct.mlx5e_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
