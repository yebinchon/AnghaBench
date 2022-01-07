; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_sru_param = type { i32, i32 }
%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_sru = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i64 }

@SRU_PAD_SINK = common dso_local global i32 0, align 4
@SRU_PAD_SOURCE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_ARGB8888_1X32 = common dso_local global i64 0, align 8
@VI6_SRU_CTRL0_PARAM2 = common dso_local global i32 0, align 4
@VI6_SRU_CTRL0_PARAM3 = common dso_local global i32 0, align 4
@VI6_SRU_CTRL0_PARAM4 = common dso_local global i32 0, align 4
@VI6_SRU_CTRL0_MODE_UPSCALE = common dso_local global i32 0, align 4
@vsp1_sru_params = common dso_local global %struct.vsp1_sru_param* null, align 8
@VI6_SRU_CTRL0 = common dso_local global i32 0, align 4
@VI6_SRU_CTRL1 = common dso_local global i32 0, align 4
@VI6_SRU_CTRL1_PARAM5 = common dso_local global i32 0, align 4
@VI6_SRU_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @sru_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sru_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_sru_param*, align 8
  %10 = alloca %struct.vsp1_sru*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %13 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %14 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %15 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %14, i32 0, i32 0
  %16 = call %struct.vsp1_sru* @to_sru(i32* %15)
  store %struct.vsp1_sru* %16, %struct.vsp1_sru** %10, align 8
  %17 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %18 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %17, i32 0, i32 1
  %19 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %20 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SRU_PAD_SINK, align 4
  %24 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %18, i32 %22, i32 %23)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %11, align 8
  %25 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %26 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %25, i32 0, i32 1
  %27 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %28 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SRU_PAD_SOURCE, align 4
  %32 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %26, i32 %30, i32 %31)
  store %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt** %12, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MEDIA_BUS_FMT_ARGB8888_1X32, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i32, i32* @VI6_SRU_CTRL0_PARAM2, align 4
  %40 = load i32, i32* @VI6_SRU_CTRL0_PARAM3, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @VI6_SRU_CTRL0_PARAM4, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %13, align 4
  br label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @VI6_SRU_CTRL0_PARAM3, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @VI6_SRU_CTRL0_MODE_UPSCALE, align 4
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load %struct.vsp1_sru_param*, %struct.vsp1_sru_param** @vsp1_sru_params, align 8
  %60 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %61 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.vsp1_sru_param, %struct.vsp1_sru_param* %59, i64 %64
  store %struct.vsp1_sru_param* %65, %struct.vsp1_sru_param** %9, align 8
  %66 = load %struct.vsp1_sru_param*, %struct.vsp1_sru_param** %9, align 8
  %67 = getelementptr inbounds %struct.vsp1_sru_param, %struct.vsp1_sru_param* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %72 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %73 = load i32, i32* @VI6_SRU_CTRL0, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @vsp1_sru_write(%struct.vsp1_sru* %71, %struct.vsp1_dl_body* %72, i32 %73, i32 %74)
  %76 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %77 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %78 = load i32, i32* @VI6_SRU_CTRL1, align 4
  %79 = load i32, i32* @VI6_SRU_CTRL1_PARAM5, align 4
  %80 = call i32 @vsp1_sru_write(%struct.vsp1_sru* %76, %struct.vsp1_dl_body* %77, i32 %78, i32 %79)
  %81 = load %struct.vsp1_sru*, %struct.vsp1_sru** %10, align 8
  %82 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %83 = load i32, i32* @VI6_SRU_CTRL2, align 4
  %84 = load %struct.vsp1_sru_param*, %struct.vsp1_sru_param** %9, align 8
  %85 = getelementptr inbounds %struct.vsp1_sru_param, %struct.vsp1_sru_param* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @vsp1_sru_write(%struct.vsp1_sru* %81, %struct.vsp1_dl_body* %82, i32 %83, i32 %86)
  ret void
}

declare dso_local %struct.vsp1_sru* @to_sru(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @vsp1_sru_write(%struct.vsp1_sru*, %struct.vsp1_dl_body*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
