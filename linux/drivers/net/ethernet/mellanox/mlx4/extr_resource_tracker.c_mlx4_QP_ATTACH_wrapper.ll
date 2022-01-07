; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QP_ATTACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QP_ATTACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32* }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.res_qp = type { i32 }

@RES_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Fail to attach rule to qp 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Fail to detach rule from qp 0x%x reg_id = 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_ATTACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_qp, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.res_qp*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %26 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %15, align 8
  %28 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %29 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 28
  %32 = and i32 %31, 7
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %34 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %21, align 4
  %36 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 31
  store i32 %39, i32* %22, align 4
  store i32 2, i32* %23, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %23, align 4
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %24, align 4
  %46 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %47 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 16777215
  store i32 %49, i32* %18, align 4
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @RES_QP, align 4
  %54 = call i32 @get_res(%struct.mlx4_dev* %50, i32 %51, i32 %52, i32 %53, %struct.res_qp** %19)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %6
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %7, align 4
  br label %145

59:                                               ; preds = %6
  %60 = load i32, i32* %18, align 4
  %61 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %14, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %24, align 4
  %71 = call i32 @qp_attach(%struct.mlx4_dev* %65, i32 %66, %struct.mlx4_qp* %14, i32* %67, i32 %68, i32 %69, i32 %70, i32* %20)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %18, align 4
  %76 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %138

77:                                               ; preds = %64
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.res_qp*, %struct.res_qp** %19, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @add_mcg_res(%struct.mlx4_dev* %78, i32 %79, %struct.res_qp* %80, i32* %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %131

89:                                               ; preds = %77
  br label %124

90:                                               ; preds = %59
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @mlx4_adjust_port(%struct.mlx4_dev* %91, i32 %92, i32* %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %138

99:                                               ; preds = %90
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.res_qp*, %struct.res_qp** %19, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %24, align 4
  %106 = call i32 @rem_mcg_res(%struct.mlx4_dev* %100, i32 %101, %struct.res_qp* %102, i32* %103, i32 %104, i32 %105, i32* %20)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %138

110:                                              ; preds = %99
  %111 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @qp_detach(%struct.mlx4_dev* %111, %struct.mlx4_qp* %14, i32* %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %110
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %20, align 4
  %122 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %110
  br label %124

124:                                              ; preds = %123, %89
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @RES_QP, align 4
  %129 = call i32 @put_res(%struct.mlx4_dev* %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %7, align 4
  br label %145

131:                                              ; preds = %88
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @qp_detach(%struct.mlx4_dev* %132, %struct.mlx4_qp* %14, i32* %133, i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %109, %98, %74
  %139 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @RES_QP, align 4
  %143 = call i32 @put_res(%struct.mlx4_dev* %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %17, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %138, %124, %57
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @qp_attach(%struct.mlx4_dev*, i32, %struct.mlx4_qp*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @add_mcg_res(%struct.mlx4_dev*, i32, %struct.res_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx4_adjust_port(%struct.mlx4_dev*, i32, i32*, i32) #1

declare dso_local i32 @rem_mcg_res(%struct.mlx4_dev*, i32, %struct.res_qp*, i32*, i32, i32, i32*) #1

declare dso_local i32 @qp_detach(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
