; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c___adv7180_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c___adv7180_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { i32 }

@ADV7180_REG_STATUS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*, i32*, i32*)* @__adv7180_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__adv7180_status(%struct.adv7180_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adv7180_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.adv7180_state* %0, %struct.adv7180_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %10 = load i32, i32* @ADV7180_REG_STATUS1, align 4
  %11 = call i32 @adv7180_read(%struct.adv7180_state* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @adv7180_status_to_v4l2(i32 %20)
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @adv7180_std_to_v4l2(i32 %27)
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @adv7180_read(%struct.adv7180_state*, i32) #1

declare dso_local i32 @adv7180_status_to_v4l2(i32) #1

declare dso_local i32 @adv7180_std_to_v4l2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
