; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_solo_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_solo_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@SOLO_IRQ_STAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SOLO_IRQ_PCI_ERR = common dso_local global i32 0, align 4
@SOLO_NR_P2M = common dso_local global i32 0, align 4
@SOLO_IRQ_IIC = common dso_local global i32 0, align 4
@SOLO_IRQ_VIDEO_IN = common dso_local global i32 0, align 4
@SOLO_IRQ_ENCODER = common dso_local global i32 0, align 4
@SOLO_IRQ_G723 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @solo_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.solo_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.solo_dev*
  store %struct.solo_dev* %10, %struct.solo_dev** %6, align 8
  %11 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %12 = load i32, i32* @SOLO_IRQ_STAT, align 4
  %13 = call i32 @solo_reg_read(%struct.solo_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %20 = load i32, i32* @SOLO_IRQ_STAT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @solo_reg_write(%struct.solo_dev* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SOLO_IRQ_PCI_ERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %29 = call i32 @solo_p2m_error_isr(%struct.solo_dev* %28)
  br label %30

30:                                               ; preds = %27, %18
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SOLO_NR_P2M, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SOLO_IRQ_P2M(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @solo_p2m_isr(%struct.solo_dev* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SOLO_IRQ_IIC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %56 = call i32 @solo_i2c_isr(%struct.solo_dev* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SOLO_IRQ_VIDEO_IN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %64 = call i32 @solo_video_in_isr(%struct.solo_dev* %63)
  %65 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %66 = call i32 @solo_timer_sync(%struct.solo_dev* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @SOLO_IRQ_ENCODER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %74 = call i32 @solo_enc_v4l2_isr(%struct.solo_dev* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @SOLO_IRQ_G723, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %82 = call i32 @solo_g723_isr(%struct.solo_dev* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @solo_p2m_error_isr(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_IRQ_P2M(i32) #1

declare dso_local i32 @solo_p2m_isr(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_i2c_isr(%struct.solo_dev*) #1

declare dso_local i32 @solo_video_in_isr(%struct.solo_dev*) #1

declare dso_local i32 @solo_timer_sync(%struct.solo_dev*) #1

declare dso_local i32 @solo_enc_v4l2_isr(%struct.solo_dev*) #1

declare dso_local i32 @solo_g723_isr(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
