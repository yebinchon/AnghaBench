; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_edid = type { i64, i64, i32, i32 }
%struct.adv748x_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@ENODATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_edid*)* @adv748x_hdmi_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_get_edid(%struct.v4l2_subdev* %0, %struct.v4l2_edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_edid*, align 8
  %6 = alloca %struct.adv748x_hdmi*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_edid* %1, %struct.v4l2_edid** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev* %7)
  store %struct.adv748x_hdmi* %8, %struct.adv748x_hdmi** %6, align 8
  %9 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memset(i32 %11, i32 0, i32 4)
  %13 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %14 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODATA, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %33 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %93

38:                                               ; preds = %26, %21
  %39 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %43 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %93

50:                                               ; preds = %38
  %51 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %59 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %50
  %64 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %65 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %63, %50
  %75 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %79 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = mul nsw i64 %84, 128
  %86 = add nsw i64 %81, %85
  %87 = load %struct.v4l2_edid*, %struct.v4l2_edid** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = mul nsw i64 %89, 128
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memcpy(i32 %77, i64 %86, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %74, %47, %31, %18
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
