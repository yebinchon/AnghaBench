; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_data = type { i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"sc_create\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't alloc sc_data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"missing '%s' platform resources data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to ioremap\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sc_data* @sc_create(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.sc_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sc_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sc_data* @devm_kzalloc(i32* %11, i32 16, i32 %12)
  store %struct.sc_data* %13, %struct.sc_data** %6, align 8
  %14 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %15 = icmp ne %struct.sc_data* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sc_data* @ERR_PTR(i32 %21)
  store %struct.sc_data* %22, %struct.sc_data** %3, align 8
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %26 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %25, i32 0, i32 2
  store %struct.platform_device* %24, %struct.platform_device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @platform_get_resource_byname(%struct.platform_device* %27, i32 %28, i8* %29)
  %31 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %32 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %34 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %23
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.sc_data* @ERR_PTR(i32 %43)
  store %struct.sc_data* %44, %struct.sc_data** %3, align 8
  br label %69

45:                                               ; preds = %23
  %46 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %49 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @devm_ioremap_resource(i32* %47, i32 %50)
  %52 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %53 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %55 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  %64 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.sc_data* @ERR_CAST(i32 %65)
  store %struct.sc_data* %66, %struct.sc_data** %3, align 8
  br label %69

67:                                               ; preds = %45
  %68 = load %struct.sc_data*, %struct.sc_data** %6, align 8
  store %struct.sc_data* %68, %struct.sc_data** %3, align 8
  br label %69

69:                                               ; preds = %67, %59, %37, %16
  %70 = load %struct.sc_data*, %struct.sc_data** %3, align 8
  ret %struct.sc_data* %70
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.sc_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.sc_data* @ERR_PTR(i32) #1

declare dso_local i32 @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.sc_data* @ERR_CAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
