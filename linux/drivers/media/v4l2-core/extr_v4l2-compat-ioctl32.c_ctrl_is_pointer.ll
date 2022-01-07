; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-compat-ioctl32.c_ctrl_is_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-compat-ioctl32.c_ctrl_is_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.video_device = type { %struct.v4l2_ctrl_handler*, i32, %struct.v4l2_ioctl_ops* }
%struct.v4l2_ioctl_ops = type { i32 (%struct.file.0*, %struct.v4l2_fh.1*, %struct.v4l2_query_ext_ctrl*)* }
%struct.file.0 = type opaque
%struct.v4l2_fh.1 = type opaque
%struct.v4l2_query_ext_ctrl = type { i32, i32 }
%struct.v4l2_ctrl = type { i64 }

@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_HAS_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @ctrl_is_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_is_pointer(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.v4l2_fh*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.v4l2_query_ext_ctrl, align 4
  %10 = alloca %struct.v4l2_ioctl_ops*, align 8
  %11 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %6, align 8
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %7, align 8
  store %struct.v4l2_ctrl_handler* null, %struct.v4l2_ctrl_handler** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %9, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %9, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.video_device*, %struct.video_device** %6, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 2
  %19 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %18, align 8
  store %struct.v4l2_ioctl_ops* %19, %struct.v4l2_ioctl_ops** %10, align 8
  %20 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %21 = load %struct.video_device*, %struct.video_device** %6, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.v4l2_fh*, %struct.v4l2_fh** %27, align 8
  store %struct.v4l2_fh* %28, %struct.v4l2_fh** %7, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %31 = icmp ne %struct.v4l2_fh* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %33, i32 0, i32 0
  %35 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %34, align 8
  %36 = icmp ne %struct.v4l2_ctrl_handler* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %38, i32 0, i32 0
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %39, align 8
  store %struct.v4l2_ctrl_handler* %40, %struct.v4l2_ctrl_handler** %8, align 8
  br label %51

41:                                               ; preds = %32, %29
  %42 = load %struct.video_device*, %struct.video_device** %6, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 0
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %43, align 8
  %45 = icmp ne %struct.v4l2_ctrl_handler* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.video_device*, %struct.video_device** %6, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 0
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %48, align 8
  store %struct.v4l2_ctrl_handler* %49, %struct.v4l2_ctrl_handler** %8, align 8
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %53 = icmp ne %struct.v4l2_ctrl_handler* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler* %55, i32 %56)
  store %struct.v4l2_ctrl* %57, %struct.v4l2_ctrl** %11, align 8
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %59 = icmp ne %struct.v4l2_ctrl* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i1 [ false, %54 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %96

68:                                               ; preds = %51
  %69 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %10, align 8
  %70 = icmp ne %struct.v4l2_ioctl_ops* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %72, i32 0, i32 0
  %74 = load i32 (%struct.file.0*, %struct.v4l2_fh.1*, %struct.v4l2_query_ext_ctrl*)*, i32 (%struct.file.0*, %struct.v4l2_fh.1*, %struct.v4l2_query_ext_ctrl*)** %73, align 8
  %75 = icmp ne i32 (%struct.file.0*, %struct.v4l2_fh.1*, %struct.v4l2_query_ext_ctrl*)* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %68
  store i32 0, i32* %3, align 4
  br label %96

77:                                               ; preds = %71
  %78 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %10, align 8
  %79 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %78, i32 0, i32 0
  %80 = load i32 (%struct.file.0*, %struct.v4l2_fh.1*, %struct.v4l2_query_ext_ctrl*)*, i32 (%struct.file.0*, %struct.v4l2_fh.1*, %struct.v4l2_query_ext_ctrl*)** %79, align 8
  %81 = load %struct.file*, %struct.file** %4, align 8
  %82 = bitcast %struct.file* %81 to %struct.file.0*
  %83 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %84 = bitcast %struct.v4l2_fh* %83 to %struct.v4l2_fh.1*
  %85 = call i32 %80(%struct.file.0* %82, %struct.v4l2_fh.1* %84, %struct.v4l2_query_ext_ctrl* %9)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, %struct.v4l2_query_ext_ctrl* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @V4L2_CTRL_FLAG_HAS_PAYLOAD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %87, %77
  %94 = phi i1 [ false, %77 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %76, %65
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
