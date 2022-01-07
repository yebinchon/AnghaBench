; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998-irq.c_max8998_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998-irq.c_max8998_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.max8998_dev = type { i32*, i32, i32, i32, i32 }

@MAX8998_NUM_IRQ_REGS = common dso_local global i32 0, align 4
@MAX8998_REG_IRQ1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to read interrupt register: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@MAX8998_IRQ_NR = common dso_local global i32 0, align 4
@max8998_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max8998_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.max8998_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.max8998_dev*
  store %struct.max8998_dev* %13, %struct.max8998_dev** %6, align 8
  %14 = load i32, i32* @MAX8998_NUM_IRQ_REGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.max8998_dev*, %struct.max8998_dev** %6, align 8
  %19 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAX8998_REG_IRQ1, align 4
  %22 = load i32, i32* @MAX8998_NUM_IRQ_REGS, align 4
  %23 = call i32 @max8998_bulk_read(i32 %20, i32 %21, i32 %22, i32* %17)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.max8998_dev*, %struct.max8998_dev** %6, align 8
  %28 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %106

33:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @MAX8998_NUM_IRQ_REGS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.max8998_dev*, %struct.max8998_dev** %6, align 8
  %40 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %17, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %101, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @MAX8998_IRQ_NR, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max8998_irqs, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %17, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max8998_irqs, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %70, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %60
  %80 = load %struct.max8998_dev*, %struct.max8998_dev** %6, align 8
  %81 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @irq_find_mapping(i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load %struct.max8998_dev*, %struct.max8998_dev** %6, align 8
  %93 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @disable_irq_nosync(i32 %94)
  %96 = load i32, i32* @IRQ_NONE, align 4
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %106

97:                                               ; preds = %79
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @handle_nested_irq(i32 %98)
  br label %100

100:                                              ; preds = %97, %60
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %56

104:                                              ; preds = %56
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %104, %91, %26
  %107 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @max8998_bulk_read(i32, i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @irq_find_mapping(i32, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @disable_irq_nosync(i32) #2

declare dso_local i32 @handle_nested_irq(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
