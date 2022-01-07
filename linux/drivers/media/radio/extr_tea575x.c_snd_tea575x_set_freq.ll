; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { i32, i32, i32 }

@TEA575X_BIT_BAND_FM = common dso_local global i32 0, align 4
@TEA575X_FMIF = common dso_local global i32 0, align 4
@TEA575X_BIT_BAND_MW = common dso_local global i32 0, align 4
@TEA575X_AMIF = common dso_local global i32 0, align 4
@TEA575X_BIT_FREQ_MASK = common dso_local global i32 0, align 4
@TEA575X_BIT_BAND_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_tea575x_set_freq(%struct.snd_tea575x* %0) #0 {
  %2 = alloca %struct.snd_tea575x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %2, align 8
  %5 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %6 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 16
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %10 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %35 [
    i32 129, label %12
    i32 128, label %21
    i32 130, label %30
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @TEA575X_BIT_BAND_FM, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @TEA575X_FMIF, align 4
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 10
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 125
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @TEA575X_BIT_BAND_FM, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @TEA575X_FMIF, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 %26, 10
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 125
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @TEA575X_BIT_BAND_MW, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @TEA575X_AMIF, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %1, %30, %21, %12
  %36 = load i32, i32* @TEA575X_BIT_FREQ_MASK, align 4
  %37 = load i32, i32* @TEA575X_BIT_BAND_MASK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %41 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %46 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @TEA575X_BIT_FREQ_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %53 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %57 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %58 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snd_tea575x_write(%struct.snd_tea575x* %56, i32 %59)
  %61 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %62 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %63 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snd_tea575x_val_to_freq(%struct.snd_tea575x* %61, i32 %64)
  %66 = load %struct.snd_tea575x*, %struct.snd_tea575x** %2, align 8
  %67 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local i32 @snd_tea575x_write(%struct.snd_tea575x*, i32) #1

declare dso_local i32 @snd_tea575x_val_to_freq(%struct.snd_tea575x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
