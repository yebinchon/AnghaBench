; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [33 x i8] c"PID: 0x%04x, IC version: 0x%02x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"pcr->aspm_en = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"pcr->sd30_drive_sel_1v8 = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"pcr->sd30_drive_sel_3v3 = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"pcr->card_drive_sel = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"pcr->flags = 0x%x\0A\00", align 1
@PDEV_STAT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rtsx_pci_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_pci_init_chip(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %5, i32 0, i32 11
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %8, i32 0, i32 10
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %12 = call i32 @PCI_PID(%struct.rtsx_pcr* %11)
  switch i32 %12, label %13 [
    i32 21001, label %14
    i32 21033, label %17
    i32 21129, label %20
    i32 21031, label %23
    i32 21034, label %26
    i32 21065, label %29
    i32 21066, label %32
    i32 21082, label %35
    i32 21127, label %38
    i32 21126, label %41
    i32 21088, label %44
  ]

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %16 = call i32 @rts5209_init_params(%struct.rtsx_pcr* %15)
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %19 = call i32 @rts5229_init_params(%struct.rtsx_pcr* %18)
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %22 = call i32 @rtl8411_init_params(%struct.rtsx_pcr* %21)
  br label %47

23:                                               ; preds = %1
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %25 = call i32 @rts5227_init_params(%struct.rtsx_pcr* %24)
  br label %47

26:                                               ; preds = %1
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %28 = call i32 @rts522a_init_params(%struct.rtsx_pcr* %27)
  br label %47

29:                                               ; preds = %1
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %31 = call i32 @rts5249_init_params(%struct.rtsx_pcr* %30)
  br label %47

32:                                               ; preds = %1
  %33 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %34 = call i32 @rts524a_init_params(%struct.rtsx_pcr* %33)
  br label %47

35:                                               ; preds = %1
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %37 = call i32 @rts525a_init_params(%struct.rtsx_pcr* %36)
  br label %47

38:                                               ; preds = %1
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %40 = call i32 @rtl8411b_init_params(%struct.rtsx_pcr* %39)
  br label %47

41:                                               ; preds = %1
  %42 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %43 = call i32 @rtl8402_init_params(%struct.rtsx_pcr* %42)
  br label %47

44:                                               ; preds = %1
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %46 = call i32 @rts5260_init_params(%struct.rtsx_pcr* %45)
  br label %47

47:                                               ; preds = %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14
  %48 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %49 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %50 = call i32 @PCI_PID(%struct.rtsx_pcr* %49)
  %51 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %52 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.rtsx_pcr*, i8*, i32, ...) @pcr_dbg(%struct.rtsx_pcr* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %56 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @kcalloc(i32 %57, i32 4, i32 %58)
  %60 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %61 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %63 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %47
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %126

69:                                               ; preds = %47
  %70 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %71 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %70, i32 0, i32 7
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = bitcast {}** %73 to i32 (%struct.rtsx_pcr*)**
  %75 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %74, align 8
  %76 = icmp ne i32 (%struct.rtsx_pcr*)* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %79 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %78, i32 0, i32 7
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = bitcast {}** %81 to i32 (%struct.rtsx_pcr*)**
  %83 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %82, align 8
  %84 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %85 = call i32 %83(%struct.rtsx_pcr* %84)
  br label %86

86:                                               ; preds = %77, %69
  %87 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %88 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %89 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.rtsx_pcr*, i8*, i32, ...) @pcr_dbg(%struct.rtsx_pcr* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %93 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %94 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.rtsx_pcr*, i8*, i32, ...) @pcr_dbg(%struct.rtsx_pcr* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %98 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %99 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.rtsx_pcr*, i8*, i32, ...) @pcr_dbg(%struct.rtsx_pcr* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %103 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %104 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.rtsx_pcr*, i8*, i32, ...) @pcr_dbg(%struct.rtsx_pcr* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %108 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %109 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.rtsx_pcr*, i8*, i32, ...) @pcr_dbg(%struct.rtsx_pcr* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @PDEV_STAT_IDLE, align 4
  %113 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %114 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %116 = call i32 @rtsx_pci_init_hw(%struct.rtsx_pcr* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %86
  %120 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %121 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @kfree(i32 %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %119, %66
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @PCI_PID(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5209_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5229_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtl8411_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5227_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts522a_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5249_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts524a_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts525a_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtl8411b_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtl8402_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5260_init_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32, ...) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_init_hw(%struct.rtsx_pcr*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
