; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_cx25821_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_cx25821_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_audio_dev = type { %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@AUD_A_INT_STAT = common dso_local global i32 0, align 4
@AUD_A_INT_MSK = common dso_local global i32 0, align 4
@PCI_INT_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cx25821_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx25821_audio_dev*, align 8
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.cx25821_audio_dev*
  store %struct.cx25821_audio_dev* %14, %struct.cx25821_audio_dev** %5, align 8
  %15 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %5, align 8
  %16 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %15, i32 0, i32 0
  %17 = load %struct.cx25821_dev*, %struct.cx25821_dev** %16, align 8
  store %struct.cx25821_dev* %17, %struct.cx25821_dev** %6, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @AUD_A_INT_STAT, align 4
  %19 = call i64 @cx_read(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @AUD_A_INT_MSK, align 4
  %21 = call i64 @cx_read(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* @PCI_INT_STAT, align 4
  %23 = call i64 @cx_read(i32 %22)
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %58, %2
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load i32, i32* @PCI_INT_STAT, align 4
  %29 = call i64 @cx_read(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 0, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i32, i32* @PCI_INT_STAT, align 4
  %34 = call i64 @cx_read(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* @AUD_A_INT_STAT, align 4
  %36 = call i64 @cx_read(i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* @AUD_A_INT_MSK, align 4
  %38 = call i64 @cx_read(i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  %42 = load i32, i32* @PCI_INT_STAT, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @cx_write(i32 %42, i64 %43)
  %45 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @cx25821_aud_irq(%struct.cx25821_audio_dev* %45, i64 %46, i64 %47)
  br label %61

49:                                               ; preds = %32
  br label %71

50:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  %51 = load i32, i32* @PCI_INT_STAT, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @cx_write(i32 %51, i64 %52)
  %54 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @cx25821_aud_irq(%struct.cx25821_audio_dev* %54, i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %24

61:                                               ; preds = %41, %24
  %62 = load i32, i32* @PCI_INT_STAT, align 4
  %63 = call i64 @cx_read(i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @PCI_INT_STAT, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @cx_write(i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @IRQ_RETVAL(i32 %72)
  ret i32 %73
}

declare dso_local i64 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i64) #1

declare dso_local i32 @cx25821_aud_irq(%struct.cx25821_audio_dev*, i64, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
