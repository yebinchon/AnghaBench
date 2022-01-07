; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_cx8801_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_cx8801_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_audio_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@MAX_IRQ_LOOP = common dso_local global i32 0, align 4
@MO_PCI_INTSTAT = common dso_local global i32 0, align 4
@PCI_INT_AUDINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cx8801_irq loop %d/%d, status %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IRQ loop detected, disabling interrupts\0A\00", align 1
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cx8801_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8801_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx88_audio_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cx88_audio_dev*
  store %struct.cx88_audio_dev* %11, %struct.cx88_audio_dev** %5, align 8
  %12 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %13 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %12, i32 0, i32 0
  %14 = load %struct.cx88_core*, %struct.cx88_core** %13, align 8
  store %struct.cx88_core* %14, %struct.cx88_core** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %58, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MAX_IRQ_LOOP, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %21 = call i32 @cx_read(i32 %20)
  %22 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCI_INT_AUDINT, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %71

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_IRQ_LOOP, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  store i32 1, i32* %9, align 4
  %36 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cx_write(i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %41 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @cx88_core_irq(%struct.cx88_core* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %31
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PCI_INT_AUDINT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %56 = call i32 @cx8801_aud_irq(%struct.cx88_audio_dev* %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MAX_IRQ_LOOP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @MO_PCI_INTMSK, align 4
  %68 = load i32, i32* @PCI_INT_AUDINT, align 4
  %69 = call i32 @cx_clear(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @IRQ_RETVAL(i32 %72)
  ret i32 %73
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx88_core_irq(%struct.cx88_core*, i32) #1

declare dso_local i32 @cx8801_aud_irq(%struct.cx88_audio_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
