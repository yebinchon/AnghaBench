; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_ecc_isr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_ecc_isr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i32 }

@XSDFEC_ECC_IER_ADDR = common dso_local global i32 0, align 4
@XSDFEC_ALL_ECC_ISR_MASK = common dso_local global i32 0, align 4
@XSDFEC_ECC_IMR_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"SDFEC enabling ECC irq with ECC IER failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@XSDFEC_ECC_IDR_ADDR = common dso_local global i32 0, align 4
@XSDFEC_ECC_ISR_MASK = common dso_local global i32 0, align 4
@XSDFEC_PL_INIT_ECC_ISR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"SDFEC disable ECC irq with ECC IDR failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*, i32)* @xsdfec_ecc_isr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_ecc_isr_enable(%struct.xsdfec_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xsdfec_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %11 = load i32, i32* @XSDFEC_ECC_IER_ADDR, align 4
  %12 = load i32, i32* @XSDFEC_ALL_ECC_ISR_MASK, align 4
  %13 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %10, i32 %11, i32 %12)
  %14 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %15 = load i32, i32* @XSDFEC_ECC_IMR_ADDR, align 4
  %16 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @XSDFEC_ALL_ECC_ISR_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %23 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %9
  br label %56

29:                                               ; preds = %2
  %30 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %31 = load i32, i32* @XSDFEC_ECC_IDR_ADDR, align 4
  %32 = load i32, i32* @XSDFEC_ALL_ECC_ISR_MASK, align 4
  %33 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %35 = load i32, i32* @XSDFEC_ECC_IMR_ADDR, align 4
  %36 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @XSDFEC_ALL_ECC_ISR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @XSDFEC_ECC_ISR_MASK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @XSDFEC_ALL_ECC_ISR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @XSDFEC_PL_INIT_ECC_ISR_MASK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %4, align 8
  %50 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %42, %29
  br label %56

56:                                               ; preds = %55, %28
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %48, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i32, i32) #1

declare dso_local i32 @xsdfec_regread(%struct.xsdfec_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
