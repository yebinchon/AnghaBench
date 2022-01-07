; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_get_app_input_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_get_app_input_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i32, %struct.vpfe_config*, %struct.TYPE_3__* }
%struct.vpfe_config = type { %struct.vpfe_subdev_info*, i32 }
%struct.vpfe_subdev_info = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*, i32*)* @vpfe_get_app_input_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_get_app_input_index(%struct.vpfe_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vpfe_config*, align 8
  %7 = alloca %struct.vpfe_subdev_info*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 1
  %14 = load %struct.vpfe_config*, %struct.vpfe_config** %13, align 8
  store %struct.vpfe_config* %14, %struct.vpfe_config** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %16 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.i2c_client* @v4l2_get_subdevdata(i32 %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %76, %2
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 1
  %25 = load %struct.vpfe_config*, %struct.vpfe_config** %24, align 8
  %26 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = icmp slt i32 %22, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %21
  %31 = load %struct.vpfe_config*, %struct.vpfe_config** %6, align 8
  %32 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %31, i32 0, i32 0
  %33 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %33, i64 %35
  store %struct.vpfe_subdev_info* %36, %struct.vpfe_subdev_info** %7, align 8
  %37 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %7, align 8
  %38 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.i2c_client* @v4l2_get_subdevdata(i32 %39)
  store %struct.i2c_client* %40, %struct.i2c_client** %8, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %30
  %49 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %48
  %61 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %62 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %82

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %69 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %82

73:                                               ; preds = %48, %30
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %21

79:                                               ; preds = %21
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %66, %65
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
