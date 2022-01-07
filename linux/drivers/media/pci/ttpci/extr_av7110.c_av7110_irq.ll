; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_av7110_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_av7110_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.av7110* }
%struct.av7110 = type { i32, i32, i32, i32 }

@MASK_19 = common dso_local global i32 0, align 4
@MASK_03 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i32*)* @av7110_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av7110_irq(%struct.saa7146_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.av7110*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %6, i32 0, i32 0
  %8 = load %struct.av7110*, %struct.av7110** %7, align 8
  store %struct.av7110* %8, %struct.av7110** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MASK_19, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.av7110*, %struct.av7110** %5, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MASK_19, align 4
  %19 = call i32 @SAA7146_IER_DISABLE(i32 %17, i32 %18)
  %20 = load %struct.av7110*, %struct.av7110** %5, align 8
  %21 = getelementptr inbounds %struct.av7110, %struct.av7110* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MASK_19, align 4
  %24 = call i32 @SAA7146_ISR_CLEAR(i32 %22, i32 %23)
  %25 = load %struct.av7110*, %struct.av7110** %5, align 8
  %26 = getelementptr inbounds %struct.av7110, %struct.av7110* %25, i32 0, i32 2
  %27 = call i32 @tasklet_schedule(i32* %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MASK_03, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.av7110*, %struct.av7110** %5, align 8
  %36 = getelementptr inbounds %struct.av7110, %struct.av7110* %35, i32 0, i32 1
  %37 = call i32 @tasklet_schedule(i32* %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MASK_10, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.av7110*, %struct.av7110** %5, align 8
  %46 = getelementptr inbounds %struct.av7110, %struct.av7110* %45, i32 0, i32 0
  %47 = call i32 @tasklet_schedule(i32* %46)
  br label %48

48:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @SAA7146_IER_DISABLE(i32, i32) #1

declare dso_local i32 @SAA7146_ISR_CLEAR(i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
