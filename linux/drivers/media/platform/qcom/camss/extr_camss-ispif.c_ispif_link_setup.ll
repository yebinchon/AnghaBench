; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ispif_line = type { i32, i32, i32 }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @ispif_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ispif_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.ispif_line*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca %struct.ispif_line*, align 8
  %14 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %4
  %20 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %21 = call i64 @media_entity_remote_pad(%struct.media_pad* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %65

26:                                               ; preds = %19
  %27 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %28 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %35 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %34)
  store %struct.v4l2_subdev* %35, %struct.v4l2_subdev** %10, align 8
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %37 = call %struct.ispif_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %36)
  store %struct.ispif_line* %37, %struct.ispif_line** %11, align 8
  %38 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %39 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ispif_line*, %struct.ispif_line** %11, align 8
  %42 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %41, i32 0, i32 2
  %43 = call i32 @msm_csid_get_csid_id(i32 %40, i32* %42)
  br label %63

44:                                               ; preds = %26
  %45 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %46 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %45)
  store %struct.v4l2_subdev* %46, %struct.v4l2_subdev** %12, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %48 = call %struct.ispif_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %47)
  store %struct.ispif_line* %48, %struct.ispif_line** %13, align 8
  %49 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %50 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ispif_line*, %struct.ispif_line** %13, align 8
  %53 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %52, i32 0, i32 1
  %54 = call i32 @msm_vfe_get_vfe_id(i32 %51, i32* %53)
  %55 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %56 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @msm_vfe_get_vfe_line_id(i32 %57, i32* %14)
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @ispif_get_intf(i32 %59)
  %61 = load %struct.ispif_line*, %struct.ispif_line** %13, align 8
  %62 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %44, %33
  br label %64

64:                                               ; preds = %63, %4
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local %struct.ispif_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @msm_csid_get_csid_id(i32, i32*) #1

declare dso_local i32 @msm_vfe_get_vfe_id(i32, i32*) #1

declare dso_local i32 @msm_vfe_get_vfe_line_id(i32, i32*) #1

declare dso_local i32 @ispif_get_intf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
