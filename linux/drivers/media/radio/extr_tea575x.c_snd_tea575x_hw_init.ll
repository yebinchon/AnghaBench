; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@TEA575X_BIT_BAND_FM = common dso_local global i32 0, align 4
@TEA575X_BIT_SEARCH_5_28 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tea575x_hw_init(%struct.snd_tea575x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_tea575x*, align 8
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %3, align 8
  %4 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %5 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %7 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %12 = call i32 @snd_tea575x_write(%struct.snd_tea575x* %11, i32 21930)
  %13 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %14 = call i32 @snd_tea575x_read(%struct.snd_tea575x* %13)
  %15 = icmp ne i32 %14, 21930
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* @TEA575X_BIT_BAND_FM, align 4
  %22 = load i32, i32* @TEA575X_BIT_SEARCH_5_28, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %25 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %27 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %26, i32 0, i32 2
  store i32 1448000, i32* %27, align 4
  %28 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %29 = call i32 @snd_tea575x_set_freq(%struct.snd_tea575x* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @snd_tea575x_write(%struct.snd_tea575x*, i32) #1

declare dso_local i32 @snd_tea575x_read(%struct.snd_tea575x*) #1

declare dso_local i32 @snd_tea575x_set_freq(%struct.snd_tea575x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
