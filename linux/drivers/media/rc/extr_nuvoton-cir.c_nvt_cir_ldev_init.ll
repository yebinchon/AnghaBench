; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_ldev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_ldev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32, i32 }

@CR_MULTIFUNC_PIN_SEL = common dso_local global i32 0, align 4
@MULTIFUNC_PIN_SEL_MASK = common dso_local global i32 0, align 4
@MULTIFUNC_ENABLE_CIR = common dso_local global i32 0, align 4
@MULTIFUNC_ENABLE_CIRWB = common dso_local global i32 0, align 4
@CR_OUTPUT_PIN_SEL = common dso_local global i32 0, align 4
@OUTPUT_PIN_SEL_MASK = common dso_local global i32 0, align 4
@OUTPUT_ENABLE_CIR = common dso_local global i32 0, align 4
@OUTPUT_ENABLE_CIRWB = common dso_local global i32 0, align 4
@LOGICAL_DEV_CIR = common dso_local global i32 0, align 4
@CR_CIR_IRQ_RSRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"CIR initialized, base io port address: 0x%lx, irq: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @nvt_cir_ldev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_cir_ldev_init(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %8 = call i64 @is_w83667hg(%struct.nvt_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @CR_MULTIFUNC_PIN_SEL, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MULTIFUNC_PIN_SEL_MASK, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @MULTIFUNC_ENABLE_CIR, align 4
  %14 = load i32, i32* @MULTIFUNC_ENABLE_CIRWB, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @CR_OUTPUT_PIN_SEL, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @OUTPUT_PIN_SEL_MASK, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @OUTPUT_ENABLE_CIR, align 4
  %20 = load i32, i32* @OUTPUT_ENABLE_CIRWB, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nvt_cr_read(%struct.nvt_dev* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @nvt_cr_write(%struct.nvt_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %37 = load i32, i32* @LOGICAL_DEV_CIR, align 4
  %38 = call i32 @nvt_select_logical_dev(%struct.nvt_dev* %36, i32 %37)
  %39 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %40 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %41 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %40, i32 0, i32 1
  %42 = call i32 @nvt_set_ioaddr(%struct.nvt_dev* %39, i32* %41)
  %43 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %44 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %45 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CR_CIR_IRQ_RSRC, align 4
  %48 = call i32 @nvt_cr_write(%struct.nvt_dev* %43, i32 %46, i32 %47)
  %49 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %50 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %53 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nvt_dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  ret void
}

declare dso_local i64 @is_w83667hg(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cr_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_cr_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_select_logical_dev(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_set_ioaddr(%struct.nvt_dev*, i32*) #1

declare dso_local i32 @nvt_dbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
