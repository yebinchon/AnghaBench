; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_saa7134_alsa_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_saa7134_alsa_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dmasound = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@SAA7134_IRQ_REPORT = common dso_local global i32 0, align 4
@SAA7134_IRQ_STATUS = common dso_local global i32 0, align 4
@SAA7134_IRQ_REPORT_DONE_RA3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"error! looping IRQ!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @saa7134_alsa_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_alsa_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.saa7134_dmasound*, align 8
  %6 = alloca %struct.saa7134_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.saa7134_dmasound*
  store %struct.saa7134_dmasound* %12, %struct.saa7134_dmasound** %5, align 8
  %13 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %5, align 8
  %14 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %13, i32 0, i32 0
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i32, i32* @SAA7134_IRQ_REPORT, align 4
  %21 = call i64 @saa_readl(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* @SAA7134_IRQ_STATUS, align 4
  %23 = call i64 @saa_readl(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SAA7134_IRQ_REPORT_DONE_RA3, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  %29 = load i32, i32* @SAA7134_IRQ_REPORT, align 4
  %30 = load i64, i64* @SAA7134_IRQ_REPORT_DONE_RA3, align 8
  %31 = call i32 @saa_writel(i32 %29, i64 %30)
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @saa7134_irq_alsa_done(%struct.saa7134_dev* %32, i64 %33)
  br label %36

35:                                               ; preds = %19
  br label %46

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @IRQ_RETVAL(i32 %47)
  ret i32 %48
}

declare dso_local i64 @saa_readl(i32) #1

declare dso_local i32 @saa_writel(i32, i64) #1

declare dso_local i32 @saa7134_irq_alsa_done(%struct.saa7134_dev*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
