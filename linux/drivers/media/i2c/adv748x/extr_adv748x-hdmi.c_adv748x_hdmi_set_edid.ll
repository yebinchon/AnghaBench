; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_set_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_set_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_edid = type { i64, i32, i32, i32*, i32 }
%struct.adv748x_hdmi = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.adv748x_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADV748X_REPEATER_EDID_SZ = common dso_local global i32 0, align 4
@ADV748X_REPEATER_EDID_SZ_SHIFT = common dso_local global i32 0, align 4
@ADV748X_REPEATER_EDID_CTL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error %d writing edid pad %d\0A\00", align 1
@ADV748X_REPEATER_EDID_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)* @adv748x_hdmi_set_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_set_edid(%struct.v4l2_subdev* %0, %struct.v4l2_edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_edid*, align 8
  %6 = alloca %struct.adv748x_hdmi*, align 8
  %7 = alloca %struct.adv748x_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_edid* %1, %struct.v4l2_edid** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev* %10)
  store %struct.adv748x_hdmi* %11, %struct.adv748x_hdmi** %6, align 8
  %12 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %13 = call %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi* %12)
  store %struct.adv748x_state* %13, %struct.adv748x_state** %7, align 8
  %14 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @memset(i32 %16, i32 0, i32 4)
  %18 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %135

25:                                               ; preds = %2
  %26 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %32 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %35 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %38 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 16, i32* %39, align 4
  %40 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %41 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 9, i32* %42, align 4
  %43 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %44 = load i32, i32* @ADV748X_REPEATER_EDID_SZ, align 4
  %45 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ADV748X_REPEATER_EDID_SZ_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @repeater_write(%struct.adv748x_state* %43, i32 %44, i32 %49)
  %51 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %52 = load i32, i32* @ADV748X_REPEATER_EDID_CTL, align 4
  %53 = call i32 @repeater_write(%struct.adv748x_state* %51, i32 %52, i32 0)
  store i32 0, i32* %3, align 4
  br label %135

54:                                               ; preds = %25
  %55 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %60, i32 0, i32 1
  store i32 4, i32* %61, align 8
  %62 = load i32, i32* @E2BIG, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %135

64:                                               ; preds = %54
  %65 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %66 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 128, %74
  %76 = call i32 @memcpy(i32 %68, i32* %71, i32 %75)
  %77 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %81 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %84 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %87 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %86, i32 0, i32 1
  %88 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 21
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 22
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @v4l2_calc_aspect_ratio(i32 %92, i32 %97)
  %99 = bitcast %struct.TYPE_4__* %9 to i64*
  store i64 %98, i64* %99, align 4
  %100 = bitcast %struct.TYPE_4__* %87 to i8*
  %101 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  %102 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %103 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 128, %105
  %107 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %108 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @adv748x_hdmi_edid_write_block(%struct.adv748x_hdmi* %102, i32 %106, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %64
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @v4l2_err(%struct.v4l2_subdev* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %135

122:                                              ; preds = %64
  %123 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %124 = load i32, i32* @ADV748X_REPEATER_EDID_SZ, align 4
  %125 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ADV748X_REPEATER_EDID_SZ_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = call i32 @repeater_write(%struct.adv748x_state* %123, i32 %124, i32 %129)
  %131 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %132 = load i32, i32* @ADV748X_REPEATER_EDID_CTL, align 4
  %133 = load i32, i32* @ADV748X_REPEATER_EDID_CTL_EN, align 4
  %134 = call i32 @repeater_write(%struct.adv748x_state* %131, i32 %132, i32 %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %122, %114, %59, %30, %22
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @repeater_write(%struct.adv748x_state*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @v4l2_calc_aspect_ratio(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @adv748x_hdmi_edid_write_block(%struct.adv748x_hdmi*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
