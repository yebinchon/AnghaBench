; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_esp_validate_xfrm_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_esp_validate_xfrm_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i64, i64, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Cannot offload xfrm states with tfc padding\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_REPLAY_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot offload xfrm states with anti replay\0A\00", align 1
@MLX5_ACCEL_ESP_KEYMAT_AES_GCM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Only aes gcm keymat is supported\0A\00", align 1
@MLX5_ACCEL_ESP_AES_GCM_IV_ALGO_SEQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Only iv sequence algo is supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Cannot offload xfrm states with AEAD ICV length other than 128bit\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Cannot offload xfrm states with AEAD key length other than 128/256 bit\0A\00", align 1
@MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED = common dso_local global i32 0, align 4
@ipsec_extended_cap = common dso_local global i32 0, align 4
@v2_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_accel_esp_xfrm_attrs*)* @mlx5_fpga_esp_validate_xfrm_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_esp_validate_xfrm_attrs(%struct.mlx5_core_dev* %0, %struct.mlx5_accel_esp_xfrm_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_accel_esp_xfrm_attrs*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_accel_esp_xfrm_attrs* %1, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %6 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %7 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX5_ACCEL_ESP_REPLAY_NONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %23 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %106

26:                                               ; preds = %15
  %27 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MLX5_ACCEL_ESP_KEYMAT_AES_GCM, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %34 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %26
  %38 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MLX5_ACCEL_ESP_AES_GCM_IV_ALGO_SEQ, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %47 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %106

50:                                               ; preds = %37
  %51 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 128
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %59 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %106

62:                                               ; preds = %50
  %63 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 128
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 256
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %78 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %77, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %106

81:                                               ; preds = %69, %62
  %82 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %5, align 8
  %83 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %81
  %89 = load i32, i32* @ipsec_extended_cap, align 4
  %90 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @v2_command, align 4
  %98 = call i32 @MLX5_GET(i32 %89, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %88
  %101 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %102 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %101, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %88, %81
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %100, %76, %57, %45, %32, %21, %10
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
