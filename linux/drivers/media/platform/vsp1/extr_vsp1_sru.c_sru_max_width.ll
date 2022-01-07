; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_max_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_max_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_sru = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64 }

@SRU_PAD_SINK = common dso_local global i32 0, align 4
@SRU_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_entity*, %struct.vsp1_pipeline*)* @sru_max_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sru_max_width(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsp1_entity*, align 8
  %5 = alloca %struct.vsp1_pipeline*, align 8
  %6 = alloca %struct.vsp1_sru*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %4, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %5, align 8
  %9 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  %10 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %9, i32 0, i32 0
  %11 = call %struct.vsp1_sru* @to_sru(i32* %10)
  store %struct.vsp1_sru* %11, %struct.vsp1_sru** %6, align 8
  %12 = load %struct.vsp1_sru*, %struct.vsp1_sru** %6, align 8
  %13 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %12, i32 0, i32 0
  %14 = load %struct.vsp1_sru*, %struct.vsp1_sru** %6, align 8
  %15 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SRU_PAD_SINK, align 4
  %19 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %13, i32 %17, i32 %18)
  store %struct.v4l2_mbus_framefmt* %19, %struct.v4l2_mbus_framefmt** %7, align 8
  %20 = load %struct.vsp1_sru*, %struct.vsp1_sru** %6, align 8
  %21 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %20, i32 0, i32 0
  %22 = load %struct.vsp1_sru*, %struct.vsp1_sru** %6, align 8
  %23 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SRU_PAD_SOURCE, align 4
  %27 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %21, i32 %25, i32 %26)
  store %struct.v4l2_mbus_framefmt* %27, %struct.v4l2_mbus_framefmt** %8, align 8
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 512, i32* %3, align 4
  br label %37

36:                                               ; preds = %2
  store i32 256, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.vsp1_sru* @to_sru(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
