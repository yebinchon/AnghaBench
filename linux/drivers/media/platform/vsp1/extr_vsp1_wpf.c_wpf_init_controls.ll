; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_rwpf = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.vsp1_device* }
%struct.vsp1_device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8* }

@VSP1_HAS_WPF_HFLIP = common dso_local global i32 0, align 4
@VSP1_HAS_WPF_VFLIP = common dso_local global i32 0, align 4
@vsp1_wpf_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_ROTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"wpf%u: failed to initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_rwpf*)* @wpf_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpf_init_controls(%struct.vsp1_rwpf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsp1_rwpf*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  store %struct.vsp1_rwpf* %0, %struct.vsp1_rwpf** %3, align 8
  %6 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.vsp1_device*, %struct.vsp1_device** %8, align 8
  store %struct.vsp1_device* %9, %struct.vsp1_device** %4, align 8
  %10 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %11 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %15 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %22 = load i32, i32* @VSP1_HAS_WPF_HFLIP, align 4
  %23 = call i64 @vsp1_feature(%struct.vsp1_device* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 3, i32* %5, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %28 = load i32, i32* @VSP1_HAS_WPF_VFLIP, align 4
  %29 = call i64 @vsp1_feature(%struct.vsp1_device* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @vsp1_rwpf_init_ctrls(%struct.vsp1_rwpf* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp uge i32 %39, 1
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %43 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %42, i32 0, i32 0
  %44 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %45 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %43, i32* @vsp1_wpf_ctrl_ops, i32 %44, i32 0, i32 1, i32 1, i32 0)
  %46 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %47 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %41, %35
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %75

53:                                               ; preds = %50
  %54 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %55 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %54, i32 0, i32 0
  %56 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %57 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %55, i32* @vsp1_wpf_ctrl_ops, i32 %56, i32 0, i32 1, i32 1, i32 0)
  %58 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %59 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i8* %57, i8** %61, align 8
  %62 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %63 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %62, i32 0, i32 0
  %64 = load i32, i32* @V4L2_CID_ROTATE, align 4
  %65 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %63, i32* @vsp1_wpf_ctrl_ops, i32 %64, i32 0, i32 270, i32 90, i32 0)
  %66 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %67 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i8* %65, i8** %69, align 8
  %70 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %71 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @v4l2_ctrl_cluster(i32 3, i8** %73)
  br label %75

75:                                               ; preds = %53, %50
  %76 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %77 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %83 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %86 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %91 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @vsp1_feature(%struct.vsp1_device*, i32) #1

declare dso_local i32 @vsp1_rwpf_init_ctrls(%struct.vsp1_rwpf*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
