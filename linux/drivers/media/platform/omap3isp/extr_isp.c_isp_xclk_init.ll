; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { %struct.isp_xclk*, %struct.TYPE_3__* }
%struct.isp_xclk = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.isp_device* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i32*, i32* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISP_XCLK_A = common dso_local global i32 0, align 4
@ISP_XCLK_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cam_xclka\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cam_xclkb\00", align 1
@isp_xclk_ops = common dso_local global i32 0, align 4
@isp_xclk_parent_name = common dso_local global i32 0, align 4
@isp_xclk_src_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_device*)* @isp_xclk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_xclk_init(%struct.isp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clk_init_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isp_xclk*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %3, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = bitcast %struct.clk_init_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %17 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %16, i32 0, i32 0
  %18 = load %struct.isp_xclk*, %struct.isp_xclk** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.isp_xclk* %18)
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @ERR_PTR(i32 %23)
  %25 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %26 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %25, i32 0, i32 0
  %27 = load %struct.isp_xclk*, %struct.isp_xclk** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %27, i64 %29
  %31 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %30, i32 0, i32 1
  store i32 %24, i32* %31, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %14

35:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %95, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %39 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %38, i32 0, i32 0
  %40 = load %struct.isp_xclk*, %struct.isp_xclk** %39, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.isp_xclk* %40)
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %36
  %44 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %45 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %44, i32 0, i32 0
  %46 = load %struct.isp_xclk*, %struct.isp_xclk** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %46, i64 %48
  store %struct.isp_xclk* %49, %struct.isp_xclk** %7, align 8
  %50 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %51 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %52 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %51, i32 0, i32 5
  store %struct.isp_device* %50, %struct.isp_device** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @ISP_XCLK_A, align 4
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @ISP_XCLK_B, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %62 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %64 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %66 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %65, i32 0, i32 3
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  %72 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 3
  store i32* @isp_xclk_ops, i32** %73, align 8
  %74 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 2
  store i32* @isp_xclk_parent_name, i32** %74, align 8
  %75 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %5, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %77 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store %struct.clk_init_data* %5, %struct.clk_init_data** %78, align 8
  %79 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %80 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %79, i32 0, i32 2
  %81 = call i32 @clk_register(i32* null, %struct.TYPE_4__* %80)
  %82 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %83 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %85 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %59
  %90 = load %struct.isp_xclk*, %struct.isp_xclk** %7, align 8
  %91 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %107

94:                                               ; preds = %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %36

98:                                               ; preds = %36
  %99 = load %struct.device_node*, %struct.device_node** %4, align 8
  %100 = icmp ne %struct.device_node* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.device_node*, %struct.device_node** %4, align 8
  %103 = load i32, i32* @isp_xclk_src_get, align 4
  %104 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %105 = call i32 @of_clk_add_provider(%struct.device_node* %102, i32 %103, %struct.isp_device* %104)
  br label %106

106:                                              ; preds = %101, %98
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.isp_xclk*) #2

declare dso_local i32 @ERR_PTR(i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @clk_register(i32*, %struct.TYPE_4__*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.isp_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
