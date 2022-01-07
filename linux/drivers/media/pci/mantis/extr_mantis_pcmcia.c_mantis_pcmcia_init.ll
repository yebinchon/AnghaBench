; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pcmcia.c_mantis_pcmcia_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_pcmcia.c_mantis_pcmcia_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_ca = type { i32, i32, %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MANTIS_INT_IRQ0 = common dso_local global i32 0, align 4
@MANTIS_GPIF_STATUS = common dso_local global i32 0, align 4
@MANTIS_GPIF_IRQCFG = common dso_local global i32 0, align 4
@MANTIS_GPIF_DETSTAT = common dso_local global i32 0, align 4
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CAM found on Adapter(%d) Slot(0)\00", align 1
@MANTIS_MASK_PLUGOUT = common dso_local global i32 0, align 4
@MODULE_INSERTED = common dso_local global i32 0, align 4
@DVB_CA_EN50221_CAMCHANGE_INSERTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Empty Slot on Adapter(%d) Slot(0)\00", align 1
@MANTIS_MASK_PLUGIN = common dso_local global i32 0, align 4
@MODULE_XTRACTED = common dso_local global i32 0, align 4
@DVB_CA_EN50221_CAMCHANGE_REMOVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_pcmcia_init(%struct.mantis_ca* %0) #0 {
  %2 = alloca %struct.mantis_ca*, align 8
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mantis_ca* %0, %struct.mantis_ca** %2, align 8
  %6 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %7 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %6, i32 0, i32 2
  %8 = load %struct.mantis_pci*, %struct.mantis_pci** %7, align 8
  store %struct.mantis_pci* %8, %struct.mantis_pci** %3, align 8
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %10 = load i32, i32* @MANTIS_INT_IRQ0, align 4
  %11 = call i32 @mantis_unmask_ints(%struct.mantis_pci* %9, i32 %10)
  %12 = load i32, i32* @MANTIS_GPIF_STATUS, align 4
  %13 = call i32 @mmread(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MANTIS_GPIF_IRQCFG, align 4
  %15 = call i32 @mmread(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MANTIS_GPIF_DETSTAT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load i32, i32* @MANTIS_DEBUG, align 4
  %22 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %23 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dprintk(i32 %21, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MANTIS_MASK_PLUGOUT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MANTIS_GPIF_IRQCFG, align 4
  %30 = call i32 @mmwrite(i32 %28, i32 %29)
  %31 = load i32, i32* @MODULE_INSERTED, align 4
  %32 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %33 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %35 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %34, i32 0, i32 0
  %36 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_INSERTED, align 4
  %37 = call i32 @dvb_ca_en50221_camchange_irq(i32* %35, i32 0, i32 %36)
  br label %56

38:                                               ; preds = %1
  %39 = load i32, i32* @MANTIS_DEBUG, align 4
  %40 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %41 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dprintk(i32 %39, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MANTIS_MASK_PLUGIN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MANTIS_GPIF_IRQCFG, align 4
  %48 = call i32 @mmwrite(i32 %46, i32 %47)
  %49 = load i32, i32* @MODULE_XTRACTED, align 4
  %50 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %51 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mantis_ca*, %struct.mantis_ca** %2, align 8
  %53 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %52, i32 0, i32 0
  %54 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_REMOVED, align 4
  %55 = call i32 @dvb_ca_en50221_camchange_irq(i32* %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %38, %20
  ret i32 0
}

declare dso_local i32 @mantis_unmask_ints(%struct.mantis_pci*, i32) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_camchange_irq(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
