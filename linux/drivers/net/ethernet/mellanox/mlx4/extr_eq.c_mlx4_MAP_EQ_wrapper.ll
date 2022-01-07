; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_mlx4_MAP_EQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_mlx4_MAP_EQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_vhcr = type { i32, i64 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mlx4_slave_event_eq_info* }
%struct.mlx4_slave_event_eq_info = type { i32 }

@MLX4_CMD_MAP_EQ = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_EVENT_TYPES_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_MAP_EQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vhcr*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_info*, align 8
  %13 = alloca %struct.mlx4_priv*, align 8
  %14 = alloca %struct.mlx4_slave_event_eq_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %9, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %10, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %12, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %21 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %20)
  store %struct.mlx4_priv* %21, %struct.mlx4_priv** %13, align 8
  %22 = load %struct.mlx4_priv*, %struct.mlx4_priv** %13, align 8
  %23 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %30, align 8
  store %struct.mlx4_slave_event_eq_info* %31, %struct.mlx4_slave_event_eq_info** %14, align 8
  %32 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %33 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = and i32 %35, 1023
  store i32 %36, i32* %16, align 4
  %37 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %38 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %6
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i32, i32* %15, align 4
  %50 = and i32 %49, -2147483648
  %51 = load i32, i32* %16, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MLX4_CMD_MAP_EQ, align 4
  %54 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %55 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %56 = call i32 @mlx4_cmd(%struct.mlx4_dev* %47, i64 %48, i32 %52, i32 0, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %18, align 4
  br label %57

57:                                               ; preds = %46, %6
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %57
  store i32 0, i32* %19, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* @MLX4_EVENT_TYPES_NUM, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load i64, i64* %17, align 8
  %67 = load i32, i32* %19, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = and i64 %66, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load i32, i32* %15, align 4
  %74 = ashr i32 %73, 31
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %16, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ -1, %76 ], [ %78, %77 ]
  %81 = load %struct.mlx4_slave_event_eq_info*, %struct.mlx4_slave_event_eq_info** %14, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %81, i64 %83
  %85 = getelementptr inbounds %struct.mlx4_slave_event_eq_info, %struct.mlx4_slave_event_eq_info* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %19, align 4
  br label %61

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32, i32* %18, align 4
  ret i32 %92
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
