; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pcmcia.c_mantis_event_cam_unplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pcmcia.c_mantis_event_cam_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_ca = type { i64, %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MODULE_INSERTED = common dso_local global i64 0, align 8
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Event: CAM Unplugged: Adapter(%d) Slot(0)\00", align 1
@MANTIS_CARD_RESET = common dso_local global i32 0, align 4
@MANTIS_GPIF_IRQCFG = common dso_local global i32 0, align 4
@MANTIS_MASK_PLUGIN = common dso_local global i32 0, align 4
@MANTIS_MASK_PLUGOUT = common dso_local global i32 0, align 4
@MODULE_XTRACTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mantis_event_cam_unplug(%struct.mantis_ca* %0) #0 {
  %2 = alloca %struct.mantis_ca*, align 8
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.mantis_ca* %0, %struct.mantis_ca** %2, align 8
  %5 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %6 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %5, i32 0, i32 1
  %7 = load %struct.mantis_pci*, %struct.mantis_pci** %6, align 8
  store %struct.mantis_pci* %7, %struct.mantis_pci** %3, align 8
  %8 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %9 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MODULE_INSERTED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @MANTIS_DEBUG, align 4
  %15 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %16 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dprintk(i32 %14, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @udelay(i32 50)
  %20 = load i32, i32* @MANTIS_CARD_RESET, align 4
  %21 = call i32 @mmwrite(i32 14286848, i32 %20)
  %22 = load i32, i32* @MANTIS_GPIF_IRQCFG, align 4
  %23 = call i32 @mmread(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @MANTIS_MASK_PLUGIN, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @MANTIS_MASK_PLUGOUT, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MANTIS_GPIF_IRQCFG, align 4
  %33 = call i32 @mmwrite(i32 %31, i32 %32)
  %34 = call i32 @udelay(i32 500)
  %35 = load i64, i64* @MODULE_XTRACTED, align 8
  %36 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %37 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %13, %1
  %39 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @mmread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
