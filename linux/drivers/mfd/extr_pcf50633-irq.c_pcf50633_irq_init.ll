; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-irq.c_pcf50633_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-irq.c_pcf50633_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32, i32*, i32 }

@PCF50633_REG_INT1M = common dso_local global i32 0, align 4
@PCF50633_REG_INT2M = common dso_local global i32 0, align 4
@PCF50633_REG_INT3M = common dso_local global i32 0, align 4
@PCF50633_REG_INT4M = common dso_local global i32 0, align 4
@PCF50633_REG_INT5M = common dso_local global i32 0, align 4
@pcf50633_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pcf50633\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to request IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"IRQ %u cannot be enabled as wake-up sourcein this hardware revision\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_irq_init(%struct.pcf50633* %0, i32 %1) #0 {
  %3 = alloca %struct.pcf50633*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %8 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %10 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 128, i32* %12, align 4
  %13 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %14 = load i32, i32* @PCF50633_REG_INT1M, align 4
  %15 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %16 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pcf50633_reg_write(%struct.pcf50633* %13, i32 %14, i32 %19)
  %21 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %22 = load i32, i32* @PCF50633_REG_INT2M, align 4
  %23 = call i32 @pcf50633_reg_write(%struct.pcf50633* %21, i32 %22, i32 0)
  %24 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %25 = load i32, i32* @PCF50633_REG_INT3M, align 4
  %26 = call i32 @pcf50633_reg_write(%struct.pcf50633* %24, i32 %25, i32 0)
  %27 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %28 = load i32, i32* @PCF50633_REG_INT4M, align 4
  %29 = call i32 @pcf50633_reg_write(%struct.pcf50633* %27, i32 %28, i32 0)
  %30 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %31 = load i32, i32* @PCF50633_REG_INT5M, align 4
  %32 = call i32 @pcf50633_reg_write(%struct.pcf50633* %30, i32 %31, i32 0)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @pcf50633_irq, align 4
  %35 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %36 = load i32, i32* @IRQF_ONESHOT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %39 = call i32 @request_threaded_irq(i32 %33, i32* null, i32 %34, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.pcf50633* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %44 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %2
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @enable_irq_wake(i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %54 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @pcf50633_reg_write(%struct.pcf50633*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.pcf50633*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
