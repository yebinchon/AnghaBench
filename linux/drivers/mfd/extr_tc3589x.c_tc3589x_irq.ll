; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc3589x = type { i32 }

@TC3589x_IRQST = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tc3589x_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc3589x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.tc3589x*
  store %struct.tc3589x* %11, %struct.tc3589x** %6, align 8
  br label %12

12:                                               ; preds = %45, %2
  %13 = load %struct.tc3589x*, %struct.tc3589x** %6, align 8
  %14 = load i32, i32* @TC3589x_IRQST, align 4
  %15 = call i32 @tc3589x_reg_read(%struct.tc3589x* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @__ffs(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tc3589x*, %struct.tc3589x** %6, align 8
  %28 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @irq_create_mapping(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @handle_nested_irq(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.tc3589x*, %struct.tc3589x** %6, align 8
  %41 = load i32, i32* @TC3589x_IRQST, align 4
  %42 = call i32 @tc3589x_reg_read(%struct.tc3589x* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %12

46:                                               ; preds = %39
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @tc3589x_reg_read(%struct.tc3589x*, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
