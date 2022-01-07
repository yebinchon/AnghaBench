; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@MAX_IRQ_LOOP = common dso_local global i32 0, align 4
@MO_PCI_INTSTAT = common dso_local global i32 0, align 4
@PCI_INT_TSINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cx8802_irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"    loop: %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"    status: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"clearing mask\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"irq loop -- clearing mask\0A\00", align 1
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cx8802_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx8802_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cx8802_dev*
  store %struct.cx8802_dev* %11, %struct.cx8802_dev** %5, align 8
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %13 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %12, i32 0, i32 0
  %14 = load %struct.cx88_core*, %struct.cx88_core** %13, align 8
  store %struct.cx88_core* %14, %struct.cx88_core** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %60, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MAX_IRQ_LOOP, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %21 = call i32 @cx_read(i32 %20)
  %22 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCI_INT_TSINT, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %73

31:                                               ; preds = %19
  %32 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MAX_IRQ_LOOP, align 4
  %35 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  store i32 1, i32* %9, align 4
  %38 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @cx_write(i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %43 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @cx88_core_irq(%struct.cx88_core* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %31
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PCI_INT_TSINT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.cx8802_dev*, %struct.cx8802_dev** %5, align 8
  %58 = call i32 @cx8802_mpeg_irq(%struct.cx8802_dev* %57)
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %15

63:                                               ; preds = %15
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MAX_IRQ_LOOP, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @MO_PCI_INTMSK, align 4
  %71 = call i32 @cx_write(i32 %70, i32 0)
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %30
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @IRQ_RETVAL(i32 %74)
  ret i32 %75
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx88_core_irq(%struct.cx88_core*, i32) #1

declare dso_local i32 @cx8802_mpeg_irq(%struct.cx8802_dev*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
