; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_configure_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_configure_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { %struct.vsp1_partition* }
%struct.vsp1_partition = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_uds = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@UDS_PAD_SOURCE = common dso_local global i32 0, align 4
@VI6_UDS_HSZCLIP = common dso_local global i32 0, align 4
@VI6_UDS_HSZCLIP_HCEN = common dso_local global i32 0, align 4
@VI6_UDS_HSZCLIP_HCL_OFST_SHIFT = common dso_local global i32 0, align 4
@VI6_UDS_HSZCLIP_HCL_SIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_UDS_CLIP_SIZE = common dso_local global i32 0, align 4
@VI6_UDS_CLIP_SIZE_HSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_UDS_CLIP_SIZE_VSIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @uds_configure_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uds_configure_partition(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_uds*, align 8
  %10 = alloca %struct.vsp1_partition*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %12 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %13 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %12, i32 0, i32 0
  %14 = call %struct.vsp1_uds* @to_uds(i32* %13)
  store %struct.vsp1_uds* %14, %struct.vsp1_uds** %9, align 8
  %15 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %16 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %15, i32 0, i32 0
  %17 = load %struct.vsp1_partition*, %struct.vsp1_partition** %16, align 8
  store %struct.vsp1_partition* %17, %struct.vsp1_partition** %10, align 8
  %18 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %19 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %18, i32 0, i32 0
  %20 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %21 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UDS_PAD_SOURCE, align 4
  %25 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_6__* %19, i32 %23, i32 %24)
  store %struct.v4l2_mbus_framefmt* %25, %struct.v4l2_mbus_framefmt** %11, align 8
  %26 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %27 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %28 = load i32, i32* @VI6_UDS_HSZCLIP, align 4
  %29 = load i32, i32* @VI6_UDS_HSZCLIP_HCEN, align 4
  %30 = load i32, i32* @VI6_UDS_HSZCLIP_HCL_OFST_SHIFT, align 4
  %31 = shl i32 0, %30
  %32 = or i32 %29, %31
  %33 = load %struct.vsp1_partition*, %struct.vsp1_partition** %10, align 8
  %34 = getelementptr inbounds %struct.vsp1_partition, %struct.vsp1_partition* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VI6_UDS_HSZCLIP_HCL_SIZE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %32, %38
  %40 = call i32 @vsp1_uds_write(%struct.vsp1_uds* %26, %struct.vsp1_dl_body* %27, i32 %28, i32 %39)
  %41 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %42 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %43 = load i32, i32* @VI6_UDS_CLIP_SIZE, align 4
  %44 = load %struct.vsp1_partition*, %struct.vsp1_partition** %10, align 8
  %45 = getelementptr inbounds %struct.vsp1_partition, %struct.vsp1_partition* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VI6_UDS_CLIP_SIZE_HSIZE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VI6_UDS_CLIP_SIZE_VSIZE_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %49, %54
  %56 = call i32 @vsp1_uds_write(%struct.vsp1_uds* %41, %struct.vsp1_dl_body* %42, i32 %43, i32 %55)
  ret void
}

declare dso_local %struct.vsp1_uds* @to_uds(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @vsp1_uds_write(%struct.vsp1_uds*, %struct.vsp1_dl_body*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
