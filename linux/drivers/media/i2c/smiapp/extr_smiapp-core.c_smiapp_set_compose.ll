; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_compose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_set_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64 }
%struct.smiapp_sensor = type { %struct.smiapp_subdev* }
%struct.smiapp_subdev = type { i32 }

@SMIAPP_PADS = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @smiapp_set_compose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_set_compose(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.smiapp_sensor*, align 8
  %9 = alloca %struct.smiapp_subdev*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %14)
  store %struct.smiapp_sensor* %15, %struct.smiapp_sensor** %8, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev* %16)
  store %struct.smiapp_subdev* %17, %struct.smiapp_subdev** %9, align 8
  %18 = load i32, i32* @SMIAPP_PADS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.v4l2_rect*, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %24 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @smiapp_get_crop_compose(%struct.v4l2_subdev* %22, %struct.v4l2_subdev_pad_config* %23, %struct.v4l2_rect** %21, %struct.v4l2_rect** %10, i32 %26)
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %9, align 8
  %35 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %36 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %35, i32 0, i32 0
  %37 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %36, align 8
  %38 = icmp eq %struct.smiapp_subdev* %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %41 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %42 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %44 = call i32 @smiapp_set_compose_binner(%struct.v4l2_subdev* %40, %struct.v4l2_subdev_pad_config* %41, %struct.v4l2_subdev_selection* %42, %struct.v4l2_rect** %21, %struct.v4l2_rect* %43)
  br label %51

45:                                               ; preds = %3
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %47 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %48 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %49 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %50 = call i32 @smiapp_set_compose_scaler(%struct.v4l2_subdev* %46, %struct.v4l2_subdev_pad_config* %47, %struct.v4l2_subdev_selection* %48, %struct.v4l2_rect** %21, %struct.v4l2_rect* %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %53 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %53, i32 0, i32 1
  %55 = bitcast %struct.v4l2_rect* %52 to i8*
  %56 = bitcast %struct.v4l2_rect* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %58 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %59 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @V4L2_SEL_TGT_COMPOSE, align 4
  %63 = call i32 @smiapp_propagate(%struct.v4l2_subdev* %57, %struct.v4l2_subdev_pad_config* %58, i32 %61, i32 %62)
  %64 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %71 = call i32 @smiapp_update_mode(%struct.smiapp_sensor* %70)
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

72:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local %struct.smiapp_subdev* @to_smiapp_subdev(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @smiapp_get_crop_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect**, %struct.v4l2_rect**, i32) #1

declare dso_local i32 @smiapp_set_compose_binner(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*, %struct.v4l2_rect**, %struct.v4l2_rect*) #1

declare dso_local i32 @smiapp_set_compose_scaler(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*, %struct.v4l2_rect**, %struct.v4l2_rect*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @smiapp_propagate(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @smiapp_update_mode(%struct.smiapp_sensor*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
