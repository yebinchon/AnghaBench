; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_interrupts_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_interrupts_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.irq_desc = type { %struct.irqaction*, i32 }
%struct.irqaction = type { i32, %struct.irqaction* }

@.str = private unnamed_addr constant [33 x i8] c"name: number:  number of: wake:\0A\00", align 1
@num_interrupt_lines = common dso_local global i32 0, align 4
@irq_first = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%3i:  %6i %4i\00", align 1
@num_interrupts = common dso_local global i32* null, align 8
@num_wake_interrupts = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"-%-8s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ab8500_interrupts_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_interrupts_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca %struct.irqaction*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 @seq_puts(%struct.seq_file* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %78, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @num_interrupt_lines, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @irq_first, align 8
  %18 = add nsw i64 %16, %17
  %19 = call %struct.irq_desc* @irq_to_desc(i64 %18)
  store %struct.irq_desc* %19, %struct.irq_desc** %6, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** @num_interrupts, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @num_wake_interrupts, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %26, i32 %31)
  %33 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %34 = icmp ne %struct.irq_desc* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %14
  %36 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %37 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %43 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %35, %14
  %47 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %48 = icmp ne %struct.irq_desc* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %51 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %50, i32 0, i32 0
  %52 = load %struct.irqaction*, %struct.irqaction** %51, align 8
  %53 = icmp ne %struct.irqaction* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %56 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %55, i32 0, i32 0
  %57 = load %struct.irqaction*, %struct.irqaction** %56, align 8
  store %struct.irqaction* %57, %struct.irqaction** %7, align 8
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %60 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %68, %54
  %64 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %65 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %64, i32 0, i32 1
  %66 = load %struct.irqaction*, %struct.irqaction** %65, align 8
  store %struct.irqaction* %66, %struct.irqaction** %7, align 8
  %67 = icmp ne %struct.irqaction* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %71 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %63

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %49, %46
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 @seq_putc(%struct.seq_file* %76, i8 signext 10)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %10

81:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
