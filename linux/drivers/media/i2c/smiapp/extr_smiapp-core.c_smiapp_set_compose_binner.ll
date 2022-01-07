; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_compose_binner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_compose_binner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.smiapp_sensor = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SMIAPP_PAD_SINK = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*, %struct.v4l2_rect**, %struct.v4l2_rect*)* @smiapp_set_compose_binner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smiapp_set_compose_binner(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2, %struct.v4l2_rect** %3, %struct.v4l2_rect* %4) #0 {
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca %struct.v4l2_subdev_selection*, align 8
  %9 = alloca %struct.v4l2_rect**, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca %struct.smiapp_sensor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %8, align 8
  store %struct.v4l2_rect** %3, %struct.v4l2_rect*** %9, align 8
  store %struct.v4l2_rect* %4, %struct.v4l2_rect** %10, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %18 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %17)
  store %struct.smiapp_sensor* %18, %struct.smiapp_sensor** %11, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %20 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %21 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %20, i64 %21
  %23 = load %struct.v4l2_rect*, %struct.v4l2_rect** %22, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %31 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %30, i64 %31
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %32, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @scaling_goodness(%struct.v4l2_subdev* %19, i32 %25, i32 %29, i32 %35, i32 %39, i32 %42)
  store i32 %43, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %116, %5
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %11, align 8
  %47 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %119

50:                                               ; preds = %44
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %52 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %53 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %52, i64 %53
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %54, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %11, align 8
  %59 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %57, %65
  %67 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %72 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %71, i64 %72
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %73, align 8
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %11, align 8
  %78 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %76, %84
  %86 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @scaling_goodness(%struct.v4l2_subdev* %51, i32 %66, i32 %70, i32 %85, i32 %89, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %50
  %98 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %11, align 8
  %99 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  %106 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %11, align 8
  %107 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %106, i32 0, i32 3
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %97, %50
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %44

119:                                              ; preds = %44
  %120 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %121 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %11, align 8
  %128 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %11, align 8
  %131 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %125, %119
  %133 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %134 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %135 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %133, i64 %134
  %136 = load %struct.v4l2_rect*, %struct.v4l2_rect** %135, align 8
  %137 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %13, align 4
  %140 = udiv i32 %138, %139
  %141 = and i32 %140, -2
  %142 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %143 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.v4l2_rect**, %struct.v4l2_rect*** %9, align 8
  %146 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %147 = getelementptr inbounds %struct.v4l2_rect*, %struct.v4l2_rect** %145, i64 %146
  %148 = load %struct.v4l2_rect*, %struct.v4l2_rect** %147, align 8
  %149 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %14, align 4
  %152 = udiv i32 %150, %151
  %153 = and i32 %152, -2
  %154 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %8, align 8
  %155 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  ret void
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local i32 @scaling_goodness(%struct.v4l2_subdev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
