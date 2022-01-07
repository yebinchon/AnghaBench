; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_core.c_mlx5_fpga_device_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { i64, i32, i32, i32, %struct.mlx5_core_dev*, i32 }

@fpga_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s:%u; %s image, version %u; SBU %06x:%04x version %d\0A\00", align 1
@image_version = common dso_local global i32 0, align 4
@ieee_vendor_id = common dso_local global i32 0, align 4
@sandbox_product_id = common dso_local global i32 0, align 4
@sandbox_product_version = common dso_local global i32 0, align 4
@shell_caps = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"FPGA reports 0 QPs in SHELL_CAPS\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@fpga_err_event = common dso_local global i32 0, align 4
@FPGA_ERROR = common dso_local global i32 0, align 4
@fpga_qp_err_event = common dso_local global i32 0, align 4
@FPGA_QP_ERROR = common dso_local global i32 0, align 4
@MLX5_FPGA_IMAGE_USER = common dso_local global i64 0, align 8
@MLX5_FPGA_STATUS_FAILURE = common dso_local global i32 0, align 4
@MLX5_FPGA_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %10, align 8
  store %struct.mlx5_fpga_device* %11, %struct.mlx5_fpga_device** %4, align 8
  %12 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %13 = icmp ne %struct.mlx5_fpga_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %163

15:                                               ; preds = %1
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %17 = call i32 @mlx5_fpga_device_load_check(%struct.mlx5_fpga_device* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %143

21:                                               ; preds = %15
  %22 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %22, i32 0, i32 4
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %23, align 8
  %25 = call i32 @mlx5_fpga_caps(%struct.mlx5_core_dev* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %143

29:                                               ; preds = %21
  %30 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %30, i32 0, i32 4
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %31, align 8
  %33 = load i32, i32* @fpga_device, align 4
  %34 = call i8* @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %32, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @mlx5_fpga_device_name(i8* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mlx5_fpga_image_name(i64 %41)
  %43 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %43, i32 0, i32 4
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %44, align 8
  %46 = load i32, i32* @image_version, align 4
  %47 = call i8* @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %45, i32 %46)
  %48 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %48, i32 0, i32 4
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %49, align 8
  %51 = load i32, i32* @ieee_vendor_id, align 4
  %52 = call i8* @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %50, i32 %51)
  %53 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %53, i32 0, i32 4
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %54, align 8
  %56 = load i32, i32* @sandbox_product_id, align 4
  %57 = call i8* @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %55, i32 %56)
  %58 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %58, i32 0, i32 4
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %59, align 8
  %61 = load i32, i32* @sandbox_product_version, align 4
  %62 = call i8* @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %60, i32 %61)
  %63 = call i32 @mlx5_fpga_info(%struct.mlx5_fpga_device* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %38, i32 %42, i8* %47, i8* %52, i8* %57, i8* %62)
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shell_caps, i32 0, i32 0), align 4
  %66 = call i8* @MLX5_CAP_FPGA(%struct.mlx5_core_dev* %64, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %29
  %71 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %72 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %143

75:                                               ; preds = %29
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mlx5_core_reserve_gids(%struct.mlx5_core_dev* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %143

82:                                               ; preds = %75
  %83 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %83, i32 0, i32 5
  %85 = load i32, i32* @fpga_err_event, align 4
  %86 = load i32, i32* @FPGA_ERROR, align 4
  %87 = call i32 @MLX5_NB_INIT(i32* %84, i32 %85, i32 %86)
  %88 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %88, i32 0, i32 3
  %90 = load i32, i32* @fpga_qp_err_event, align 4
  %91 = load i32, i32* @FPGA_QP_ERROR, align 4
  %92 = call i32 @MLX5_NB_INIT(i32* %89, i32 %90, i32 %91)
  %93 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %94 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %93, i32 0, i32 4
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %94, align 8
  %96 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %97 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %96, i32 0, i32 5
  %98 = call i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev* %95, i32* %97)
  %99 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %100 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %99, i32 0, i32 4
  %101 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %100, align 8
  %102 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %102, i32 0, i32 3
  %104 = call i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev* %101, i32* %103)
  %105 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %106 = call i32 @mlx5_fpga_conn_device_init(%struct.mlx5_fpga_device* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %82
  br label %127

110:                                              ; preds = %82
  %111 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %112 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MLX5_FPGA_IMAGE_USER, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %118 = call i32 @mlx5_fpga_device_brb(%struct.mlx5_fpga_device* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %124

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %110
  br label %143

124:                                              ; preds = %121
  %125 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %126 = call i32 @mlx5_fpga_conn_device_cleanup(%struct.mlx5_fpga_device* %125)
  br label %127

127:                                              ; preds = %124, %109
  %128 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %129 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %128, i32 0, i32 4
  %130 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %129, align 8
  %131 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %132 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %131, i32 0, i32 5
  %133 = call i32 @mlx5_eq_notifier_unregister(%struct.mlx5_core_dev* %130, i32* %132)
  %134 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %135 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %134, i32 0, i32 4
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %135, align 8
  %137 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %138 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %137, i32 0, i32 3
  %139 = call i32 @mlx5_eq_notifier_unregister(%struct.mlx5_core_dev* %136, i32* %138)
  %140 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @mlx5_core_unreserve_gids(%struct.mlx5_core_dev* %140, i32 %141)
  br label %143

143:                                              ; preds = %127, %123, %81, %70, %28, %20
  %144 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %145 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %144, i32 0, i32 1
  %146 = load i64, i64* %6, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @MLX5_FPGA_STATUS_FAILURE, align 4
  br label %154

152:                                              ; preds = %143
  %153 = load i32, i32* @MLX5_FPGA_STATUS_SUCCESS, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %157 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %159 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %158, i32 0, i32 1
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %154, %14
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @mlx5_fpga_device_load_check(%struct.mlx5_fpga_device*) #1

declare dso_local i32 @mlx5_fpga_caps(%struct.mlx5_core_dev*) #1

declare dso_local i8* @MLX5_CAP_FPGA(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_fpga_info(%struct.mlx5_fpga_device*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mlx5_fpga_device_name(i8*) #1

declare dso_local i32 @mlx5_fpga_image_name(i64) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*) #1

declare dso_local i32 @mlx5_core_reserve_gids(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_NB_INIT(i32*, i32, i32) #1

declare dso_local i32 @mlx5_eq_notifier_register(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_fpga_conn_device_init(%struct.mlx5_fpga_device*) #1

declare dso_local i32 @mlx5_fpga_device_brb(%struct.mlx5_fpga_device*) #1

declare dso_local i32 @mlx5_fpga_conn_device_cleanup(%struct.mlx5_fpga_device*) #1

declare dso_local i32 @mlx5_eq_notifier_unregister(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_unreserve_gids(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
