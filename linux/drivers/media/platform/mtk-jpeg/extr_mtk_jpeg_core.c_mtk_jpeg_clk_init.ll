; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_dev = type { i8*, %struct.TYPE_2__*, i8*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"mediatek,larb\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"jpgdec\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"jpgdec-smi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_jpeg_dev*)* @mtk_jpeg_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_clk_init(%struct.mtk_jpeg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_jpeg_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  store %struct.mtk_jpeg_dev* %0, %struct.mtk_jpeg_dev** %3, align 8
  %6 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device_node* @of_parse_phandle(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %18)
  store %struct.platform_device* %19, %struct.platform_device** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = icmp ne %struct.platform_device* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_node_put(%struct.device_node* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %17
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i8* @devm_clk_get(%struct.TYPE_2__* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %2, align 4
  br label %65

54:                                               ; preds = %31
  %55 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i8* @devm_clk_get(%struct.TYPE_2__* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR_OR_ZERO(i8* %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %54, %49, %26, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
