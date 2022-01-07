; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_port.c_mlx4_en_QUERY_PORT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_port.c_mlx4_en_QUERY_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_dev = type { i32, i32* }
%struct.mlx4_en_query_port_context = type { i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.mlx4_en_port_state }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_en_query_port_context*, i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@MLX4_EN_LINK_UP_MASK = common dso_local global i32 0, align 4
@MLX4_EN_SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_20000 = common dso_local global i32 0, align 4
@SPEED_40000 = common dso_local global i32 0, align 4
@SPEED_56000 = common dso_local global i32 0, align 4
@MLX4_EN_ANC_MASK = common dso_local global i32 0, align 4
@MLX4_EN_PORT_ANC = common dso_local global i32 0, align 4
@MLX4_EN_AUTONEG_MASK = common dso_local global i32 0, align 4
@MLX4_EN_PORT_ANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_QUERY_PORT(%struct.mlx4_en_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx4_en_query_port_context*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_port_state*, align 8
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx4_en_priv* @netdev_priv(i32 %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %7, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 0
  store %struct.mlx4_en_port_state* %19, %struct.mlx4_en_port_state** %8, align 8
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32 %22)
  store %struct.mlx4_cmd_mailbox* %23, %struct.mlx4_cmd_mailbox** %9, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %25 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %28)
  store i32 %29, i32* %3, align 4
  br label %137

30:                                               ; preds = %2
  %31 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %35 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %39 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %40 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %41 = call i32 @mlx4_cmd_box(i32 %33, i32 0, i32 %36, i64 %37, i32 0, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %130

45:                                               ; preds = %30
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %46, i32 0, i32 0
  %48 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %47, align 8
  store %struct.mlx4_en_query_port_context* %48, %struct.mlx4_en_query_port_context** %6, align 8
  %49 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX4_EN_LINK_UP_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MLX4_EN_SPEED_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %89 [
    i32 134, label %65
    i32 131, label %69
    i32 133, label %73
    i32 132, label %73
    i32 130, label %77
    i32 129, label %81
    i32 128, label %85
  ]

65:                                               ; preds = %45
  %66 = load i32, i32* @SPEED_100, align 4
  %67 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %92

69:                                               ; preds = %45
  %70 = load i32, i32* @SPEED_1000, align 4
  %71 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %92

73:                                               ; preds = %45, %45
  %74 = load i32, i32* @SPEED_10000, align 4
  %75 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %92

77:                                               ; preds = %45
  %78 = load i32, i32* @SPEED_20000, align 4
  %79 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %92

81:                                               ; preds = %45
  %82 = load i32, i32* @SPEED_40000, align 4
  %83 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %92

85:                                               ; preds = %45
  %86 = load i32, i32* @SPEED_56000, align 4
  %87 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %92

89:                                               ; preds = %45
  %90 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %90, i32 0, i32 1
  store i32 -1, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %85, %81, %77, %73, %69, %65
  %93 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %98, i32 0, i32 2
  store i32 0, i32* %99, align 4
  %100 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MLX4_EN_ANC_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i32, i32* @MLX4_EN_PORT_ANC, align 4
  br label %109

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %116 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MLX4_EN_AUTONEG_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* @MLX4_EN_PORT_ANE, align 4
  br label %124

123:                                              ; preds = %109
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %127 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %44
  %131 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %135 = call i32 @mlx4_free_cmd_mailbox(i32 %133, %struct.mlx4_cmd_mailbox* %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %130, %27
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(i32) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(i32, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
