; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_aec_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_set_aec_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5645 = type { i32 }

@V4L2_EXPOSURE_AUTO = common dso_local global i64 0, align 8
@OV5645_AEC_MANUAL_ENABLE = common dso_local global i32 0, align 4
@OV5645_AEC_PK_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5645*, i64)* @ov5645_set_aec_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5645_set_aec_mode(%struct.ov5645* %0, i64 %1) #0 {
  %3 = alloca %struct.ov5645*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov5645* %0, %struct.ov5645** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %8 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @V4L2_EXPOSURE_AUTO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @OV5645_AEC_MANUAL_ENABLE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @OV5645_AEC_MANUAL_ENABLE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %24 = load i32, i32* @OV5645_AEC_PK_MANUAL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ov5645_write_reg(%struct.ov5645* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ov5645*, %struct.ov5645** %3, align 8
  %32 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @ov5645_write_reg(%struct.ov5645*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
