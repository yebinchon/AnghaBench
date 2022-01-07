; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_ocp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_ocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_2__, %struct.rtsx_cr_option }
%struct.TYPE_2__ = type { i32 }
%struct.rtsx_cr_option = type { i32, i64 }

@RTS5260_DVCC_CTRL = common dso_local global i32 0, align 4
@RTS5260_DVCC_OCP_THD_MASK = common dso_local global i32 0, align 4
@RTS5260_DV331812_CFG = common dso_local global i32 0, align 4
@RTS5260_DV331812_OCP_THD_MASK = common dso_local global i32 0, align 4
@RTS5260_DV331812_OCP_THD_270 = common dso_local global i32 0, align 4
@SD_OCP_GLITCH_MASK = common dso_local global i32 0, align 4
@REG_OCPGLITCH = common dso_local global i32 0, align 4
@RTS5260_DVCC_OCP_EN = common dso_local global i32 0, align 4
@RTS5260_DVCC_OCP_CL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5260_init_ocp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_init_ocp(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 1
  store %struct.rtsx_cr_option* %7, %struct.rtsx_cr_option** %3, align 8
  %8 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %14 = load i32, i32* @RTS5260_DVCC_CTRL, align 4
  %15 = load i32, i32* @RTS5260_DVCC_OCP_THD_MASK, align 4
  %16 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %17 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %13, i32 %14, i32 %15, i32 %18)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = load i32, i32* @RTS5260_DV331812_CFG, align 4
  %22 = load i32, i32* @RTS5260_DV331812_OCP_THD_MASK, align 4
  %23 = load i32, i32* @RTS5260_DV331812_OCP_THD_270, align 4
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @SD_OCP_GLITCH_MASK, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %27 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = load i32, i32* @REG_OCPGLITCH, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %36 = load i32, i32* @RTS5260_DVCC_CTRL, align 4
  %37 = load i32, i32* @RTS5260_DVCC_OCP_EN, align 4
  %38 = load i32, i32* @RTS5260_DVCC_OCP_CL_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RTS5260_DVCC_OCP_EN, align 4
  %41 = load i32, i32* @RTS5260_DVCC_OCP_CL_EN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %35, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %45 = call i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr* %44)
  br label %53

46:                                               ; preds = %1
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %48 = load i32, i32* @RTS5260_DVCC_CTRL, align 4
  %49 = load i32, i32* @RTS5260_DVCC_OCP_EN, align 4
  %50 = load i32, i32* @RTS5260_DVCC_OCP_CL_EN, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %47, i32 %48, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %46, %12
  ret void
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
