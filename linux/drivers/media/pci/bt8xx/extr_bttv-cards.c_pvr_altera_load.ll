; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_pvr_altera_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_pvr_altera_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }

@BTTV_ALT_DATA = common dso_local global i32 0, align 4
@BTTV_ALT_DCLK = common dso_local global i32 0, align 4
@BTTV_ALT_NCONFIG = common dso_local global i32 0, align 4
@PVR_GPIO_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, i32*, i64)* @pvr_altera_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr_altera_load(%struct.bttv* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @BTTV_ALT_DATA, align 4
  %11 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @BTTV_ALT_NCONFIG, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @gpio_inout(i32 16777215, i32 %14)
  %16 = call i32 @gpio_write(i32 0)
  %17 = load i32, i32* @PVR_GPIO_DELAY, align 4
  %18 = call i32 @udelay(i32 %17)
  %19 = load i32, i32* @BTTV_ALT_NCONFIG, align 4
  %20 = call i32 @gpio_write(i32 %19)
  %21 = load i32, i32* @PVR_GPIO_DELAY, align 4
  %22 = call i32 @udelay(i32 %21)
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %58, %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %54, %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %37 = call i32 @gpio_bits(i32 %36, i32 0)
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @BTTV_ALT_DATA, align 4
  %43 = load i32, i32* @BTTV_ALT_DATA, align 4
  %44 = call i32 @gpio_bits(i32 %42, i32 %43)
  br label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @BTTV_ALT_DATA, align 4
  %47 = call i32 @gpio_bits(i32 %46, i32 0)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %50 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %51 = call i32 @gpio_bits(i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %32

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %23

61:                                               ; preds = %23
  %62 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %63 = call i32 @gpio_bits(i32 %62, i32 0)
  %64 = load i32, i32* @PVR_GPIO_DELAY, align 4
  %65 = call i32 @udelay(i32 %64)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %75, %61
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 30
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %71 = call i32 @gpio_bits(i32 %70, i32 0)
  %72 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %73 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %74 = call i32 @gpio_bits(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %66

78:                                               ; preds = %66
  %79 = load i32, i32* @BTTV_ALT_DCLK, align 4
  %80 = call i32 @gpio_bits(i32 %79, i32 0)
  ret i32 0
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @gpio_write(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
