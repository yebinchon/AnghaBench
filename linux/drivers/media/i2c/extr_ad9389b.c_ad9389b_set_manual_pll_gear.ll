; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_set_manual_pll_gear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_set_manual_pll_gear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32)* @ad9389b_set_manual_pll_gear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad9389b_set_manual_pll_gear(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 140000000
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 192, i32* %5, align 4
  br label %25

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 117000000
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 176, i32* %5, align 4
  br label %24

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 87000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 160, i32* %5, align 4
  br label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 60000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 144, i32* %5, align 4
  br label %22

21:                                               ; preds = %17
  store i32 128, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %16
  br label %24

24:                                               ; preds = %23, %12
  br label %25

25:                                               ; preds = %24, %8
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ad9389b_wr_and_or(%struct.v4l2_subdev* %26, i32 152, i32 15, i32 %27)
  ret void
}

declare dso_local i32 @ad9389b_wr_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
