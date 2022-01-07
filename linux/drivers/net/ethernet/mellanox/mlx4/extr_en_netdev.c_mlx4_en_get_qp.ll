; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_get_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_3__*, %struct.mlx4_en_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_en_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Registering MAC: %pM for adding\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed adding MAC: %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Steering Mode %d\0A\00", align 1
@MLX4_STEERING_MODE_A0 = common dso_local global i64 0, align 8
@MLX4_RESERVE_A0_QP = common dso_local global i32 0, align 4
@MLX4_RES_USAGE_DRIVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Reserved qp %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to reserve qp for mac registration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_get_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_qp(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 3
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %4, align 8
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %14, i32 0, i32 0
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %15, align 8
  store %struct.mlx4_dev* %16, %struct.mlx4_dev** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 0
  store i32* %18, i32** %8, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlx4_mac_to_u64(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @DRV, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @en_dbg(i32 %25, %struct.mlx4_en_priv* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @mlx4_register_mac(%struct.mlx4_dev* %33, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %1
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %98

51:                                               ; preds = %1
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @en_info(%struct.mlx4_en_priv* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %59 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MLX4_STEERING_MODE_A0, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %51
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mlx4_get_base_qpn(%struct.mlx4_dev* %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %98

74:                                               ; preds = %51
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @MLX4_RESERVE_A0_QP, align 4
  %78 = load i32, i32* @MLX4_RES_USAGE_DRIVER, align 4
  %79 = call i32 @mlx4_qp_reserve_range(%struct.mlx4_dev* %75, i32 1, i32 1, i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @DRV, align 4
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @en_dbg(i32 %80, %struct.mlx4_en_priv* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %74
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %89 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %91 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @mlx4_unregister_mac(%struct.mlx4_dev* %90, i32 %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %87, %64, %41
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mlx4_mac_to_u64(i32) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mlx4_register_mac(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @en_info(%struct.mlx4_en_priv*, i8*, i64) #1

declare dso_local i32 @mlx4_get_base_qpn(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_qp_reserve_range(%struct.mlx4_dev*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mlx4_unregister_mac(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
