; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_build_diagnose_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_rx.c_mlx5e_rx_reporter_build_diagnose_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.mlx5e_icosq, %struct.mlx5e_priv* }
%struct.mlx5e_icosq = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlx5e_params }
%struct.mlx5e_params = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.devlink_fmsg = type { i32 }

@MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"channel ix\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rqn\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"HW state\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SW state\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"posted WQEs\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ICOSQ HW state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.devlink_fmsg*)* @mlx5e_rx_reporter_build_diagnose_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rx_reporter_build_diagnose_output(%struct.mlx5e_rq* %0, %struct.devlink_fmsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.devlink_fmsg*, align 8
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.mlx5e_params*, align 8
  %8 = alloca %struct.mlx5e_icosq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.devlink_fmsg* %1, %struct.devlink_fmsg** %5, align 8
  %14 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %17, align 8
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %6, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.mlx5e_params* %21, %struct.mlx5e_params** %7, align 8
  %22 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store %struct.mlx5e_icosq* %25, %struct.mlx5e_icosq** %8, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlx5e_query_rq_state(i32 %28, i32 %31, i32* %11)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %3, align 4
  br label %157

37:                                               ; preds = %2
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %8, align 8
  %42 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlx5_core_query_sq_state(i32 %40, i32 %43, i32* %9)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %3, align 4
  br label %157

49:                                               ; preds = %37
  %50 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %51 = call i32 @mlx5e_rqwq_get_cur_sz(%struct.mlx5e_rq* %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.mlx5e_params*, %struct.mlx5e_params** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %68

63:                                               ; preds = %49
  %64 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i32 @mlx5_wq_cyc_get_head(i32* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i32 [ %62, %57 ], [ %67, %63 ]
  store i32 %69, i32* %12, align 4
  %70 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %71 = call i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %3, align 4
  br label %157

76:                                               ; preds = %68
  %77 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %78 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %79 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %3, align 4
  br label %157

88:                                               ; preds = %76
  %89 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %90 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %3, align 4
  br label %157

98:                                               ; preds = %88
  %99 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %3, align 4
  br label %157

106:                                              ; preds = %98
  %107 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %108 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %109 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %3, align 4
  br label %157

116:                                              ; preds = %106
  %117 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %3, align 4
  br label %157

124:                                              ; preds = %116
  %125 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %3, align 4
  br label %157

132:                                              ; preds = %124
  %133 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %3, align 4
  br label %157

140:                                              ; preds = %132
  %141 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %142 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %141, i32 0, i32 1
  %143 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %144 = call i32 @mlx5e_reporter_cq_diagnose(i32* %142, %struct.devlink_fmsg* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %3, align 4
  br label %157

149:                                              ; preds = %140
  %150 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %151 = call i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg* %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %3, align 4
  br label %157

156:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %154, %147, %138, %130, %122, %114, %104, %96, %86, %74, %47, %35
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @mlx5e_query_rq_state(i32, i32, i32*) #1

declare dso_local i32 @mlx5_core_query_sq_state(i32, i32, i32*) #1

declare dso_local i32 @mlx5e_rqwq_get_cur_sz(%struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5_wq_cyc_get_head(i32*) #1

declare dso_local i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @mlx5e_reporter_cq_diagnose(i32*, %struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
