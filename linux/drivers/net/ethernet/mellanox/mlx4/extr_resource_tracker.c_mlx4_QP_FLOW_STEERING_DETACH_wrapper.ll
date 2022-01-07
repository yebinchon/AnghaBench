; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_DETACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QP_FLOW_STEERING_DETACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { i32, i32, i32, i32 }
%struct.res_fs_rule = type { i32, i32, i32, i32 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RES_FS_RULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Mirror rules cannot be removed explicitly\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Fail to get resource of mirror rule\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Fail to remove flow steering resources\0A\00", align 1
@MLX4_QP_FLOW_STEERING_DETACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_FLOW_STEERING_DETACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.res_qp*, align 8
  %16 = alloca %struct.res_fs_rule*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %20 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %151

28:                                               ; preds = %6
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %32 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RES_FS_RULE, align 4
  %35 = bitcast %struct.res_fs_rule** %16 to %struct.res_qp**
  %36 = call i32 @get_res(%struct.mlx4_dev* %29, i32 %30, i32 %33, i32 %34, %struct.res_qp** %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %7, align 4
  br label %151

41:                                               ; preds = %28
  %42 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %43 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %48 = call i32 @mlx4_err(%struct.mlx4_dev* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %52 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RES_FS_RULE, align 4
  %55 = call i32 @put_res(%struct.mlx4_dev* %49, i32 %50, i32 %53, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %151

58:                                               ; preds = %41
  %59 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %60 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  %62 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %63 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %67 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %72 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RES_FS_RULE, align 4
  %75 = call i32 @put_res(%struct.mlx4_dev* %69, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* @RES_QP, align 4
  %80 = call i32 @get_res(%struct.mlx4_dev* %76, i32 %77, i32 %78, i32 %79, %struct.res_qp** %15)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %58
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %7, align 4
  br label %151

85:                                               ; preds = %58
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %90 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %88
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @RES_FS_RULE, align 4
  %97 = bitcast %struct.res_fs_rule** %16 to %struct.res_qp**
  %98 = call i32 @get_res(%struct.mlx4_dev* %93, i32 %94, i32 %95, i32 %96, %struct.res_qp** %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %103 = call i32 @mlx4_err(%struct.mlx4_dev* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %114

104:                                              ; preds = %92
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* @RES_FS_RULE, align 4
  %109 = call i32 @put_res(%struct.mlx4_dev* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %111 = load %struct.res_fs_rule*, %struct.res_fs_rule** %16, align 8
  %112 = bitcast %struct.res_fs_rule* %111 to %struct.res_qp*
  %113 = call i32 @mlx4_undo_mirror_rule(%struct.mlx4_dev* %110, %struct.res_qp* %112)
  br label %114

114:                                              ; preds = %104, %101
  br label %115

115:                                              ; preds = %114, %88, %85
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %119 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RES_FS_RULE, align 4
  %122 = call i32 @rem_res_range(%struct.mlx4_dev* %116, i32 %117, i32 %120, i32 1, i32 %121, i32 0)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %127 = call i32 @mlx4_err(%struct.mlx4_dev* %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %144

128:                                              ; preds = %115
  %129 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %130 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %131 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MLX4_QP_FLOW_STEERING_DETACH, align 4
  %134 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %135 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %136 = call i32 @mlx4_cmd(%struct.mlx4_dev* %129, i32 %132, i32 0, i32 0, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %128
  %140 = load %struct.res_qp*, %struct.res_qp** %15, align 8
  %141 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %140, i32 0, i32 2
  %142 = call i32 @atomic_dec(i32* %141)
  br label %143

143:                                              ; preds = %139, %128
  br label %144

144:                                              ; preds = %143, %125
  %145 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* @RES_QP, align 4
  %149 = call i32 @put_res(%struct.mlx4_dev* %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %144, %83, %46, %39, %25
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_undo_mirror_rule(%struct.mlx4_dev*, %struct.res_qp*) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
