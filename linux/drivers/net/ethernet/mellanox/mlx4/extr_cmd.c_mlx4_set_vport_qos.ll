; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vport_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vport_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_4__, %struct.mlx4_dev }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx4_qos_manager* }
%struct.mlx4_qos_manager = type { i32, i32 }
%struct.mlx4_dev = type { i32 }
%struct.mlx4_vport_qos_param = type { i32, i32 }

@MLX4_NUM_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No available VPP resources for this VF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to query Vport 0 QoS values\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to set Vport %d QoS values\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32, i32, i32)* @mlx4_set_vport_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_set_vport_qos(%struct.mlx4_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_qos_manager*, align 8
  %13 = alloca %struct.mlx4_dev*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 1
  store %struct.mlx4_dev* %18, %struct.mlx4_dev** %13, align 8
  %19 = load i32, i32* @MLX4_NUM_UP, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca %struct.mlx4_vport_qos_param, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %27, i64 %29
  store %struct.mlx4_qos_manager* %30, %struct.mlx4_qos_manager** %12, align 8
  %31 = load i32, i32* @MLX4_NUM_UP, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(%struct.mlx4_vport_qos_param* %22, i32 0, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %12, align 8
  %38 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  %43 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

46:                                               ; preds = %4
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @mlx4_SET_VPORT_QOS_get(%struct.mlx4_dev* %47, i32 %48, i32 0, %struct.mlx4_vport_qos_param* %22)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  %54 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

56:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %87, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MLX4_NUM_UP, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %12, align 8
  %64 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @test_bit(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %22, i64 %74
  %76 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %22, i64 %78
  %80 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  br label %86

81:                                               ; preds = %68, %61
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %22, i64 %83
  %85 = getelementptr inbounds %struct.mlx4_vport_qos_param, %struct.mlx4_vport_qos_param* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %57

90:                                               ; preds = %57
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mlx4_SET_VPORT_QOS_set(%struct.mlx4_dev* %91, i32 %92, i32 %93, %struct.mlx4_vport_qos_param* %22)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %13, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

102:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %97, %52, %41
  %104 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.mlx4_vport_qos_param*, i32, i32) #2

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, ...) #2

declare dso_local i32 @mlx4_SET_VPORT_QOS_get(%struct.mlx4_dev*, i32, i32, %struct.mlx4_vport_qos_param*) #2

declare dso_local i64 @test_bit(i32, i32) #2

declare dso_local i32 @mlx4_SET_VPORT_QOS_set(%struct.mlx4_dev*, i32, i32, %struct.mlx4_vport_qos_param*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
