; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_fill_xu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_fill_xu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_control = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uvc_control_info = type { i32, i32, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_GET_LEN = common dso_local global i32 0, align 4
@UVC_TRACE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"GET_LEN failed on control %pUl/%u (%d).\0A\00", align 1
@UVC_CTRL_FLAG_GET_MIN = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_MAX = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_RES = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to get flags for control %pUl/%u (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"XU control %pUl/%u queried: len %u, flags { get %u set %u auto %u }.\0A\00", align 1
@UVC_CTRL_FLAG_GET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_SET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_AUTO_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*)* @uvc_ctrl_fill_xu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_fill_xu_info(%struct.uvc_device* %0, %struct.uvc_control* %1, %struct.uvc_control_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %6, align 8
  store %struct.uvc_control_info* %2, %struct.uvc_control_info** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 2, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %140

17:                                               ; preds = %3
  %18 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %19 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %22 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %20, i32 %26, i32 4)
  %28 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %29 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %32 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %34 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %38 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %40 = load i32, i32* @UVC_GET_LEN, align 4
  %41 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %42 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %47 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %50 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @uvc_query_ctrl(%struct.uvc_device* %39, i32 %40, i32 %45, i32 %48, i64 %51, i32* %52, i32 2)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %17
  %57 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %58 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %59 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %62 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, i32, i64, i32, ...) @uvc_trace(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63, i32 %64)
  br label %136

66:                                               ; preds = %17
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @le16_to_cpup(i32* %67)
  %69 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %70 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @UVC_CTRL_FLAG_GET_MIN, align 4
  %72 = load i32, i32* @UVC_CTRL_FLAG_GET_MAX, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @UVC_CTRL_FLAG_GET_RES, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @UVC_CTRL_FLAG_GET_DEF, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %79 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %81 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %82 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %83 = call i32 @uvc_ctrl_get_flags(%struct.uvc_device* %80, %struct.uvc_control* %81, %struct.uvc_control_info* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %66
  %87 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %88 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %89 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %92 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i32, i8*, i32, i64, i32, ...) @uvc_trace(i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %93, i32 %94)
  br label %136

96:                                               ; preds = %66
  %97 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %98 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %99 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %100 = call i32 @uvc_ctrl_fixup_xu_info(%struct.uvc_device* %97, %struct.uvc_control* %98, %struct.uvc_control_info* %99)
  %101 = load i32, i32* @UVC_TRACE_CONTROL, align 4
  %102 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %103 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %106 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %109 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %112 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @UVC_CTRL_FLAG_GET_CUR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  %119 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %120 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @UVC_CTRL_FLAG_SET_CUR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  %127 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %128 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @UVC_CTRL_FLAG_AUTO_UPDATE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  %135 = call i32 (i32, i8*, i32, i64, i32, ...) @uvc_trace(i32 %101, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %104, i64 %107, i32 %110, i32 %118, i32 %126, i32 %134)
  br label %136

136:                                              ; preds = %96, %86, %56
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @kfree(i32* %137)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %136, %14
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @uvc_query_ctrl(%struct.uvc_device*, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @uvc_ctrl_get_flags(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*) #1

declare dso_local i32 @uvc_ctrl_fixup_xu_info(%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
