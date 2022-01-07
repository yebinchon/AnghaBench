; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sony-btf-mpx.c_sony_btf_mpx_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sony-btf-mpx.c_sony_btf_mpx_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.sony_btf_mpx = type { i32 }

@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @sony_btf_mpx_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_btf_mpx_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sony_btf_mpx*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.sony_btf_mpx* @to_state(%struct.v4l2_subdev* %7)
  store %struct.sony_btf_mpx* %8, %struct.sony_btf_mpx** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 4, i32* %6, align 4
  br label %34

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 6, i32* %6, align 4
  br label %33

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 11, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %26
  br label %33

33:                                               ; preds = %32, %25
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %5, align 8
  %38 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %5, align 8
  %44 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %5, align 8
  %46 = call i32 @mpx_setup(%struct.sony_btf_mpx* %45)
  br label %47

47:                                               ; preds = %41, %35
  ret i32 0
}

declare dso_local %struct.sony_btf_mpx* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mpx_setup(%struct.sony_btf_mpx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
