; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_edid_verify_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_edid_verify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7511_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@edid_verify_header.hdmi_header = internal constant [8 x i32] [i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64)* @edid_verify_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edid_verify_header(%struct.v4l2_subdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.adv7511_state*, align 8
  %7 = alloca i32*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %8)
  store %struct.adv7511_state* %9, %struct.adv7511_state** %6, align 8
  %10 = load %struct.adv7511_state*, %struct.adv7511_state** %6, align 8
  %11 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @memcmp(i32* %18, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @edid_verify_header.hdmi_header, i64 0, i64 0), i32 32)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
