; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_create_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_create_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, %struct.TYPE_5__, i32, %struct.v4l2_ctrl_handler, %struct.cal_dev* }
%struct.TYPE_5__ = type { %struct.v4l2_ctrl_handler*, i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.cal_dev = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s-%03d\00", align 1
@CAL_MODULE_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to init ctrl handler\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cal_ctx* (%struct.cal_dev*, i32)* @cal_create_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cal_ctx* @cal_create_instance(%struct.cal_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cal_ctx*, align 8
  %4 = alloca %struct.cal_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cal_ctx*, align 8
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca i32, align 4
  store %struct.cal_dev* %0, %struct.cal_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cal_ctx* @devm_kzalloc(i32* %12, i32 40, i32 %13)
  store %struct.cal_ctx* %14, %struct.cal_ctx** %6, align 8
  %15 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %16 = icmp ne %struct.cal_ctx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.cal_ctx* null, %struct.cal_ctx** %3, align 8
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %20 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %20, i32 0, i32 4
  store %struct.cal_dev* %19, %struct.cal_dev** %21, align 8
  %22 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** @CAL_MODULE_NAME, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %30 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %33, i32 0, i32 1
  %35 = call i32 @v4l2_device_register(i32* %32, %struct.TYPE_5__* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %84

39:                                               ; preds = %18
  %40 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %40, i32 0, i32 3
  store %struct.v4l2_ctrl_handler* %41, %struct.v4l2_ctrl_handler** %7, align 8
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %43 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %42, i32 11)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %48 = call i32 @ctx_err(%struct.cal_ctx* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %80

49:                                               ; preds = %39
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %51 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %50, %struct.v4l2_ctrl_handler** %53, align 8
  %54 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %55 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @of_cal_create_instance(%struct.cal_ctx* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %49
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %49
  %76 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  store %struct.cal_ctx* %76, %struct.cal_ctx** %3, align 8
  br label %85

77:                                               ; preds = %72
  %78 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %79 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %78)
  br label %80

80:                                               ; preds = %77, %46
  %81 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %81, i32 0, i32 1
  %83 = call i32 @v4l2_device_unregister(%struct.TYPE_5__* %82)
  br label %84

84:                                               ; preds = %80, %38
  store %struct.cal_ctx* null, %struct.cal_ctx** %3, align 8
  br label %85

85:                                               ; preds = %84, %75, %17
  %86 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  ret %struct.cal_ctx* %86
}

declare dso_local %struct.cal_ctx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @ctx_err(%struct.cal_ctx*, i8*) #1

declare dso_local i32 @of_cal_create_instance(%struct.cal_ctx*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
