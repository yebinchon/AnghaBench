; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_channels = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.mlx5e_channel_param = type { i32 }
%struct.xdp_umem = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_channels(%struct.mlx5e_priv* %0, %struct.mlx5e_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_channels*, align 8
  %6 = alloca %struct.mlx5e_channel_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xdp_umem*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_channels* %1, %struct.mlx5e_channels** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kcalloc(i32 %20, i32 8, i32 %21)
  %23 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx5e_channel_param* @kvzalloc(i32 4, i32 %25)
  store %struct.mlx5e_channel_param* %26, %struct.mlx5e_channel_param** %6, align 8
  %27 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %33 = icmp ne %struct.mlx5e_channel_param* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %2
  br label %107

35:                                               ; preds = %31
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %37 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %37, i32 0, i32 2
  %39 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %40 = call i32 @mlx5e_build_channel_param(%struct.mlx5e_priv* %36, %struct.TYPE_4__* %38, %struct.mlx5e_channel_param* %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %80, %35
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  store %struct.xdp_umem* null, %struct.xdp_umem** %9, align 8
  %48 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %54, i32 0, i32 2
  %56 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.xdp_umem* @mlx5e_xsk_get_umem(%struct.TYPE_4__* %55, i32 %59, i32 %60)
  store %struct.xdp_umem* %61, %struct.xdp_umem** %9, align 8
  br label %62

62:                                               ; preds = %53, %47
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %65, i32 0, i32 2
  %67 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %68 = load %struct.xdp_umem*, %struct.xdp_umem** %9, align 8
  %69 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @mlx5e_open_channel(%struct.mlx5e_priv* %63, i32 %64, %struct.TYPE_4__* %66, %struct.mlx5e_channel_param* %67, %struct.xdp_umem* %68, i32* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %88

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %41

83:                                               ; preds = %41
  %84 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %85 = call i32 @mlx5e_health_channels_update(%struct.mlx5e_priv* %84)
  %86 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %87 = call i32 @kvfree(%struct.mlx5e_channel_param* %86)
  store i32 0, i32* %3, align 4
  br label %117

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %103, %88
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mlx5e_close_channel(i32 %101)
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %8, align 4
  br label %91

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %34
  %108 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %109 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %113 = call i32 @kvfree(%struct.mlx5e_channel_param* %112)
  %114 = load %struct.mlx5e_channels*, %struct.mlx5e_channels** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5e_channels, %struct.mlx5e_channels* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %107, %83
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.mlx5e_channel_param* @kvzalloc(i32, i32) #1

declare dso_local i32 @mlx5e_build_channel_param(%struct.mlx5e_priv*, %struct.TYPE_4__*, %struct.mlx5e_channel_param*) #1

declare dso_local %struct.xdp_umem* @mlx5e_xsk_get_umem(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mlx5e_open_channel(%struct.mlx5e_priv*, i32, %struct.TYPE_4__*, %struct.mlx5e_channel_param*, %struct.xdp_umem*, i32*) #1

declare dso_local i32 @mlx5e_health_channels_update(%struct.mlx5e_priv*) #1

declare dso_local i32 @kvfree(%struct.mlx5e_channel_param*) #1

declare dso_local i32 @mlx5e_close_channel(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
