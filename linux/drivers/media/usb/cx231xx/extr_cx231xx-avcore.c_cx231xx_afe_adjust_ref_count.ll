; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_adjust_ref_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_adjust_ref_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i64 }

@CX231XX_VMUX_TELEVISION = common dso_local global i64 0, align 8
@ADC_INPUT_CH3 = common dso_local global i32 0, align 4
@ADC_NTF_PRECLMP_EN_CH3 = common dso_local global i32 0, align 4
@ADC_INPUT_CH1 = common dso_local global i32 0, align 4
@ADC_NTF_PRECLMP_EN_CH1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_afe_adjust_ref_count(%struct.cx231xx* %0, i64 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %10 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @CX231XX_VMUX_TELEVISION, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %16 = load i32, i32* @ADC_INPUT_CH3, align 4
  %17 = call i32 @afe_read_byte(%struct.cx231xx* %15, i32 %16, i32* %5)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %19 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH3, align 4
  %20 = call i32 @afe_read_byte(%struct.cx231xx* %18, i32 %19, i32* %6)
  store i32 %20, i32* %7, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %23 = load i32, i32* @ADC_INPUT_CH1, align 4
  %24 = call i32 @afe_read_byte(%struct.cx231xx* %22, i32 %23, i32* %5)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %26 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH1, align 4
  %27 = call i32 @afe_read_byte(%struct.cx231xx* %25, i32 %26, i32* %6)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %14
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 3
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 6
  %33 = shl i32 %32, 1
  %34 = or i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %48 [
    i32 129, label %36
    i32 130, label %39
    i32 131, label %42
    i32 128, label %45
  ]

36:                                               ; preds = %28
  %37 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 0
  store i32 572, i32* %38, align 8
  br label %49

39:                                               ; preds = %28
  %40 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %41 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %40, i32 0, i32 0
  store i32 588, i32* %41, align 8
  br label %49

42:                                               ; preds = %28
  %43 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 0
  store i32 600, i32* %44, align 8
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 0
  store i32 608, i32* %47, align 8
  br label %49

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %45, %42, %39, %36
  %50 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %51 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cx231xx_afe_init_super_block(%struct.cx231xx* %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @afe_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @cx231xx_afe_init_super_block(%struct.cx231xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
