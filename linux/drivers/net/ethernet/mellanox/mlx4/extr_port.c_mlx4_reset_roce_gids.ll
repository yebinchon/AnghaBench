; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_reset_roce_gids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_reset_roce_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_active_ports = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }

@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Could not reset ETH port GID table for slave %d, port %d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_reset_roce_gids(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_active_ports, align 4
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_active_ports, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %2
  br label %125

22:                                               ; preds = %13
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @mlx4_get_active_ports(%struct.mlx4_dev* %23, i32 %24)
  %26 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.mlx4_active_ports* %5 to i8*
  %28 = bitcast %struct.mlx4_active_ports* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %59, %22
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @test_bit(i32 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %36
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %125

66:                                               ; preds = %62
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %68 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %67)
  store %struct.mlx4_cmd_mailbox* %68, %struct.mlx4_cmd_mailbox** %6, align 8
  %69 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %70 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %125

73:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %118, %73
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = getelementptr inbounds %struct.mlx4_active_ports, %struct.mlx4_active_ports* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @test_bit(i32 %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %81
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %118

100:                                              ; preds = %87
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %106 = call i32 @mlx4_reset_roce_port_gids(%struct.mlx4_dev* %101, i32 %102, i32 %104, %struct.mlx4_cmd_mailbox* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @mlx4_warn(%struct.mlx4_dev* %110, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %100
  br label %117

117:                                              ; preds = %116, %81
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %74

121:                                              ; preds = %74
  %122 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %123 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %124 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %122, %struct.mlx4_cmd_mailbox* %123)
  br label %125

125:                                              ; preds = %121, %72, %65, %21
  ret void
}

declare dso_local i32 @mlx4_get_active_ports(%struct.mlx4_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_reset_roce_port_gids(%struct.mlx4_dev*, i32, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
