; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_decode_bch_error_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_decode_bch_error_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.elm_errorvec = type { i32 }
%struct.elm_info = type { i32 }

@ELM_IRQSTATUS = common dso_local global i32 0, align 4
@INTR_STATUS_PAGE_VALID = common dso_local global i32 0, align 4
@ELM_IRQENABLE = common dso_local global i32 0, align 4
@INTR_EN_PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elm_decode_bch_error_page(%struct.device* %0, i32* %1, %struct.elm_errorvec* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.elm_errorvec*, align 8
  %7 = alloca %struct.elm_info*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.elm_errorvec* %2, %struct.elm_errorvec** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.elm_info* @dev_get_drvdata(%struct.device* %9)
  store %struct.elm_info* %10, %struct.elm_info** %7, align 8
  %11 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %12 = load i32, i32* @ELM_IRQSTATUS, align 4
  %13 = call i32 @elm_read_reg(%struct.elm_info* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %15 = load i32, i32* @ELM_IRQSTATUS, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @INTR_STATUS_PAGE_VALID, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @elm_write_reg(%struct.elm_info* %14, i32 %15, i32 %18)
  %20 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %21 = load i32, i32* @ELM_IRQENABLE, align 4
  %22 = load i32, i32* @INTR_EN_PAGE_MASK, align 4
  %23 = call i32 @elm_write_reg(%struct.elm_info* %20, i32 %21, i32 %22)
  %24 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %25 = load %struct.elm_errorvec*, %struct.elm_errorvec** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @elm_load_syndrome(%struct.elm_info* %24, %struct.elm_errorvec* %25, i32* %26)
  %28 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %29 = load %struct.elm_errorvec*, %struct.elm_errorvec** %6, align 8
  %30 = call i32 @elm_start_processing(%struct.elm_info* %28, %struct.elm_errorvec* %29)
  %31 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %32 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %31, i32 0, i32 0
  %33 = call i32 @wait_for_completion(i32* %32)
  %34 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %35 = load i32, i32* @ELM_IRQENABLE, align 4
  %36 = call i32 @elm_read_reg(%struct.elm_info* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %38 = load i32, i32* @ELM_IRQENABLE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @INTR_EN_PAGE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @elm_write_reg(%struct.elm_info* %37, i32 %38, i32 %42)
  %44 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %45 = load %struct.elm_errorvec*, %struct.elm_errorvec** %6, align 8
  %46 = call i32 @elm_error_correction(%struct.elm_info* %44, %struct.elm_errorvec* %45)
  ret void
}

declare dso_local %struct.elm_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @elm_read_reg(%struct.elm_info*, i32) #1

declare dso_local i32 @elm_write_reg(%struct.elm_info*, i32, i32) #1

declare dso_local i32 @elm_load_syndrome(%struct.elm_info*, %struct.elm_errorvec*, i32*) #1

declare dso_local i32 @elm_start_processing(%struct.elm_info*, %struct.elm_errorvec*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @elm_error_correction(%struct.elm_info*, %struct.elm_errorvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
