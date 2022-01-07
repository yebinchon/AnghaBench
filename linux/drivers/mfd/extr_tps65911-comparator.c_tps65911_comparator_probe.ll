; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_tps65911_comparator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_tps65911_comparator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tps65910 = type { i32 }
%struct.tps65910_board = type { i32, i32 }

@COMP1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot set COMP1 threshold\0A\00", align 1
@COMP2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot set COMP2 threshold\0A\00", align 1
@dev_attr_comp1_threshold = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to add COMP1 sysfs file\0A\00", align 1
@dev_attr_comp2_threshold = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to add COMP2 sysfs file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65911_comparator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65911_comparator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65910*, align 8
  %5 = alloca %struct.tps65910_board*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tps65910* @dev_get_drvdata(i32 %10)
  store %struct.tps65910* %11, %struct.tps65910** %4, align 8
  %12 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %13 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tps65910_board* @dev_get_platdata(i32 %14)
  store %struct.tps65910_board* %15, %struct.tps65910_board** %5, align 8
  %16 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %17 = load i32, i32* @COMP1, align 4
  %18 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %19 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @comp_threshold_set(%struct.tps65910* %16, i32 %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_3__* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %65

29:                                               ; preds = %1
  %30 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %31 = load i32, i32* @COMP2, align 4
  %32 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %33 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @comp_threshold_set(%struct.tps65910* %30, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(%struct.TYPE_3__* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %65

43:                                               ; preds = %29
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @device_create_file(%struct.TYPE_3__* %45, i32* @dev_attr_comp1_threshold)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_3__* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @device_create_file(%struct.TYPE_3__* %55, i32* @dev_attr_comp2_threshold)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %38, %24
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #1

declare dso_local %struct.tps65910_board* @dev_get_platdata(i32) #1

declare dso_local i32 @comp_threshold_set(%struct.tps65910*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
