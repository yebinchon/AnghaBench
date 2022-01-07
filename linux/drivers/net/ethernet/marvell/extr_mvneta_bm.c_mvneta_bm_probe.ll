; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { %struct.mvneta_bm* }
%struct.mvneta_bm = type { i32, %struct.platform_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate internal memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to initialize controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Buffer Manager for network controller enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvneta_bm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_bm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mvneta_bm*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mvneta_bm* @devm_kzalloc(%struct.TYPE_5__* %12, i32 24, i32 %13)
  store %struct.mvneta_bm* %14, %struct.mvneta_bm** %5, align 8
  %15 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %16 = icmp ne %struct.mvneta_bm* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %101

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %24 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %26 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %32 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %101

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @devm_clk_get(%struct.TYPE_5__* %37, i32* null)
  %39 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %40 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %42 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %48 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %101

51:                                               ; preds = %35
  %52 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %53 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_prepare_enable(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %101

60:                                               ; preds = %51
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %63 = call i32 @mvneta_bm_get_sram(%struct.device_node* %61, %struct.mvneta_bm* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %95

70:                                               ; preds = %60
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %73 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %72, i32 0, i32 1
  store %struct.platform_device* %71, %struct.platform_device** %73, align 8
  %74 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %75 = call i32 @mvneta_bm_init(%struct.mvneta_bm* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_err(%struct.TYPE_5__* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %92

82:                                               ; preds = %70
  %83 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %84 = load %struct.device_node*, %struct.device_node** %4, align 8
  %85 = getelementptr inbounds %struct.device_node, %struct.device_node* %84, i32 0, i32 0
  store %struct.mvneta_bm* %83, %struct.mvneta_bm** %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %86, %struct.mvneta_bm* %87)
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_info(%struct.TYPE_5__* %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %101

92:                                               ; preds = %78
  %93 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %94 = call i32 @mvneta_bm_put_sram(%struct.mvneta_bm* %93)
  br label %95

95:                                               ; preds = %92, %66
  %96 = load %struct.mvneta_bm*, %struct.mvneta_bm** %5, align 8
  %97 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @clk_disable_unprepare(i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %82, %58, %46, %30, %17
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.mvneta_bm* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mvneta_bm_get_sram(%struct.device_node*, %struct.mvneta_bm*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @mvneta_bm_init(%struct.mvneta_bm*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mvneta_bm*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @mvneta_bm_put_sram(%struct.mvneta_bm*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
