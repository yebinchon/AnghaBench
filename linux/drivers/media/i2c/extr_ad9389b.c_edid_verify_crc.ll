; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_edid_verify_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_edid_verify_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ad9389b_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @edid_verify_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edid_verify_crc(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad9389b_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev* %9)
  store %struct.ad9389b_state* %10, %struct.ad9389b_state** %6, align 8
  %11 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %12 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %16 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 256
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @edid_block_verify_crc(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = mul nsw i32 %28, 2
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 256
  %36 = add nsw i32 %35, 128
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = call i32 @edid_block_verify_crc(i32* %38)
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %32
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @edid_block_verify_crc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
