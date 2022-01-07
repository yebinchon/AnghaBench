; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_allocate_port_vpps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_allocate_port_vpps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qos_manager = type { i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx4_qos_manager* }

@MLX4_NUM_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed query available VPPs\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed allocating VPPs\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Port %d Available VPPs %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Port %d UP %d Allocated %d VPPs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32)* @mlx4_allocate_port_vpps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_allocate_port_vpps(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mlx4_qos_manager*, align 8
  %12 = alloca %struct.mlx4_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @MLX4_NUM_UP, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %19 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %18)
  store %struct.mlx4_priv* %19, %struct.mlx4_priv** %12, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mlx4_ALLOCATE_VPP_get(%struct.mlx4_dev* %20, i32 %21, i32* %8, i32* %17)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %27 = call i32 @mlx4_info(%struct.mlx4_dev* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %107

28:                                               ; preds = %2
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %33, i64 %35
  store %struct.mlx4_qos_manager* %36, %struct.mlx4_qos_manager** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %11, align 8
  %39 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MLX4_NUM_UP, align 4
  %42 = call i32 @bitmap_weight(i32 %40, i32 %41)
  %43 = sdiv i32 %37, %42
  store i32 %43, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %61, %28
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MLX4_NUM_UP, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %11, align 8
  %51 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @test_bit(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %17, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @mlx4_ALLOCATE_VPP_set(%struct.mlx4_dev* %65, i32 %66, i32* %17)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %72 = call i32 @mlx4_info(%struct.mlx4_dev* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %107

73:                                               ; preds = %64
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @mlx4_ALLOCATE_VPP_get(%struct.mlx4_dev* %74, i32 %75, i32* %8, i32* %17)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = call i32 @mlx4_info(%struct.mlx4_dev* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %107

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.mlx4_qos_manager*, %struct.mlx4_qos_manager** %11, align 8
  %85 = getelementptr inbounds %struct.mlx4_qos_manager, %struct.mlx4_qos_manager* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %103, %82
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @MLX4_NUM_UP, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %17, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %90

106:                                              ; preds = %90
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %106, %79, %70, %25
  %108 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %13, align 4
  switch i32 %109, label %111 [
    i32 0, label %110
    i32 1, label %110
  ]

110:                                              ; preds = %107, %107
  ret void

111:                                              ; preds = %107
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #2

declare dso_local i32 @mlx4_ALLOCATE_VPP_get(%struct.mlx4_dev*, i32, i32*, i32*) #2

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*) #2

declare dso_local i32 @bitmap_weight(i32, i32) #2

declare dso_local i64 @test_bit(i32, i32) #2

declare dso_local i32 @mlx4_ALLOCATE_VPP_set(%struct.mlx4_dev*, i32, i32*) #2

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
