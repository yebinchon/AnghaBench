; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx8800_vid_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx8800_vid_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { i32, i32, i32, %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@MO_VID_INTSTAT = common dso_local global i32 0, align 4
@MO_VID_INTMSK = common dso_local global i32 0, align 4
@irq_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"irq vid\00", align 1
@cx88_vid_irqs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"video risc op code error\0A\00", align 1
@MO_VID_DMACNTRL = common dso_local global i32 0, align 4
@VID_CAPTURE_CONTROL = common dso_local global i32 0, align 4
@cx88_sram_channels = common dso_local global i32* null, align 8
@SRAM_CH21 = common dso_local global i64 0, align 8
@MO_VIDY_GPCNT = common dso_local global i32 0, align 4
@MO_VBI_GPCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx8800_dev*)* @cx8800_vid_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx8800_vid_irq(%struct.cx8800_dev* %0) #0 {
  %2 = alloca %struct.cx8800_dev*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx8800_dev* %0, %struct.cx8800_dev** %2, align 8
  %7 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %7, i32 0, i32 3
  %9 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  store %struct.cx88_core* %9, %struct.cx88_core** %3, align 8
  %10 = load i32, i32* @MO_VID_INTSTAT, align 4
  %11 = call i32 @cx_read(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MO_VID_INTMSK, align 4
  %13 = call i32 @cx_read(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %89

19:                                               ; preds = %1
  %20 = load i32, i32* @MO_VID_INTSTAT, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @cx_write(i32 %20, i32 %21)
  %23 = load i64, i64* @irq_debug, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = and i32 %28, -256
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @cx88_vid_irqs, align 4
  %33 = load i32, i32* @cx88_vid_irqs, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cx88_print_irqbits(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %25
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 65536
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @MO_VID_DMACNTRL, align 4
  %45 = call i32 @cx_clear(i32 %44, i32 17)
  %46 = load i32, i32* @VID_CAPTURE_CONTROL, align 4
  %47 = call i32 @cx_clear(i32 %46, i32 6)
  %48 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %49 = load i32*, i32** @cx88_sram_channels, align 8
  %50 = load i64, i64* @SRAM_CH21, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @cx88_sram_channel_dump(%struct.cx88_core* %48, i32* %51)
  br label %53

53:                                               ; preds = %42, %38
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %59 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %58, i32 0, i32 0
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load i32, i32* @MO_VIDY_GPCNT, align 4
  %62 = call i32 @cx_read(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %64 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %65 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @cx88_wakeup(%struct.cx88_core* %63, i32* %65, i32 %66)
  %68 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %69 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  br label %71

71:                                               ; preds = %57, %53
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %77 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %76, i32 0, i32 0
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load i32, i32* @MO_VBI_GPCNT, align 4
  %80 = call i32 @cx_read(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %82 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %83 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @cx88_wakeup(%struct.cx88_core* %81, i32* %83, i32 %84)
  %86 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %87 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  br label %89

89:                                               ; preds = %18, %75, %71
  ret void
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx88_print_irqbits(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx88_sram_channel_dump(%struct.cx88_core*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cx88_wakeup(%struct.cx88_core*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
