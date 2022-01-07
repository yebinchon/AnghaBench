; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_val_to_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_val_to_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_tea575x = type { i32 }

@TEA575X_BIT_FREQ_MASK = common dso_local global i32 0, align 4
@TEA575X_FMIF = common dso_local global i32 0, align 4
@TEA575X_AMIF = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tea575x*, i32)* @snd_tea575x_val_to_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_tea575x_val_to_freq(%struct.snd_tea575x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tea575x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @TEA575X_BIT_FREQ_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %16 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %38 [
    i32 129, label %18
    i32 128, label %26
    i32 130, label %34
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 125
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 10
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @TEA575X_FMIF, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %38

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 125
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 10
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @TEA575X_FMIF, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %14
  %35 = load i32, i32* @TEA575X_AMIF, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %14, %34, %26, %18
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 16
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %42 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %43 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %50 = load %struct.snd_tea575x*, %struct.snd_tea575x** %4, align 8
  %51 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clamp(i32 %40, i32 %48, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %38, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
