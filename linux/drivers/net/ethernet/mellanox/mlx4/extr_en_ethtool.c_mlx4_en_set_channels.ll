; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32 }
%struct.mlx4_en_priv = type { i64, i64*, %struct.TYPE_4__*, i64, %struct.mlx4_en_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_en_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_en_port_profile = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_XDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"Total number of TX and XDP rings (%d) exceeds the maximum supported (%d)\0A\00", align 1
@MAX_TX_RINGS = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@MLX4_EN_NUM_UP_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Using %d TX rings\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Using %d RX rings\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed starting port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @mlx4_en_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca %struct.mlx4_en_port_profile, align 8
  %9 = alloca %struct.mlx4_en_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx4_en_priv* %15, %struct.mlx4_en_priv** %6, align 8
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 4
  %18 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %17, align 8
  store %struct.mlx4_en_dev* %18, %struct.mlx4_en_dev** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %205

31:                                               ; preds = %23
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mlx4_en_priv* @kzalloc(i32 40, i32 %32)
  store %struct.mlx4_en_priv* %33, %struct.mlx4_en_priv** %9, align 8
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %35 = icmp ne %struct.mlx4_en_priv* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %205

39:                                               ; preds = %31
  %40 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @TX_XDP, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  store i32 %56, i32* %11, align 4
  %57 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 4
  %70 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %69, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = icmp sgt i32 %67, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %55
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %85 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %87, %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @MAX_TX_RINGS, align 4
  %97 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %84, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  br label %198

98:                                               ; preds = %55
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = call i32 @memcpy(%struct.mlx4_en_port_profile* %8, %struct.TYPE_4__* %101, i32 24)
  %103 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %109, %114
  %116 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @TX, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @TX_XDP, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %8, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %130 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %131 = call i32 @mlx4_en_try_alloc_resources(%struct.mlx4_en_priv* %129, %struct.mlx4_en_priv* %130, %struct.mlx4_en_port_profile* %8, i32 1)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %98
  br label %198

135:                                              ; preds = %98
  %136 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %137 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  store i32 1, i32* %10, align 4
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = call i32 @mlx4_en_stop_port(%struct.net_device* %141, i32 1)
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %145 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %146 = call i32 @mlx4_en_safe_replace_resources(%struct.mlx4_en_priv* %144, %struct.mlx4_en_priv* %145)
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %147, i64 %150)
  %152 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %153 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @MLX4_EN_NUM_UP_LOW, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %166

160:                                              ; preds = %143
  %161 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %162 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  br label %166

166:                                              ; preds = %160, %159
  %167 = phi i32 [ 0, %159 ], [ %165, %160 ]
  store i32 %167, i32* %13, align 4
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @mlx4_en_setup_tc(%struct.net_device* %168, i32 %169)
  %171 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %172 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %173 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* @TX, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @en_warn(%struct.mlx4_en_priv* %171, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %177)
  %179 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %180 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %181 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @en_warn(%struct.mlx4_en_priv* %179, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %182)
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %166
  %187 = load %struct.net_device*, %struct.net_device** %4, align 8
  %188 = call i32 @mlx4_en_start_port(%struct.net_device* %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %193 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %186
  br label %195

195:                                              ; preds = %194, %166
  %196 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %197 = call i32 @mlx4_en_moderation_update(%struct.mlx4_en_priv* %196)
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %195, %134, %81
  %199 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %200 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %203 = call i32 @kfree(%struct.mlx4_en_priv* %202)
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %198, %36, %28
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlx4_en_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.mlx4_en_port_profile*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mlx4_en_try_alloc_resources(%struct.mlx4_en_priv*, %struct.mlx4_en_priv*, %struct.mlx4_en_port_profile*, i32) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_safe_replace_resources(%struct.mlx4_en_priv*, %struct.mlx4_en_priv*) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i64) #1

declare dso_local i32 @mlx4_en_setup_tc(%struct.net_device*, i32) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, i64) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_moderation_update(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_en_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
