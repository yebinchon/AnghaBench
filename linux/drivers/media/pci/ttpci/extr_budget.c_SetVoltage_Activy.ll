; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_SetVoltage_Activy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget.c_SetVoltage_Activy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget*, i32)* @SetVoltage_Activy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetVoltage_Activy(%struct.budget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.budget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146_dev*, align 8
  store %struct.budget* %0, %struct.budget** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.budget*, %struct.budget** %4, align 8
  %8 = getelementptr inbounds %struct.budget, %struct.budget* %7, i32 0, i32 0
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  store %struct.saa7146_dev* %9, %struct.saa7146_dev** %6, align 8
  %10 = load %struct.budget*, %struct.budget** %4, align 8
  %11 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %31 [
    i32 130, label %13
    i32 129, label %20
    i32 128, label %27
  ]

13:                                               ; preds = %2
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %15 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %16 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %14, i32 1, i32 %15)
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %18 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %19 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %17, i32 2, i32 %18)
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %22 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %23 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %21, i32 1, i32 %22)
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %25 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %26 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %24, i32 2, i32 %25)
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %29 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %30 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %28, i32 1, i32 %29)
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %27, %20, %13
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
