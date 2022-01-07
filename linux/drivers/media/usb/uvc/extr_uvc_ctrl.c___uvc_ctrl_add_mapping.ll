; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_ctrl_add_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_ctrl_add_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uvc_control_mapping = type { i32, i32, i32, i32*, i32*, %struct.uvc_control_mapping*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uvc_get_le_value = common dso_local global i32* null, align 8
@uvc_set_le_value = common dso_local global i32* null, align 8
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Adding mapping '%s' to control %pUl/%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_mapping*)* @__uvc_ctrl_add_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uvc_ctrl_add_mapping(%struct.uvc_device* %0, %struct.uvc_control* %1, %struct.uvc_control_mapping* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_control_mapping*, align 8
  %9 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %6, align 8
  store %struct.uvc_control_mapping* %2, %struct.uvc_control_mapping** %7, align 8
  %10 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmemdup(%struct.uvc_control_mapping* %10, i32 48, i32 %11)
  %13 = bitcast i8* %12 to %struct.uvc_control_mapping*
  store %struct.uvc_control_mapping* %13, %struct.uvc_control_mapping** %8, align 8
  %14 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %15 = icmp eq %struct.uvc_control_mapping* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %21 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %20, i32 0, i32 6
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %24 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 48, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %30 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %29, i32 0, i32 5
  %31 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmemdup(%struct.uvc_control_mapping* %31, i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.uvc_control_mapping*
  %36 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %37 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %36, i32 0, i32 5
  store %struct.uvc_control_mapping* %35, %struct.uvc_control_mapping** %37, align 8
  %38 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %39 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %38, i32 0, i32 5
  %40 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %39, align 8
  %41 = icmp eq %struct.uvc_control_mapping* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %19
  %43 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %44 = call i32 @kfree(%struct.uvc_control_mapping* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %85

47:                                               ; preds = %19
  %48 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %49 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32*, i32** @uvc_get_le_value, align 8
  %54 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %55 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %58 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32*, i32** @uvc_set_le_value, align 8
  %63 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %64 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %67 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %66, i32 0, i32 2
  %68 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %69 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = call i32 @list_add_tail(i32* %67, i32* %70)
  %72 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %73 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %74 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %77 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %81 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @uvc_trace(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %79, i32 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %65, %42, %16
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i8* @kmemdup(%struct.uvc_control_mapping*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.uvc_control_mapping*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
