; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preview_update = type { i32 (%struct.isp_prev_device.0*, i32)*, i32 (%struct.isp_prev_device.1*, %struct.prev_params.2*)* }
%struct.isp_prev_device.0 = type opaque
%struct.isp_prev_device.1 = type opaque
%struct.prev_params.2 = type opaque
%struct.isp_prev_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.prev_params* }
%struct.prev_params = type { i32 }

@update_attrs = common dso_local global %struct.preview_update* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*, i32, i32)* @preview_setup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_setup_hw(%struct.isp_prev_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isp_prev_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.preview_update*, align 8
  %9 = alloca %struct.prev_params*, align 8
  %10 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %95

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %92, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.preview_update*, %struct.preview_update** @update_attrs, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.preview_update* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %95

20:                                               ; preds = %15
  %21 = load %struct.preview_update*, %struct.preview_update** @update_attrs, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.preview_update, %struct.preview_update* %21, i64 %23
  store %struct.preview_update* %24, %struct.preview_update** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %92

32:                                               ; preds = %20
  %33 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %34 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.prev_params*, %struct.prev_params** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %36, i64 %43
  store %struct.prev_params* %44, %struct.prev_params** %9, align 8
  %45 = load %struct.prev_params*, %struct.prev_params** %9, align 8
  %46 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %32
  %52 = load %struct.preview_update*, %struct.preview_update** %8, align 8
  %53 = getelementptr inbounds %struct.preview_update, %struct.preview_update* %52, i32 0, i32 1
  %54 = load i32 (%struct.isp_prev_device.1*, %struct.prev_params.2*)*, i32 (%struct.isp_prev_device.1*, %struct.prev_params.2*)** %53, align 8
  %55 = icmp ne i32 (%struct.isp_prev_device.1*, %struct.prev_params.2*)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.preview_update*, %struct.preview_update** %8, align 8
  %58 = getelementptr inbounds %struct.preview_update, %struct.preview_update* %57, i32 0, i32 1
  %59 = load i32 (%struct.isp_prev_device.1*, %struct.prev_params.2*)*, i32 (%struct.isp_prev_device.1*, %struct.prev_params.2*)** %58, align 8
  %60 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %61 = bitcast %struct.isp_prev_device* %60 to %struct.isp_prev_device.1*
  %62 = load %struct.prev_params*, %struct.prev_params** %9, align 8
  %63 = bitcast %struct.prev_params* %62 to %struct.prev_params.2*
  %64 = call i32 %59(%struct.isp_prev_device.1* %61, %struct.prev_params.2* %63)
  br label %65

65:                                               ; preds = %56, %51
  %66 = load %struct.preview_update*, %struct.preview_update** %8, align 8
  %67 = getelementptr inbounds %struct.preview_update, %struct.preview_update* %66, i32 0, i32 0
  %68 = load i32 (%struct.isp_prev_device.0*, i32)*, i32 (%struct.isp_prev_device.0*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.isp_prev_device.0*, i32)* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.preview_update*, %struct.preview_update** %8, align 8
  %72 = getelementptr inbounds %struct.preview_update, %struct.preview_update* %71, i32 0, i32 0
  %73 = load i32 (%struct.isp_prev_device.0*, i32)*, i32 (%struct.isp_prev_device.0*, i32)** %72, align 8
  %74 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %75 = bitcast %struct.isp_prev_device* %74 to %struct.isp_prev_device.0*
  %76 = call i32 %73(%struct.isp_prev_device.0* %75, i32 1)
  br label %77

77:                                               ; preds = %70, %65
  br label %91

78:                                               ; preds = %32
  %79 = load %struct.preview_update*, %struct.preview_update** %8, align 8
  %80 = getelementptr inbounds %struct.preview_update, %struct.preview_update* %79, i32 0, i32 0
  %81 = load i32 (%struct.isp_prev_device.0*, i32)*, i32 (%struct.isp_prev_device.0*, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.isp_prev_device.0*, i32)* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.preview_update*, %struct.preview_update** %8, align 8
  %85 = getelementptr inbounds %struct.preview_update, %struct.preview_update* %84, i32 0, i32 0
  %86 = load i32 (%struct.isp_prev_device.0*, i32)*, i32 (%struct.isp_prev_device.0*, i32)** %85, align 8
  %87 = load %struct.isp_prev_device*, %struct.isp_prev_device** %4, align 8
  %88 = bitcast %struct.isp_prev_device* %87 to %struct.isp_prev_device.0*
  %89 = call i32 %86(%struct.isp_prev_device.0* %88, i32 0)
  br label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %90, %77
  br label %92

92:                                               ; preds = %91, %31
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %15

95:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.preview_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
