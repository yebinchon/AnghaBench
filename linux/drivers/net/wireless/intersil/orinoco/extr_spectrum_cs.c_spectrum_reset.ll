; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_spectrum_cs.c_spectrum_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_spectrum_cs.c_spectrum_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CISREG_COR = common dso_local global i32 0, align 4
@COR_SOFT_RESET = common dso_local global i32 0, align 4
@CISREG_CCSR = common dso_local global i32 0, align 4
@HCR_IDLE = common dso_local global i32 0, align 4
@HCR_RUN = common dso_local global i32 0, align 4
@HCR_MEM16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i32)* @spectrum_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spectrum_reset(%struct.pcmcia_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %10 = call i32 @pcmcia_dev_present(%struct.pcmcia_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %17 = load i32, i32* @CISREG_COR, align 4
  %18 = call i32 @pcmcia_read_config_byte(%struct.pcmcia_device* %16, i32 %17, i32* %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %74

22:                                               ; preds = %15
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %24 = load i32, i32* @CISREG_COR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @COR_SOFT_RESET, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @pcmcia_write_config_byte(%struct.pcmcia_device* %23, i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %74

32:                                               ; preds = %22
  %33 = call i32 @udelay(i32 1000)
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %35 = load i32, i32* @CISREG_CCSR, align 4
  %36 = call i32 @pcmcia_read_config_byte(%struct.pcmcia_device* %34, i32 %35, i32* %8)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %74

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @HCR_IDLE, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @HCR_RUN, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @HCR_MEM16, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %48, %51
  store i32 %52, i32* %8, align 4
  %53 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %54 = load i32, i32* @CISREG_CCSR, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pcmcia_write_config_byte(%struct.pcmcia_device* %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %74

60:                                               ; preds = %47
  %61 = call i32 @udelay(i32 1000)
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %63 = load i32, i32* @CISREG_COR, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @COR_SOFT_RESET, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = call i32 @pcmcia_write_config_byte(%struct.pcmcia_device* %62, i32 %63, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %74

72:                                               ; preds = %60
  %73 = call i32 @udelay(i32 1000)
  store i32 0, i32* %3, align 4
  br label %77

74:                                               ; preds = %71, %59, %39, %31, %21
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %72, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_read_config_byte(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_write_config_byte(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
