; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_uds = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@UDS_PAD_SINK = common dso_local global i32 0, align 4
@UDS_PAD_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hscale %u vscale %u\0A\00", align 1
@VI6_UDS_CTRL = common dso_local global i32 0, align 4
@VI6_UDS_CTRL_AON = common dso_local global i32 0, align 4
@VI6_UDS_CTRL_BC = common dso_local global i32 0, align 4
@VI6_UDS_PASS_BWIDTH = common dso_local global i32 0, align 4
@VI6_UDS_PASS_BWIDTH_H_SHIFT = common dso_local global i32 0, align 4
@VI6_UDS_PASS_BWIDTH_V_SHIFT = common dso_local global i32 0, align 4
@VI6_UDS_SCALE = common dso_local global i32 0, align 4
@VI6_UDS_SCALE_HFRAC_SHIFT = common dso_local global i32 0, align 4
@VI6_UDS_SCALE_VFRAC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @uds_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uds_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_uds*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %15 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %16 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %15, i32 0, i32 0
  %17 = call %struct.vsp1_uds* @to_uds(i32* %16)
  store %struct.vsp1_uds* %17, %struct.vsp1_uds** %9, align 8
  %18 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %19 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %18, i32 0, i32 1
  %20 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %21 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UDS_PAD_SINK, align 4
  %25 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__* %19, i32 %23, i32 %24)
  store %struct.v4l2_mbus_framefmt* %25, %struct.v4l2_mbus_framefmt** %11, align 8
  %26 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %27 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %26, i32 0, i32 1
  %28 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %29 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UDS_PAD_SOURCE, align 4
  %33 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__* %27, i32 %31, i32 %32)
  store %struct.v4l2_mbus_framefmt* %33, %struct.v4l2_mbus_framefmt** %10, align 8
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uds_compute_ratio(i32 %36, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @uds_compute_ratio(i32 %43, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %49 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %58 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %4
  %62 = load i32, i32* %12, align 4
  %63 = icmp uge i32 %62, 8192
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp uge i32 %65, 8192
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %61
  store i32 0, i32* %14, align 4
  br label %69

68:                                               ; preds = %64, %4
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %71 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %72 = load i32, i32* @VI6_UDS_CTRL, align 4
  %73 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %74 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @VI6_UDS_CTRL_AON, align 4
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @VI6_UDS_CTRL_BC, align 4
  br label %87

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = or i32 %81, %88
  %90 = call i32 @vsp1_uds_write(%struct.vsp1_uds* %70, %struct.vsp1_dl_body* %71, i32 %72, i32 %89)
  %91 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %92 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %93 = load i32, i32* @VI6_UDS_PASS_BWIDTH, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @uds_passband_width(i32 %94)
  %96 = load i32, i32* @VI6_UDS_PASS_BWIDTH_H_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @uds_passband_width(i32 %98)
  %100 = load i32, i32* @VI6_UDS_PASS_BWIDTH_V_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %97, %101
  %103 = call i32 @vsp1_uds_write(%struct.vsp1_uds* %91, %struct.vsp1_dl_body* %92, i32 %93, i32 %102)
  %104 = load %struct.vsp1_uds*, %struct.vsp1_uds** %9, align 8
  %105 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %106 = load i32, i32* @VI6_UDS_SCALE, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @VI6_UDS_SCALE_HFRAC_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @VI6_UDS_SCALE_VFRAC_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %109, %112
  %114 = call i32 @vsp1_uds_write(%struct.vsp1_uds* %104, %struct.vsp1_dl_body* %105, i32 %106, i32 %113)
  ret void
}

declare dso_local %struct.vsp1_uds* @to_uds(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @uds_compute_ratio(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @vsp1_uds_write(%struct.vsp1_uds*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @uds_passband_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
