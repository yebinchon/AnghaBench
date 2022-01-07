; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_cir_wake_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_cir_wake_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@LOGICAL_DEV_CIR_WAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Dump CIR WAKE logical device registers:\0A\00", align 1
@NVT_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c" * CR CIR WAKE ACTIVE :   0x%x\0A\00", align 1
@CR_LOGICAL_DEV_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c" * CR CIR WAKE BASE ADDR: 0x%x\0A\00", align 1
@CR_CIR_BASE_ADDR_HI = common dso_local global i32 0, align 4
@CR_CIR_BASE_ADDR_LO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c" * CR CIR WAKE IRQ NUM:   0x%x\0A\00", align 1
@CR_CIR_IRQ_RSRC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Dump CIR WAKE registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" * IRCON:          0x%x\0A\00", align 1
@CIR_WAKE_IRCON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c" * IRSTS:          0x%x\0A\00", align 1
@CIR_WAKE_IRSTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c" * IREN:           0x%x\0A\00", align 1
@CIR_WAKE_IREN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c" * FIFO CMP DEEP:  0x%x\0A\00", align 1
@CIR_WAKE_FIFO_CMP_DEEP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c" * FIFO CMP TOL:   0x%x\0A\00", align 1
@CIR_WAKE_FIFO_CMP_TOL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c" * FIFO COUNT:     0x%x\0A\00", align 1
@CIR_WAKE_FIFO_COUNT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c" * SLCH:           0x%x\0A\00", align 1
@CIR_WAKE_SLCH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c" * SLCL:           0x%x\0A\00", align 1
@CIR_WAKE_SLCL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c" * FIFOCON:        0x%x\0A\00", align 1
@CIR_WAKE_FIFOCON = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c" * SRXFSTS:        0x%x\0A\00", align 1
@CIR_WAKE_SRXFSTS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c" * SAMPLE RX FIFO: 0x%x\0A\00", align 1
@CIR_WAKE_SAMPLE_RX_FIFO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c" * WR FIFO DATA:   0x%x\0A\00", align 1
@CIR_WAKE_WR_FIFO_DATA = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c" * RD FIFO ONLY:   0x%x\0A\00", align 1
@CIR_WAKE_RD_FIFO_ONLY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c" * RD FIFO ONLY IDX: 0x%x\0A\00", align 1
@CIR_WAKE_RD_FIFO_ONLY_IDX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c" * FIFO IGNORE:    0x%x\0A\00", align 1
@CIR_WAKE_FIFO_IGNORE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [25 x i8] c" * IRFSM:          0x%x\0A\00", align 1
@CIR_WAKE_IRFSM = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"%s: Dump CIR WAKE FIFO (len %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"* Contents =\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @cir_wake_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cir_wake_dump_regs(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %5 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %6 = call i32 @nvt_efm_enable(%struct.nvt_dev* %5)
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %8 = load i32, i32* @LOGICAL_DEV_CIR_WAKE, align 4
  %9 = call i32 @nvt_select_logical_dev(%struct.nvt_dev* %7, i32 %8)
  %10 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %13 = load i32, i32* @CR_LOGICAL_DEV_EN, align 4
  %14 = call i32 @nvt_cr_read(%struct.nvt_dev* %12, i32 %13)
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %17 = load i32, i32* @CR_CIR_BASE_ADDR_HI, align 4
  %18 = call i32 @nvt_cr_read(%struct.nvt_dev* %16, i32 %17)
  %19 = shl i32 %18, 8
  %20 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %21 = load i32, i32* @CR_CIR_BASE_ADDR_LO, align 4
  %22 = call i32 @nvt_cr_read(%struct.nvt_dev* %20, i32 %21)
  %23 = or i32 %19, %22
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %26 = load i32, i32* @CR_CIR_IRQ_RSRC, align 4
  %27 = call i32 @nvt_cr_read(%struct.nvt_dev* %25, i32 %26)
  %28 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %30 = call i32 @nvt_efm_disable(%struct.nvt_dev* %29)
  %31 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %32 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %34 = load i32, i32* @CIR_WAKE_IRCON, align 4
  %35 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %33, i32 %34)
  %36 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %38 = load i32, i32* @CIR_WAKE_IRSTS, align 4
  %39 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %37, i32 %38)
  %40 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  %41 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %42 = load i32, i32* @CIR_WAKE_IREN, align 4
  %43 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %41, i32 %42)
  %44 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %46 = load i32, i32* @CIR_WAKE_FIFO_CMP_DEEP, align 4
  %47 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %45, i32 %46)
  %48 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  %49 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %50 = load i32, i32* @CIR_WAKE_FIFO_CMP_TOL, align 4
  %51 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %49, i32 %50)
  %52 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  %53 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %54 = load i32, i32* @CIR_WAKE_FIFO_COUNT, align 4
  %55 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %53, i32 %54)
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %55)
  %57 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %58 = load i32, i32* @CIR_WAKE_SLCH, align 4
  %59 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %57, i32 %58)
  %60 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %59)
  %61 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %62 = load i32, i32* @CIR_WAKE_SLCL, align 4
  %63 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %61, i32 %62)
  %64 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %63)
  %65 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %66 = load i32, i32* @CIR_WAKE_FIFOCON, align 4
  %67 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %65, i32 %66)
  %68 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %67)
  %69 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %70 = load i32, i32* @CIR_WAKE_SRXFSTS, align 4
  %71 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %69, i32 %70)
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %71)
  %73 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %74 = load i32, i32* @CIR_WAKE_SAMPLE_RX_FIFO, align 4
  %75 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %73, i32 %74)
  %76 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %75)
  %77 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %78 = load i32, i32* @CIR_WAKE_WR_FIFO_DATA, align 4
  %79 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %77, i32 %78)
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %79)
  %81 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %82 = load i32, i32* @CIR_WAKE_RD_FIFO_ONLY, align 4
  %83 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %81, i32 %82)
  %84 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %83)
  %85 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %86 = load i32, i32* @CIR_WAKE_RD_FIFO_ONLY_IDX, align 4
  %87 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %85, i32 %86)
  %88 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %87)
  %89 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %90 = load i32, i32* @CIR_WAKE_FIFO_IGNORE, align 4
  %91 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %89, i32 %90)
  %92 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %91)
  %93 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %94 = load i32, i32* @CIR_WAKE_IRFSM, align 4
  %95 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %93, i32 %94)
  %96 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %95)
  %97 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %98 = load i32, i32* @CIR_WAKE_FIFO_COUNT, align 4
  %99 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %100, i32 %101)
  %103 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %113, %1
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %110 = load i32, i32* @CIR_WAKE_RD_FIFO_ONLY, align 4
  %111 = call i32 @nvt_cir_wake_reg_read(%struct.nvt_dev* %109, i32 %110)
  %112 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %104

116:                                              ; preds = %104
  %117 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nvt_efm_enable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_select_logical_dev(%struct.nvt_dev*, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @nvt_cr_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_efm_disable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cir_wake_reg_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
