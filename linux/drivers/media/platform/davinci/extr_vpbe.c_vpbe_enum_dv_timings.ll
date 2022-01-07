; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_enum_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_enum_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, %struct.vpbe_config* }
%struct.vpbe_config = type { %struct.vpbe_output* }
%struct.vpbe_output = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_enum_dv_timings = type { i32, i32 }

@V4L2_OUT_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@VPBE_ENC_DV_TIMINGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, %struct.v4l2_enum_dv_timings*)* @vpbe_enum_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_enum_dv_timings(%struct.vpbe_device* %0, %struct.v4l2_enum_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %6 = alloca %struct.vpbe_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpbe_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store %struct.v4l2_enum_dv_timings* %1, %struct.v4l2_enum_dv_timings** %5, align 8
  %11 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %12 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %11, i32 0, i32 1
  %13 = load %struct.vpbe_config*, %struct.vpbe_config** %12, align 8
  store %struct.vpbe_config* %13, %struct.vpbe_config** %6, align 8
  %14 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %15 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  %18 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %17, i32 0, i32 0
  %19 = load %struct.vpbe_output*, %struct.vpbe_output** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %19, i64 %21
  store %struct.vpbe_output* %22, %struct.vpbe_output** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %24 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @V4L2_OUT_CAP_DV_TIMINGS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %85

33:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %62, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %37 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %42 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VPBE_ENC_DV_TIMINGS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %65

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %34

65:                                               ; preds = %57, %34
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %68 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %85

74:                                               ; preds = %65
  %75 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %76 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %71, %30
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
