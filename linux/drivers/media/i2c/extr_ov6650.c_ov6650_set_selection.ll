; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov6650 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@W_CIF = common dso_local global i64 0, align 8
@H_CIF = common dso_local global i64 0, align 8
@DEF_HSTRT = common dso_local global i32 0, align 4
@DEF_VSTRT = common dso_local global i32 0, align 4
@REG_HSTRT = common dso_local global i32 0, align 4
@REG_HSTOP = common dso_local global i32 0, align 4
@REG_VSTRT = common dso_local global i32 0, align 4
@REG_VSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @ov6650_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.ov6650*, align 8
  %10 = alloca %struct.v4l2_rect, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %15 = call %struct.ov6650* @to_ov6650(%struct.i2c_client* %14)
  store %struct.ov6650* %15, %struct.ov6650** %9, align 8
  %16 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %16, i32 0, i32 2
  %18 = bitcast %struct.v4l2_rect* %10 to i8*
  %19 = bitcast %struct.v4l2_rect* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %132

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %36 = load i64, i64* @W_CIF, align 8
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %38 = load i64, i64* @H_CIF, align 8
  %39 = call i32 @v4l_bound_align_image(i32* %35, i32 2, i64 %36, i32 1, i32* %37, i32 2, i64 %38, i32 1, i32 0)
  %40 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %41 = load i32, i32* @DEF_HSTRT, align 4
  %42 = shl i32 %41, 1
  %43 = load i32, i32* @DEF_HSTRT, align 4
  %44 = shl i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @W_CIF, align 8
  %47 = add nsw i64 %45, %46
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %47, %50
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %53 = load i32, i32* @DEF_VSTRT, align 4
  %54 = shl i32 %53, 1
  %55 = load i32, i32* @DEF_VSTRT, align 4
  %56 = shl i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @H_CIF, align 8
  %59 = add nsw i64 %57, %58
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %59, %62
  %64 = call i32 @v4l_bound_align_image(i32* %40, i32 %42, i64 %51, i32 1, i32* %52, i32 %54, i64 %63, i32 1, i32 0)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %66 = load i32, i32* @REG_HSTRT, align 4
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 1
  %70 = call i32 @ov6650_reg_write(%struct.i2c_client* %65, i32 %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %34
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ov6650*, %struct.ov6650** %9, align 8
  %77 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %80 = load i32, i32* @REG_HSTOP, align 4
  %81 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %82, %84
  %86 = ashr i32 %85, 1
  %87 = call i32 @ov6650_reg_write(%struct.i2c_client* %79, i32 %80, i32 %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %73, %34
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ov6650*, %struct.ov6650** %9, align 8
  %95 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %98 = load i32, i32* @REG_VSTRT, align 4
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 1
  %102 = call i32 @ov6650_reg_write(%struct.i2c_client* %97, i32 %98, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %91, %88
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ov6650*, %struct.ov6650** %9, align 8
  %110 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %113 = load i32, i32* @REG_VSTOP, align 4
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %115, %117
  %119 = ashr i32 %118, 1
  %120 = call i32 @ov6650_reg_write(%struct.i2c_client* %112, i32 %113, i32 %119)
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %106, %103
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ov6650*, %struct.ov6650** %9, align 8
  %128 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %31
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov6650* @to_ov6650(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i64, i32, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @ov6650_reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
