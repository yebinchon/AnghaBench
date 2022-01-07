; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_mpeg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_mpeg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { i32, i32, %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MO_TS_INTSTAT = common dso_local global i32 0, align 4
@MO_TS_INTMSK = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"irq mpeg \00", align 1
@cx88_mpeg_irqs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"mpeg risc op code error\0A\00", align 1
@MO_TS_DMACNTRL = common dso_local global i32 0, align 4
@cx88_sram_channels = common dso_local global i32* null, align 8
@SRAM_CH28 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"wake up\0A\00", align 1
@MO_TS_GPCNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"general errors: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx8802_dev*)* @cx8802_mpeg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx8802_mpeg_irq(%struct.cx8802_dev* %0) #0 {
  %2 = alloca %struct.cx8802_dev*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %2, align 8
  %7 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %7, i32 0, i32 2
  %9 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  store %struct.cx88_core* %9, %struct.cx88_core** %3, align 8
  %10 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @MO_TS_INTSTAT, align 4
  %12 = call i32 @cx_read(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @MO_TS_INTMSK, align 4
  %14 = call i32 @cx_read(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 0, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %91

20:                                               ; preds = %1
  %21 = load i32, i32* @MO_TS_INTSTAT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @cx_write(i32 %21, i32 %22)
  %24 = load i64, i64* @debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = and i32 %29, -256
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @cx88_mpeg_irqs, align 4
  %34 = load i32, i32* @cx88_mpeg_irqs, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @cx88_print_irqbits(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %26
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 65536
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @MO_TS_DMACNTRL, align 4
  %46 = call i32 @cx_clear(i32 %45, i32 17)
  %47 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %48 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %47, i32 0, i32 2
  %49 = load %struct.cx88_core*, %struct.cx88_core** %48, align 8
  %50 = load i32*, i32** @cx88_sram_channels, align 8
  %51 = load i64, i64* @SRAM_CH28, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @cx88_sram_channel_dump(%struct.cx88_core* %49, i32* %52)
  br label %54

54:                                               ; preds = %43, %39
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %61 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load i32, i32* @MO_TS_GPCNT, align 4
  %64 = call i32 @cx_read(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %66 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %65, i32 0, i32 2
  %67 = load %struct.cx88_core*, %struct.cx88_core** %66, align 8
  %68 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %69 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @cx88_wakeup(%struct.cx88_core* %67, i32* %69, i32 %70)
  %72 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %73 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %58, %54
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 2031872
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 2031872
  %82 = call i32 (i32, i8*, ...) @dprintk(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %84 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %87 = call i32 @cx8802_stop_dma(%struct.cx8802_dev* %86)
  %88 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %89 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %19, %79, %75
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

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

declare dso_local i32 @cx8802_stop_dma(%struct.cx8802_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
