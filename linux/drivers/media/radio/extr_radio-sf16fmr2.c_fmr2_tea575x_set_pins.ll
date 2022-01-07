; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_tea575x_set_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_tea575x_set_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.fmr2* }
%struct.fmr2 = type { i32 }

@TEA575X_DATA = common dso_local global i32 0, align 4
@STR_DATA = common dso_local global i32 0, align 4
@TEA575X_CLK = common dso_local global i32 0, align 4
@STR_CLK = common dso_local global i32 0, align 4
@TEA575X_WREN = common dso_local global i32 0, align 4
@STR_WREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_tea575x*, i32)* @fmr2_tea575x_set_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmr2_tea575x_set_pins(%struct.snd_tea575x* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_tea575x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fmr2*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %8 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %7, i32 0, i32 0
  %9 = load %struct.fmr2*, %struct.fmr2** %8, align 8
  store %struct.fmr2* %9, %struct.fmr2** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TEA575X_DATA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @STR_DATA, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TEA575X_CLK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @STR_CLK, align 4
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TEA575X_WREN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @STR_WREN, align 4
  %39 = load i32, i32* @STR_DATA, align 4
  %40 = or i32 %38, %39
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ 0, %36 ], [ %40, %37 ]
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.fmr2*, %struct.fmr2** %5, align 8
  %47 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @outb(i32 %45, i32 %48)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
