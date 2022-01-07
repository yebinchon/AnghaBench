; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_init_memctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_init_memctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32* }

@BANK_L_CTX = common dso_local global i64 0, align 8
@S5P_FIMV_RISC_BASE_ADDRESS_V6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Base Address : %pad\0A\00", align 1
@S5P_FIMV_MC_DRAMBASE_ADR_A = common dso_local global i32 0, align 4
@BANK_R_CTX = common dso_local global i64 0, align 8
@S5P_FIMV_MC_DRAMBASE_ADR_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Bank1: %pad, Bank2: %pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_dev*)* @s5p_mfc_init_memctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_init_memctrl(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %2, align 8
  %3 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %4 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @BANK_L_CTX, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @S5P_FIMV_RISC_BASE_ADDRESS_V6, align 4
  %15 = call i32 @mfc_write(%struct.s5p_mfc_dev* %7, i32 %13, i32 %14)
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @BANK_L_CTX, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 (i32, i8*, i32*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %20)
  br label %52

22:                                               ; preds = %1
  %23 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @BANK_L_CTX, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S5P_FIMV_MC_DRAMBASE_ADR_A, align 4
  %31 = call i32 @mfc_write(%struct.s5p_mfc_dev* %23, i32 %29, i32 %30)
  %32 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %33 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @BANK_R_CTX, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @S5P_FIMV_MC_DRAMBASE_ADR_B, align 4
  %40 = call i32 @mfc_write(%struct.s5p_mfc_dev* %32, i32 %38, i32 %39)
  %41 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @BANK_L_CTX, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @BANK_R_CTX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 (i32, i8*, i32*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %45, i32* %50)
  br label %52

52:                                               ; preds = %22, %6
  ret void
}

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
