; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uif.c_uif_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uif.c_uif_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32, i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_uif = type { i64 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@VI6_UIF_DISCOM_DOCMPMR = common dso_local global i32 0, align 4
@UIF_PAD_SINK = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@VI6_UIF_DISCOM_DOCMSPXR = common dso_local global i32 0, align 4
@VI6_UIF_DISCOM_DOCMSPYR = common dso_local global i32 0, align 4
@VI6_UIF_DISCOM_DOCMSZXR = common dso_local global i32 0, align 4
@VI6_UIF_DISCOM_DOCMSZYR = common dso_local global i32 0, align 4
@VI6_UIF_DISCOM_DOCMCR = common dso_local global i32 0, align 4
@VI6_UIF_DISCOM_DOCMCR_CMPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @uif_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uif_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_uif*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %13 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %14 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %13, i32 0, i32 1
  %15 = call %struct.vsp1_uif* @to_uif(i32* %14)
  store %struct.vsp1_uif* %15, %struct.vsp1_uif** %9, align 8
  %16 = load %struct.vsp1_uif*, %struct.vsp1_uif** %9, align 8
  %17 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %18 = load i32, i32* @VI6_UIF_DISCOM_DOCMPMR, align 4
  %19 = call i32 @VI6_UIF_DISCOM_DOCMPMR_SEL(i32 9)
  %20 = call i32 @vsp1_uif_write(%struct.vsp1_uif* %16, %struct.vsp1_dl_body* %17, i32 %18, i32 %19)
  %21 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %22 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %23 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UIF_PAD_SINK, align 4
  %26 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  %27 = call %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity* %21, i32 %24, i32 %25, i32 %26)
  store %struct.v4l2_rect* %27, %struct.v4l2_rect** %10, align 8
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.vsp1_uif*, %struct.vsp1_uif** %9, align 8
  %35 = getelementptr inbounds %struct.vsp1_uif, %struct.vsp1_uif* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = udiv i32 %39, 2
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = udiv i32 %41, 2
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %38, %4
  %44 = load %struct.vsp1_uif*, %struct.vsp1_uif** %9, align 8
  %45 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %46 = load i32, i32* @VI6_UIF_DISCOM_DOCMSPXR, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @vsp1_uif_write(%struct.vsp1_uif* %44, %struct.vsp1_dl_body* %45, i32 %46, i32 %47)
  %49 = load %struct.vsp1_uif*, %struct.vsp1_uif** %9, align 8
  %50 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %51 = load i32, i32* @VI6_UIF_DISCOM_DOCMSPYR, align 4
  %52 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %53 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vsp1_uif_write(%struct.vsp1_uif* %49, %struct.vsp1_dl_body* %50, i32 %51, i32 %54)
  %56 = load %struct.vsp1_uif*, %struct.vsp1_uif** %9, align 8
  %57 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %58 = load i32, i32* @VI6_UIF_DISCOM_DOCMSZXR, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @vsp1_uif_write(%struct.vsp1_uif* %56, %struct.vsp1_dl_body* %57, i32 %58, i32 %59)
  %61 = load %struct.vsp1_uif*, %struct.vsp1_uif** %9, align 8
  %62 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %63 = load i32, i32* @VI6_UIF_DISCOM_DOCMSZYR, align 4
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vsp1_uif_write(%struct.vsp1_uif* %61, %struct.vsp1_dl_body* %62, i32 %63, i32 %66)
  %68 = load %struct.vsp1_uif*, %struct.vsp1_uif** %9, align 8
  %69 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %70 = load i32, i32* @VI6_UIF_DISCOM_DOCMCR, align 4
  %71 = load i32, i32* @VI6_UIF_DISCOM_DOCMCR_CMPR, align 4
  %72 = call i32 @vsp1_uif_write(%struct.vsp1_uif* %68, %struct.vsp1_dl_body* %69, i32 %70, i32 %71)
  ret void
}

declare dso_local %struct.vsp1_uif* @to_uif(i32*) #1

declare dso_local i32 @vsp1_uif_write(%struct.vsp1_uif*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @VI6_UIF_DISCOM_DOCMPMR_SEL(i32) #1

declare dso_local %struct.v4l2_rect* @vsp1_entity_get_pad_selection(%struct.vsp1_entity*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
