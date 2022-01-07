; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_tea575x_get_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_tea575x_get_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.fmr2* }
%struct.fmr2 = type { i32 }

@STR_DATA = common dso_local global i32 0, align 4
@TEA575X_DATA = common dso_local global i32 0, align 4
@STR_MOST = common dso_local global i32 0, align 4
@TEA575X_MOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tea575x*)* @fmr2_tea575x_get_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmr2_tea575x_get_pins(%struct.snd_tea575x* %0) #0 {
  %2 = alloca %struct.snd_tea575x*, align 8
  %3 = alloca %struct.fmr2*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %2, align 8
  %5 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %6 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %5, i32 0, i32 0
  %7 = load %struct.fmr2*, %struct.fmr2** %6, align 8
  store %struct.fmr2* %7, %struct.fmr2** %3, align 8
  %8 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %9 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @inb(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @STR_DATA, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @TEA575X_DATA, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @STR_MOST, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @TEA575X_MOST, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %20, %29
  ret i32 %30
}

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
