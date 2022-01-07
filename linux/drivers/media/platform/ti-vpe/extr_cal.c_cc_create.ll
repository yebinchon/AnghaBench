; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_data = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.cal_dev = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cal_rx_core0\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cal_rx_core1\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to ioremap\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ioresource %s at %pa - %pa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cc_data* (%struct.cal_dev*, i32)* @cc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cc_data* @cc_create(%struct.cal_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cc_data*, align 8
  %4 = alloca %struct.cal_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.cc_data*, align 8
  store %struct.cal_dev* %0, %struct.cal_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %8, i32 0, i32 0
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cc_data* @devm_kzalloc(i32* %12, i32 16, i32 %13)
  store %struct.cc_data* %14, %struct.cc_data** %7, align 8
  %15 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %16 = icmp ne %struct.cc_data* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.cc_data* @ERR_PTR(i32 %19)
  store %struct.cc_data* %20, %struct.cc_data** %3, align 8
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  %28 = call %struct.TYPE_3__* @platform_get_resource_byname(%struct.platform_device* %22, i32 %23, i8* %27)
  %29 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %30 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %29, i32 0, i32 0
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %34 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @devm_ioremap_resource(i32* %32, %struct.TYPE_3__* %35)
  %37 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %38 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %40 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %21
  %45 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %46 = call i32 @cal_err(%struct.cal_dev* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %48 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.cc_data* @ERR_CAST(i32 %49)
  store %struct.cc_data* %50, %struct.cc_data** %3, align 8
  br label %68

51:                                               ; preds = %21
  %52 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %53 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %54 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %59 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  %63 = getelementptr inbounds %struct.cc_data, %struct.cc_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @cal_dbg(i32 1, %struct.cal_dev* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32* %61, i32* %65)
  %67 = load %struct.cc_data*, %struct.cc_data** %7, align 8
  store %struct.cc_data* %67, %struct.cc_data** %3, align 8
  br label %68

68:                                               ; preds = %51, %44, %17
  %69 = load %struct.cc_data*, %struct.cc_data** %3, align 8
  ret %struct.cc_data* %69
}

declare dso_local %struct.cc_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.cc_data* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_3__* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @cal_err(%struct.cal_dev*, i8*) #1

declare dso_local %struct.cc_data* @ERR_CAST(i32) #1

declare dso_local i32 @cal_dbg(i32, %struct.cal_dev*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
