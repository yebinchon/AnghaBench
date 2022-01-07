; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-irq.c_wm8994_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-irq.c_wm8994_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8994 = type { i64, i32, i32, i64, i32, i32, %struct.wm8994_pdata }
%struct.wm8994_pdata = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"No interrupt specified, no interrupts\0A\00", align 1
@IRQF_TRIGGER_HIGH = common dso_local global i64 0, align 8
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"IRQ %d is not GPIO %d (%d)\0A\00", align 1
@GPIOF_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"WM8994 IRQ\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to get IRQ GPIO: %d\0A\00", align 1
@wm8994_edge_irq_ops = common dso_local global i32 0, align 4
@wm8994_irq_chip = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to get IRQ: %d\0A\00", align 1
@wm8994_edge_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"WM8994 edge\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register IRQ chip: %d\0A\00", align 1
@WM8994_INTERRUPT_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8994_irq_init(%struct.wm8994* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm8994*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.wm8994_pdata*, align 8
  store %struct.wm8994* %0, %struct.wm8994** %3, align 8
  %7 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %8 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %7, i32 0, i32 6
  store %struct.wm8994_pdata* %8, %struct.wm8994_pdata** %6, align 8
  %9 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %10 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %15 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, ...) @dev_warn(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %19 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  store i32 0, i32* %2, align 4
  br label %151

20:                                               ; preds = %1
  %21 = load i64, i64* @IRQF_TRIGGER_HIGH, align 8
  %22 = load i64, i64* @IRQF_ONESHOT, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %25 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %30 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %35 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %36 = or i64 %34, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %123

39:                                               ; preds = %32
  %40 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %41 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @gpio_to_irq(i32 %42)
  %44 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %45 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %39
  %49 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %50 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %53 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %56 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %59 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @gpio_to_irq(i32 %60)
  %62 = call i32 (i32, i8*, ...) @dev_warn(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %57, i64 %61)
  %63 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %64 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @gpio_to_irq(i32 %65)
  %67 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %68 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %48, %39
  %70 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %71 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %6, align 8
  %74 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GPIOF_IN, align 4
  %77 = call i32 @devm_gpio_request_one(i32 %72, i32 %75, i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %82 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %151

87:                                               ; preds = %69
  %88 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %89 = call i32 @irq_domain_add_linear(i32* null, i32 1, i32* @wm8994_edge_irq_ops, %struct.wm8994* %88)
  %90 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %91 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %93 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %96 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @irq_create_mapping(i32 %97, i32 0)
  %99 = load i64, i64* @IRQF_ONESHOT, align 8
  %100 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %101 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %104 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %103, i32 0, i32 2
  %105 = call i32 @regmap_add_irq_chip(i32 %94, i64 %98, i64 %99, i64 %102, i32* @wm8994_irq_chip, i32* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %87
  %109 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %110 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %151

115:                                              ; preds = %87
  %116 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %117 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @wm8994_edge_irq, align 4
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %122 = call i32 @request_threaded_irq(i64 %118, i32* null, i32 %119, i64 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.wm8994* %121)
  store i32 %122, i32* %4, align 4
  br label %137

123:                                              ; preds = %32
  %124 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %125 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %128 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %132 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %135 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %134, i32 0, i32 2
  %136 = call i32 @regmap_add_irq_chip(i32 %126, i64 %129, i64 %130, i64 %133, i32* @wm8994_irq_chip, i32* %135)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %123, %115
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %142 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %151

147:                                              ; preds = %137
  %148 = load %struct.wm8994*, %struct.wm8994** %3, align 8
  %149 = load i32, i32* @WM8994_INTERRUPT_CONTROL, align 4
  %150 = call i32 @wm8994_reg_write(%struct.wm8994* %148, i32 %149, i32 0)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %147, %140, %108, %80, %13
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i64 @gpio_to_irq(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @irq_domain_add_linear(i32*, i32, i32*, %struct.wm8994*) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i64, i64, i64, i32*, i32*) #1

declare dso_local i64 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i64, i8*, %struct.wm8994*) #1

declare dso_local i32 @wm8994_reg_write(%struct.wm8994*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
