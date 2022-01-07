; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_build_diagnose_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_tx_reporter_build_diagnose_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }
%struct.mlx5e_txqsq = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"channel ix\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"txq ix\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sqn\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"HW state\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_fmsg*, %struct.mlx5e_txqsq*, i32)* @mlx5e_tx_reporter_build_diagnose_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tx_reporter_build_diagnose_output(%struct.devlink_fmsg* %0, %struct.mlx5e_txqsq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_fmsg*, align 8
  %6 = alloca %struct.mlx5e_txqsq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.devlink_fmsg* %0, %struct.devlink_fmsg** %5, align 8
  store %struct.mlx5e_txqsq* %1, %struct.mlx5e_txqsq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %12, i32 0, i32 7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %15, align 8
  store %struct.mlx5e_priv* %16, %struct.mlx5e_priv** %8, align 8
  %17 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_xmit_stopped(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlx5_core_query_sq_state(i32 %23, i32 %26, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %130

32:                                               ; preds = %3
  %33 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %34 = call i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %130

39:                                               ; preds = %32
  %40 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %41 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %130

49:                                               ; preds = %39
  %50 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %130

57:                                               ; preds = %49
  %58 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %59 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %130

67:                                               ; preds = %57
  %68 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %69 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %130

77:                                               ; preds = %67
  %78 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %130

85:                                               ; preds = %77
  %86 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @devlink_fmsg_bool_pair_put(%struct.devlink_fmsg* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %130

93:                                               ; preds = %85
  %94 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %95 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %96 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %130

103:                                              ; preds = %93
  %104 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %105 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %106 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %130

113:                                              ; preds = %103
  %114 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %6, align 8
  %115 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %114, i32 0, i32 5
  %116 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %117 = call i32 @mlx5e_reporter_cq_diagnose(i32* %115, %struct.devlink_fmsg* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %130

122:                                              ; preds = %113
  %123 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %5, align 8
  %124 = call i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %4, align 4
  br label %130

129:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %127, %120, %111, %101, %91, %83, %75, %65, %55, %47, %37, %30
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @netif_xmit_stopped(i32) #1

declare dso_local i32 @mlx5_core_query_sq_state(i32, i32, i32*) #1

declare dso_local i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_u32_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_u8_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @devlink_fmsg_bool_pair_put(%struct.devlink_fmsg*, i8*, i32) #1

declare dso_local i32 @mlx5e_reporter_cq_diagnose(i32*, %struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
