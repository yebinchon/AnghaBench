; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pvr2_v4l2_fh* }
%struct.pvr2_v4l2_fh = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.v4l2_cropcap = type { %struct.TYPE_6__, %struct.TYPE_6__, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PVR2_CID_CROPL = common dso_local global i32 0, align 4
@PVR2_CID_CROPT = common dso_local global i32 0, align 4
@PVR2_CID_CROPW = common dso_local global i32 0, align 4
@PVR2_CID_CROPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @pvr2_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.pvr2_v4l2_fh*, align 8
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca %struct.v4l2_cropcap, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %14, align 8
  store %struct.pvr2_v4l2_fh* %15, %struct.pvr2_v4l2_fh** %8, align 8
  %16 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %8, align 8
  %17 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %20, align 8
  store %struct.pvr2_hdw* %21, %struct.pvr2_hdw** %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %114

30:                                               ; preds = %3
  %31 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %32 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %10, i32 0, i32 2
  store i64 %31, i64* %32, align 8
  %33 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %109 [
    i32 130, label %36
    i32 128, label %93
    i32 129, label %101
  ]

36:                                               ; preds = %30
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %38 = load i32, i32* @PVR2_CID_CROPL, align 4
  %39 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %37, i32 %38)
  %40 = call i32 @pvr2_ctrl_get_value(i32 %39, i32* %11)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %114

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %52 = load i32, i32* @PVR2_CID_CROPT, align 4
  %53 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %51, i32 %52)
  %54 = call i32 @pvr2_ctrl_get_value(i32 %53, i32* %11)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %114

60:                                               ; preds = %46
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %66 = load i32, i32* @PVR2_CID_CROPW, align 4
  %67 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %65, i32 %66)
  %68 = call i32 @pvr2_ctrl_get_value(i32 %67, i32* %11)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %114

74:                                               ; preds = %60
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %80 = load i32, i32* @PVR2_CID_CROPH, align 4
  %81 = call i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw* %79, i32 %80)
  %82 = call i32 @pvr2_ctrl_get_value(i32 %81, i32* %11)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %114

88:                                               ; preds = %74
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  br label %112

93:                                               ; preds = %30
  %94 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %95 = call i32 @pvr2_hdw_get_cropcap(%struct.pvr2_hdw* %94, %struct.v4l2_cropcap* %10)
  store i32 %95, i32* %12, align 4
  %96 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %10, i32 0, i32 1
  %99 = bitcast %struct.TYPE_6__* %97 to i8*
  %100 = bitcast %struct.TYPE_6__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 8 %100, i64 16, i1 false)
  br label %112

101:                                              ; preds = %30
  %102 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %103 = call i32 @pvr2_hdw_get_cropcap(%struct.pvr2_hdw* %102, %struct.v4l2_cropcap* %10)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %10, i32 0, i32 0
  %107 = bitcast %struct.TYPE_6__* %105 to i8*
  %108 = bitcast %struct.TYPE_6__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 8 %108, i64 16, i1 false)
  br label %112

109:                                              ; preds = %30
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %114

112:                                              ; preds = %101, %93, %88
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %109, %85, %71, %57, %43, %27
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @pvr2_ctrl_get_value(i32, i32*) #1

declare dso_local i32 @pvr2_hdw_get_ctrl_by_id(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_get_cropcap(%struct.pvr2_hdw*, %struct.v4l2_cropcap*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
