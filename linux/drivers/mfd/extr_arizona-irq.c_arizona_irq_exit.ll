; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-irq.c_arizona_irq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-irq.c_arizona_irq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32, i32, i32, i64 }

@ARIZONA_IRQ_CTRLIF_ERR = common dso_local global i32 0, align 4
@ARIZONA_IRQ_BOOT_DONE = common dso_local global i32 0, align 4
@ARIZONA_MAIN_IRQ_INDEX = common dso_local global i32 0, align 4
@ARIZONA_AOD_IRQ_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_irq_exit(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  %3 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  %4 = load %struct.arizona*, %struct.arizona** %2, align 8
  %5 = getelementptr inbounds %struct.arizona, %struct.arizona* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.arizona*, %struct.arizona** %2, align 8
  %10 = load i32, i32* @ARIZONA_IRQ_CTRLIF_ERR, align 4
  %11 = load %struct.arizona*, %struct.arizona** %2, align 8
  %12 = call i32 @arizona_free_irq(%struct.arizona* %9, i32 %10, %struct.arizona* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.arizona*, %struct.arizona** %2, align 8
  %15 = load i32, i32* @ARIZONA_IRQ_BOOT_DONE, align 4
  %16 = load %struct.arizona*, %struct.arizona** %2, align 8
  %17 = call i32 @arizona_free_irq(%struct.arizona* %14, i32 %15, %struct.arizona* %16)
  %18 = load %struct.arizona*, %struct.arizona** %2, align 8
  %19 = getelementptr inbounds %struct.arizona, %struct.arizona* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ARIZONA_MAIN_IRQ_INDEX, align 4
  %22 = call i32 @irq_find_mapping(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.arizona*, %struct.arizona** %2, align 8
  %25 = getelementptr inbounds %struct.arizona, %struct.arizona* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_del_irq_chip(i32 %23, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @irq_dispose_mapping(i32 %28)
  %30 = load %struct.arizona*, %struct.arizona** %2, align 8
  %31 = getelementptr inbounds %struct.arizona, %struct.arizona* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ARIZONA_AOD_IRQ_INDEX, align 4
  %34 = call i32 @irq_find_mapping(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.arizona*, %struct.arizona** %2, align 8
  %37 = getelementptr inbounds %struct.arizona, %struct.arizona* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @regmap_del_irq_chip(i32 %35, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @irq_dispose_mapping(i32 %40)
  %42 = load %struct.arizona*, %struct.arizona** %2, align 8
  %43 = getelementptr inbounds %struct.arizona, %struct.arizona* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @irq_domain_remove(i32 %44)
  %46 = load %struct.arizona*, %struct.arizona** %2, align 8
  %47 = getelementptr inbounds %struct.arizona, %struct.arizona* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.arizona*, %struct.arizona** %2, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.arizona* %49)
  ret i32 0
}

declare dso_local i32 @arizona_free_irq(%struct.arizona*, i32, %struct.arizona*) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @free_irq(i32, %struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
