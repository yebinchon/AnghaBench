; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7183.c_adv7183_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7183 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv7183_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7183_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adv7183*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.adv7183* @to_adv7183(%struct.v4l2_subdev* %6)
  store %struct.adv7183* %7, %struct.adv7183** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.adv7183*, %struct.adv7183** %5, align 8
  %12 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpio_set_value(i32 %13, i32 0)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.adv7183*, %struct.adv7183** %5, align 8
  %17 = getelementptr inbounds %struct.adv7183, %struct.adv7183* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 1)
  br label %20

20:                                               ; preds = %15, %10
  %21 = call i32 @udelay(i32 1)
  ret i32 0
}

declare dso_local %struct.adv7183* @to_adv7183(%struct.v4l2_subdev*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
