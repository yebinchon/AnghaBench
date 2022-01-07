; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_output_framefmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_output_framefmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.s5k6aa = type { i32 }
%struct.s5k6aa_preset = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@s5k6aa_formats = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, %struct.s5k6aa_preset*)* @s5k6aa_set_output_framefmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_output_framefmt(%struct.s5k6aa* %0, %struct.s5k6aa_preset* %1) #0 {
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca %struct.s5k6aa_preset*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %3, align 8
  store %struct.s5k6aa_preset* %1, %struct.s5k6aa_preset** %4, align 8
  %8 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %9 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %8, i32 0, i32 0
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %12 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %13 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %12, i32 0, i32 1
  %14 = call i32 @s5k6aa_get_pixfmt_index(%struct.s5k6aa* %11, %struct.TYPE_3__* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %17 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_P_OUT_WIDTH(i32 %18)
  %20 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %21 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @s5k6aa_write(%struct.i2c_client* %15, i32 %19, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %30 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @REG_P_OUT_HEIGHT(i32 %31)
  %33 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %34 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @s5k6aa_write(%struct.i2c_client* %28, i32 %32, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %27, %2
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %38
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %4, align 8
  %44 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_P_FMT(i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s5k6aa_formats, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @s5k6aa_write(%struct.i2c_client* %42, i32 %46, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %41, %38
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_get_pixfmt_index(%struct.s5k6aa*, %struct.TYPE_3__*) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @REG_P_OUT_WIDTH(i32) #1

declare dso_local i32 @REG_P_OUT_HEIGHT(i32) #1

declare dso_local i32 @REG_P_FMT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
