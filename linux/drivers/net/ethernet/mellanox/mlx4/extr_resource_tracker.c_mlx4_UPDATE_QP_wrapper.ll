; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_UPDATE_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_UPDATE_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { i32 }
%struct.mlx4_update_qp_context = type { %struct.TYPE_6__, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX4_UPD_QP_PATH_MASK_SUPPORTED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@MLX4_UPD_QP_PATH_MASK_ETH_SRC_CHECK_MC_LB = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Src check LB for slave %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Updating qpn 0x%x for slave %d rejected\0A\00", align 1
@MLX4_UPD_QP_PATH_MASK_MAC_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to update qpn 0x%x, MAC is invalid. smac_ix: %d\0A\00", align 1
@MLX4_CMD_UPDATE_QP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Failed to update qpn on qpn 0x%x, command failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_UPDATE_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_qp*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.mlx4_update_qp_context*, align 8
  %21 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %22 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %23 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 16777215
  store i32 %25, i32* %15, align 4
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.mlx4_update_qp_context*
  store %struct.mlx4_update_qp_context* %29, %struct.mlx4_update_qp_context** %20, align 8
  %30 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %20, align 8
  %31 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @be64_to_cpu(i32 %32)
  store i64 %33, i64* %19, align 8
  %34 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %20, align 8
  %35 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %6
  %39 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %20, align 8
  %40 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %19, align 8
  %45 = load i64, i64* @MLX4_UPD_QP_PATH_MASK_SUPPORTED, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %44, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %38, %6
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %143

52:                                               ; preds = %43
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* @MLX4_UPD_QP_PATH_MASK_ETH_SRC_CHECK_MC_LB, align 8
  %55 = shl i64 1, %54
  %56 = and i64 %53, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @mlx4_warn(%struct.mlx4_dev* %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %143

72:                                               ; preds = %58, %52
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @RES_QP, align 4
  %77 = call i32 @get_res(%struct.mlx4_dev* %73, i32 %74, i32 %75, i32 %76, %struct.res_qp** %16)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_err(%struct.mlx4_dev* %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %143

86:                                               ; preds = %72
  %87 = load %struct.res_qp*, %struct.res_qp** %16, align 8
  %88 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 6
  %91 = and i32 %90, 1
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* @MLX4_UPD_QP_PATH_MASK_MAC_INDEX, align 8
  %95 = shl i64 1, %94
  %96 = and i64 %93, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %86
  %99 = load %struct.mlx4_update_qp_context*, %struct.mlx4_update_qp_context** %20, align 8
  %100 = getelementptr inbounds %struct.mlx4_update_qp_context, %struct.mlx4_update_qp_context* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %21, align 4
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %21, align 4
  %108 = call i32 @mac_find_smac_ix_in_slave(%struct.mlx4_dev* %104, i32 %105, i32 %106, i32 %107, i64* %17)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %98
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %21, align 4
  %115 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_err(%struct.mlx4_dev* %112, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %114)
  br label %136

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %86
  %118 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %119 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %120 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %123 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @MLX4_CMD_UPDATE_QP, align 4
  %126 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %127 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %128 = call i32 @mlx4_cmd(%struct.mlx4_dev* %118, i32 %121, i32 %124, i32 0, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %117
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 (%struct.mlx4_dev*, i8*, i32, ...) @mlx4_err(%struct.mlx4_dev* %132, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %136

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135, %131, %111
  %137 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @RES_QP, align 4
  %141 = call i32 @put_res(%struct.mlx4_dev* %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %136, %80, %66, %49
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, ...) #1

declare dso_local i32 @mac_find_smac_ix_in_slave(%struct.mlx4_dev*, i32, i32, i32, i64*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
