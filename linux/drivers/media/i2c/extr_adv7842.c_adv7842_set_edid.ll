; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_set_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_set_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_edid = type { i32, i64, i32, i32*, i32* }
%struct.adv7842_state = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error %d writing edid on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)* @adv7842_set_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_set_edid(%struct.v4l2_subdev* %0, %struct.v4l2_edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_edid*, align 8
  %6 = alloca %struct.adv7842_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_edid* %1, %struct.v4l2_edid** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.adv7842_state* %9, %struct.adv7842_state** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @memset(i32* %12, i32 0, i32 8)
  %14 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 128
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %147

21:                                               ; preds = %2
  %22 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %147

29:                                               ; preds = %21
  %30 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %35, i32 0, i32 2
  store i32 2, i32* %36, align 8
  %37 = load i32, i32* @E2BIG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %147

39:                                               ; preds = %29
  %40 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 21
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 22
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @v4l2_calc_aspect_ratio(i32 %44, i32 %49)
  %51 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %52 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %132 [
    i32 128, label %56
    i32 130, label %83
    i32 129, label %83
  ]

56:                                               ; preds = %39
  %57 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %58 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @memset(i32* %59, i32 0, i32 256)
  %61 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %68 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %71 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 128, %78
  %80 = call i32 @memcpy(i32* %72, i32* %75, i32 %79)
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %82 = call i32 @edid_write_vga_segment(%struct.v4l2_subdev* %81)
  store i32 %82, i32* %7, align 4
  br label %135

83:                                               ; preds = %39, %39
  %84 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %85 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = call i32 @memset(i32* %86, i32 0, i32 256)
  %88 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 4, %95
  %97 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %98 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %115

102:                                              ; preds = %83
  %103 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 4, %105
  %107 = xor i32 %106, -1
  %108 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %109 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %114 = call i32 @adv7842_s_detect_tx_5v_ctrl(%struct.v4l2_subdev* %113)
  br label %115

115:                                              ; preds = %102, %92
  %116 = load %struct.adv7842_state*, %struct.adv7842_state** %6, align 8
  %117 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %123 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 128, %124
  %126 = call i32 @memcpy(i32* %118, i32* %121, i32 %125)
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %128 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @edid_write_hdmi_segment(%struct.v4l2_subdev* %127, i32 %130)
  store i32 %131, i32* %7, align 4
  br label %135

132:                                              ; preds = %39
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %147

135:                                              ; preds = %115, %56
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @v4l2_err(%struct.v4l2_subdev* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %135
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %132, %34, %26, %18
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @v4l2_calc_aspect_ratio(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @edid_write_vga_segment(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7842_s_detect_tx_5v_ctrl(%struct.v4l2_subdev*) #1

declare dso_local i32 @edid_write_hdmi_segment(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
