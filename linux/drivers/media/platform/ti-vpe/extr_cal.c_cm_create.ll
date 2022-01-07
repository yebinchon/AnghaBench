; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_data = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cal_dev = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"camerrx_control\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to ioremap\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ioresource %s at %pa - %pa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cm_data* (%struct.cal_dev*)* @cm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cm_data* @cm_create(%struct.cal_dev* %0) #0 {
  %2 = alloca %struct.cm_data*, align 8
  %3 = alloca %struct.cal_dev*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.cm_data*, align 8
  store %struct.cal_dev* %0, %struct.cal_dev** %3, align 8
  %6 = load %struct.cal_dev*, %struct.cal_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %6, i32 0, i32 0
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cm_data* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.cm_data* %12, %struct.cm_data** %5, align 8
  %13 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %14 = icmp ne %struct.cm_data* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.cm_data* @ERR_PTR(i32 %17)
  store %struct.cm_data* %18, %struct.cm_data** %2, align 8
  br label %62

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.TYPE_3__* @platform_get_resource_byname(%struct.platform_device* %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %24 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %23, i32 0, i32 0
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %28 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @devm_ioremap_resource(i32* %26, %struct.TYPE_3__* %29)
  %31 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %32 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %34 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load %struct.cal_dev*, %struct.cal_dev** %3, align 8
  %40 = call i32 @cal_err(%struct.cal_dev* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %42 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.cm_data* @ERR_CAST(i32 %43)
  store %struct.cm_data* %44, %struct.cm_data** %2, align 8
  br label %62

45:                                               ; preds = %19
  %46 = load %struct.cal_dev*, %struct.cal_dev** %3, align 8
  %47 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %48 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %53 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  %57 = getelementptr inbounds %struct.cm_data, %struct.cm_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @cal_dbg(i32 1, %struct.cal_dev* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32* %55, i32* %59)
  %61 = load %struct.cm_data*, %struct.cm_data** %5, align 8
  store %struct.cm_data* %61, %struct.cm_data** %2, align 8
  br label %62

62:                                               ; preds = %45, %38, %15
  %63 = load %struct.cm_data*, %struct.cm_data** %2, align 8
  ret %struct.cm_data* %63
}

declare dso_local %struct.cm_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.cm_data* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_3__* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @cal_err(%struct.cal_dev*, i8*) #1

declare dso_local %struct.cm_data* @ERR_CAST(i32) #1

declare dso_local i32 @cal_dbg(i32, %struct.cal_dev*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
