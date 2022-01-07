; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_enable_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_enable_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32, i32, %struct.osd_window_state* }
%struct.osd_window_state = type { i32, i32, i32, %struct.osd_layer_config }
%struct.osd_layer_config = type { i64, i32, i32, i32 }

@PIXFMT_OSD_ATTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osd_state*, i32, i32)* @osd_enable_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_enable_layer(%struct.osd_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.osd_state*, align 8
  %9 = alloca %struct.osd_window_state*, align 8
  %10 = alloca %struct.osd_layer_config*, align 8
  %11 = alloca i64, align 8
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  store %struct.osd_state* %12, %struct.osd_state** %8, align 8
  %13 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %14 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %13, i32 0, i32 3
  %15 = load %struct.osd_window_state*, %struct.osd_window_state** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %15, i64 %17
  store %struct.osd_window_state* %18, %struct.osd_window_state** %9, align 8
  %19 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %20 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %19, i32 0, i32 3
  store %struct.osd_layer_config* %20, %struct.osd_layer_config** %10, align 8
  %21 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %22 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %21, i32 0, i32 0
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %3
  %28 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %29 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %34 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %39 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %44 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %49 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47, %42, %37, %32, %27
  %53 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %54 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %53, i32 0, i32 0
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  store i32 -1, i32* %4, align 4
  br label %95

57:                                               ; preds = %47, %3
  %58 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %59 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %64 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i32 0, i32* %4, align 4
  br label %95

67:                                               ; preds = %57
  %68 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %69 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %71 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @_osd_enable_layer(%struct.osd_state* %76, i32 %77)
  br label %90

79:                                               ; preds = %67
  %80 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %81 = call i32 @_osd_enable_attribute_mode(%struct.osd_state* %80)
  %82 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %83 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %84 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %87 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @_osd_set_blink_attribute(%struct.osd_state* %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %79, %75
  %91 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %92 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %91, i32 0, i32 0
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %62, %52
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_osd_enable_layer(%struct.osd_state*, i32) #1

declare dso_local i32 @_osd_enable_attribute_mode(%struct.osd_state*) #1

declare dso_local i32 @_osd_set_blink_attribute(%struct.osd_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
