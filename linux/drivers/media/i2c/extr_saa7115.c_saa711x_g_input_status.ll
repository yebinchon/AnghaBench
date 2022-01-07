; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_g_input_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_g_input_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i64 }

@V4L2_IN_ST_NO_SIGNAL = common dso_local global i64 0, align 8
@SAA7115 = common dso_local global i64 0, align 8
@R_1E_STATUS_BYTE_1_VD_DEC = common dso_local global i32 0, align 4
@R_1F_STATUS_BYTE_2_VD_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64*)* @saa711x_g_input_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_g_input_status(%struct.v4l2_subdev* %0, i64* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.saa711x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.saa711x_state* %9, %struct.saa711x_state** %5, align 8
  store i32 128, i32* %6, align 4
  %10 = load i64, i64* @V4L2_IN_ST_NO_SIGNAL, align 8
  %11 = load i64*, i64** %4, align 8
  store i64 %10, i64* %11, align 8
  %12 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %13 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SAA7115, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = load i32, i32* @R_1E_STATUS_BYTE_1_VD_DEC, align 4
  %20 = call i32 @saa711x_read(%struct.v4l2_subdev* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = load i32, i32* @R_1F_STATUS_BYTE_2_VD_DEC, align 4
  %24 = call i32 @saa711x_read(%struct.v4l2_subdev* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 193
  %27 = icmp eq i32 %26, 129
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 192
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64*, i64** %4, align 8
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %32, %28, %21
  ret i32 0
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
