; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_disp_adj_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_disp_adj_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.vpbe_layer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.osd_layer_config }
%struct.osd_layer_config = type { i8*, i8*, i64, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"new xpos = %d, ypos = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpbe_display*, %struct.vpbe_layer*, i32, i32)* @vpbe_disp_adj_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpbe_disp_adj_position(%struct.vpbe_display* %0, %struct.vpbe_layer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vpbe_display*, align 8
  %6 = alloca %struct.vpbe_layer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.osd_layer_config*, align 8
  %10 = alloca %struct.vpbe_device*, align 8
  store %struct.vpbe_display* %0, %struct.vpbe_display** %5, align 8
  store %struct.vpbe_layer* %1, %struct.vpbe_layer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vpbe_layer*, %struct.vpbe_layer** %6, align 8
  %12 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.osd_layer_config* %13, %struct.osd_layer_config** %9, align 8
  %14 = load %struct.vpbe_display*, %struct.vpbe_display** %5, align 8
  %15 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %14, i32 0, i32 0
  %16 = load %struct.vpbe_device*, %struct.vpbe_device** %15, align 8
  store %struct.vpbe_device* %16, %struct.vpbe_device** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %19 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %23 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i8* @min(i32 %17, i64 %25)
  %27 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %28 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %31 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %35 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = call i8* @min(i32 %29, i64 %37)
  %39 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %40 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @debug, align 4
  %42 = load %struct.vpbe_device*, %struct.vpbe_device** %10, align 8
  %43 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %42, i32 0, i32 0
  %44 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %45 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %48 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @v4l2_dbg(i32 1, i32 %41, i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %49)
  ret void
}

declare dso_local i8* @min(i32, i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
