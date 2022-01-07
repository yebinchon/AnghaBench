; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_init_PXC200.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_init_PXC200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }

@init_PXC200.vals = internal global [13 x i32] [i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0], align 16
@bttv_gpio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"pxc200\00", align 1
@BT848_ADC_RESERVED = common dso_local global i32 0, align 4
@BT848_ADC_AGC_EN = common dso_local global i32 0, align 4
@BT848_ADC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Setting DAC reference voltage level ...\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Initialising 12C508 PIC chip ...\0A\00", align 1
@BT848_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_GPCLKMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"I2C Write(%2.2x) = %i\0AI2C Read () = %2.2x\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PXC200 Initialised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @init_PXC200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_PXC200(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %6 = call i32 @gpio_inout(i32 16777215, i32 8192)
  %7 = call i32 @gpio_write(i32 0)
  %8 = call i32 @udelay(i32 3)
  %9 = call i32 @gpio_write(i32 8192)
  %10 = call i32 @gpio_bits(i32 16777215, i32 0)
  %11 = load i64, i64* @bttv_gpio, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.bttv*, %struct.bttv** %2, align 8
  %15 = call i32 @bttv_gpio_tracking(%struct.bttv* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @BT848_ADC_RESERVED, align 4
  %18 = load i32, i32* @BT848_ADC_AGC_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BT848_ADC, align 4
  %21 = call i32 @btwrite(i32 %19, i32 %20)
  %22 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.bttv*, %struct.bttv** %2, align 8
  %24 = call i32 @bttv_I2CWrite(%struct.bttv* %23, i32 94, i32 0, i32 128, i32 1)
  %25 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @BT848_GPIO_DMA_CTL, align 4
  %27 = call i32 @btread(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @BT848_GPIO_DMA_CTL_GPCLKMODE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @BT848_GPIO_DMA_CTL, align 4
  %33 = call i32 @btwrite(i32 %31, i32 %32)
  %34 = call i32 @gpio_inout(i32 16777215, i32 4)
  %35 = call i32 @gpio_write(i32 0)
  %36 = call i32 @udelay(i32 10)
  %37 = call i32 @gpio_write(i32 4)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %61, %16
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([13 x i32], [13 x i32]* @init_PXC200.vals, i64 0, i64 0))
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.bttv*, %struct.bttv** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [13 x i32], [13 x i32]* @init_PXC200.vals, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bttv_I2CWrite(%struct.bttv* %43, i32 30, i32 0, i32 %47, i32 1)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [13 x i32], [13 x i32]* @init_PXC200.vals, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.bttv*, %struct.bttv** %2, align 8
  %58 = call i32 @bttv_I2CRead(%struct.bttv* %57, i32 31, i32* null)
  %59 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %38

64:                                               ; preds = %38
  %65 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @gpio_write(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_bits(i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i8*) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @bttv_I2CWrite(%struct.bttv*, i32, i32, i32, i32) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @bttv_I2CRead(%struct.bttv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
