; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx8800_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx8800_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@MO_PCI_INTSTAT = common dso_local global i32 0, align 4
@PCI_INT_VIDINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"irq loop -- clearing mask\0A\00", align 1
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cx8800_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8800_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx8800_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cx8800_dev*
  store %struct.cx8800_dev* %11, %struct.cx8800_dev** %5, align 8
  %12 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %13 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %12, i32 0, i32 0
  %14 = load %struct.cx88_core*, %struct.cx88_core** %13, align 8
  store %struct.cx88_core* %14, %struct.cx88_core** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %53, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  %19 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %20 = call i32 @cx_read(i32 %19)
  %21 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %22 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCI_INT_VIDINT, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %20, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %64

30:                                               ; preds = %18
  %31 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cx_write(i32 %31, i32 %32)
  store i32 1, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cx88_core_irq(%struct.cx88_core* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PCI_INT_VIDINT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %51 = call i32 @cx8800_vid_irq(%struct.cx8800_dev* %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @MO_PCI_INTMSK, align 4
  %62 = call i32 @cx_write(i32 %61, i32 0)
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @IRQ_RETVAL(i32 %65)
  ret i32 %66
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx88_core_irq(%struct.cx88_core*, i32) #1

declare dso_local i32 @cx8800_vid_irq(%struct.cx8800_dev*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
