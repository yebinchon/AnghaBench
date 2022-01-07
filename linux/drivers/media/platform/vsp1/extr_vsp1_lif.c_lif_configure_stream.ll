; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lif.c_lif_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lif.c_lif_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i64, i32 }
%struct.vsp1_lif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LIF_PAD_SOURCE = common dso_local global i32 0, align 4
@VI6_IP_VERSION_MODEL_MASK = common dso_local global i32 0, align 4
@VI6_LIF_CSBTH = common dso_local global i32 0, align 4
@VI6_LIF_CSBTH_HBTH_SHIFT = common dso_local global i32 0, align 4
@VI6_LIF_CSBTH_LBTH_SHIFT = common dso_local global i32 0, align 4
@VI6_LIF_CTRL = common dso_local global i32 0, align 4
@VI6_LIF_CTRL_OBTH_SHIFT = common dso_local global i32 0, align 4
@VI6_LIF_CTRL_CFMT = common dso_local global i32 0, align 4
@VI6_LIF_CTRL_REQSEL = common dso_local global i32 0, align 4
@VI6_LIF_CTRL_LIF_EN = common dso_local global i32 0, align 4
@VI6_IP_VERSION_MASK = common dso_local global i32 0, align 4
@VI6_IP_VERSION_SOC_V3M = common dso_local global i32 0, align 4
@VI6_LIF_LBA = common dso_local global i32 0, align 4
@VI6_LIF_LBA_LBA0 = common dso_local global i32 0, align 4
@VI6_LIF_LBA_LBA1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @lif_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lif_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.vsp1_lif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %14 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %15 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %14, i32 0, i32 1
  %16 = call %struct.vsp1_lif* @to_lif(i32* %15)
  store %struct.vsp1_lif* %16, %struct.vsp1_lif** %10, align 8
  %17 = load %struct.vsp1_lif*, %struct.vsp1_lif** %10, align 8
  %18 = getelementptr inbounds %struct.vsp1_lif, %struct.vsp1_lif* %17, i32 0, i32 0
  %19 = load %struct.vsp1_lif*, %struct.vsp1_lif** %10, align 8
  %20 = getelementptr inbounds %struct.vsp1_lif, %struct.vsp1_lif* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LIF_PAD_SOURCE, align 4
  %24 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__* %18, i32 %22, i32 %23)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %9, align 8
  %25 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %26 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VI6_IP_VERSION_MODEL_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %46 [
    i32 131, label %32
    i32 129, label %32
    i32 132, label %44
    i32 128, label %44
    i32 130, label %45
  ]

32:                                               ; preds = %4, %4
  store i32 1536, i32* %11, align 4
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = sdiv i32 %36, 2
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = sub nsw i32 %41, 4
  %43 = call i32 @min(i32 128, i32 %42)
  store i32 %43, i32* %12, align 4
  store i32 1520, i32* %13, align 4
  br label %47

44:                                               ; preds = %4, %4
  store i32 0, i32* %11, align 4
  store i32 1500, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %47

45:                                               ; preds = %4
  br label %46

46:                                               ; preds = %4, %45
  store i32 0, i32* %11, align 4
  store i32 3000, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %46, %44, %32
  %48 = load %struct.vsp1_lif*, %struct.vsp1_lif** %10, align 8
  %49 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %50 = load i32, i32* @VI6_LIF_CSBTH, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @VI6_LIF_CSBTH_HBTH_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @VI6_LIF_CSBTH_LBTH_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = call i32 @vsp1_lif_write(%struct.vsp1_lif* %48, %struct.vsp1_dl_body* %49, i32 %50, i32 %57)
  %59 = load %struct.vsp1_lif*, %struct.vsp1_lif** %10, align 8
  %60 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %61 = load i32, i32* @VI6_LIF_CTRL, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @VI6_LIF_CTRL_OBTH_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %47
  %70 = load i32, i32* @VI6_LIF_CTRL_CFMT, align 4
  br label %72

71:                                               ; preds = %47
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %64, %73
  %75 = load i32, i32* @VI6_LIF_CTRL_REQSEL, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @VI6_LIF_CTRL_LIF_EN, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @vsp1_lif_write(%struct.vsp1_lif* %59, %struct.vsp1_dl_body* %60, i32 %61, i32 %78)
  %80 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %81 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @VI6_IP_VERSION_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @VI6_IP_VERSION_SOC_V3M, align 4
  %88 = or i32 128, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %72
  %91 = load %struct.vsp1_lif*, %struct.vsp1_lif** %10, align 8
  %92 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %93 = load i32, i32* @VI6_LIF_LBA, align 4
  %94 = load i32, i32* @VI6_LIF_LBA_LBA0, align 4
  %95 = load i32, i32* @VI6_LIF_LBA_LBA1_SHIFT, align 4
  %96 = shl i32 1536, %95
  %97 = or i32 %94, %96
  %98 = call i32 @vsp1_lif_write(%struct.vsp1_lif* %91, %struct.vsp1_dl_body* %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %90, %72
  ret void
}

declare dso_local %struct.vsp1_lif* @to_lif(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vsp1_lif_write(%struct.vsp1_lif*, %struct.vsp1_dl_body*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
