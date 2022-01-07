; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_max_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_max_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_uds = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@UDS_PAD_SINK = common dso_local global i32 0, align 4
@UDS_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_entity*, %struct.vsp1_pipeline*)* @uds_max_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_max_width(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsp1_entity*, align 8
  %5 = alloca %struct.vsp1_pipeline*, align 8
  %6 = alloca %struct.vsp1_uds*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %4, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %5, align 8
  %10 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  %11 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %10, i32 0, i32 0
  %12 = call %struct.vsp1_uds* @to_uds(i32* %11)
  store %struct.vsp1_uds* %12, %struct.vsp1_uds** %6, align 8
  %13 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %14 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %13, i32 0, i32 0
  %15 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %16 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UDS_PAD_SINK, align 4
  %20 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %14, i32 %18, i32 %19)
  store %struct.v4l2_mbus_framefmt* %20, %struct.v4l2_mbus_framefmt** %8, align 8
  %21 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %22 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %21, i32 0, i32 0
  %23 = load %struct.vsp1_uds*, %struct.vsp1_uds** %6, align 8
  %24 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UDS_PAD_SOURCE, align 4
  %28 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %22, i32 %26, i32 %27)
  store %struct.v4l2_mbus_framefmt* %28, %struct.v4l2_mbus_framefmt** %7, align 8
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = udiv i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ule i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 256, i32* %3, align 4
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* %9, align 4
  %41 = icmp ule i32 %40, 4
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 512, i32* %3, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp ule i32 %44, 8
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1024, i32* %3, align 4
  br label %48

47:                                               ; preds = %43
  store i32 2048, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %42, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.vsp1_uds* @to_uds(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
