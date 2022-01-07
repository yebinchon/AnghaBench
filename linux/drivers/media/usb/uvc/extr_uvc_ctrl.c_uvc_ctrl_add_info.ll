; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_add_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_add_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.uvc_control = type { i32, i32*, %struct.TYPE_4__*, %struct.uvc_control_info }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_control_info = type { i32, i32, i32, i32 }

@UVC_CTRL_DATA_LAST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Added control %pUl/%u to device %s entity %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*)* @uvc_ctrl_add_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_add_info(%struct.uvc_device* %0, %struct.uvc_control* %1, %struct.uvc_control_info* %2) #0 {
  %4 = alloca %struct.uvc_device*, align 8
  %5 = alloca %struct.uvc_control*, align 8
  %6 = alloca %struct.uvc_control_info*, align 8
  %7 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %4, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %5, align 8
  store %struct.uvc_control_info* %2, %struct.uvc_control_info** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %9 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %8, i32 0, i32 3
  %10 = load %struct.uvc_control_info*, %struct.uvc_control_info** %6, align 8
  %11 = bitcast %struct.uvc_control_info* %9 to i8*
  %12 = bitcast %struct.uvc_control_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 4 %12, i64 16, i1 false)
  %13 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %14 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %14, i32 0, i32 3
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %18 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UVC_CTRL_DATA_LAST, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %27 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %29 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %63

35:                                               ; preds = %3
  %36 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %37 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %38 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %39 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %38, i32 0, i32 3
  %40 = call i32 @uvc_ctrl_get_flags(%struct.uvc_device* %36, %struct.uvc_control* %37, %struct.uvc_control_info* %39)
  %41 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %42 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %44 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %45 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %49 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %53 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %58 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @uvc_trace(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %35, %32
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.uvc_control*, %struct.uvc_control** %5, align 8
  %68 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kfree(i32* %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i32 @uvc_ctrl_get_flags(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*) #2

declare dso_local i32 @uvc_trace(i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
