; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_device = type { i32, i32 }

@GPMC_IRQSTATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@GPMC_NR_NAND_IRQS = common dso_local global i32 0, align 4
@gpmc_irq_domain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"spurious irq detected hwirq %d, virq %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpmc_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpmc_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.gpmc_device*
  store %struct.gpmc_device* %12, %struct.gpmc_device** %10, align 8
  %13 = load i32, i32* @GPMC_IRQSTATUS, align 4
  %14 = call i32 @gpmc_read_reg(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.gpmc_device*, %struct.gpmc_device** %10, align 8
  %24 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GPMC_NR_NAND_IRQS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @GPMC_NR_NAND_IRQS, align 4
  %33 = sub nsw i32 8, %32
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load i32, i32* @gpmc_irq_domain, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @irq_find_mapping(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.gpmc_device*, %struct.gpmc_device** %10, align 8
  %50 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @generic_handle_irq(i32 %56)
  br label %58

58:                                               ; preds = %55, %36
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %21

62:                                               ; preds = %21
  %63 = load i32, i32* @GPMC_IRQSTATUS, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @gpmc_write_reg(i32 %63, i32 %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @gpmc_read_reg(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @gpmc_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
