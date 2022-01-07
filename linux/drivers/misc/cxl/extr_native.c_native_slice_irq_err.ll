; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_slice_irq_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_slice_irq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32 }

@CXL_PSL_SERR_An = common dso_local global i32 0, align 4
@CXL_PSL_ErrStat_An = common dso_local global i32 0, align 4
@CXL_AFU_ERR_An = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@CXL_PSL_FIR_SLICE_An = common dso_local global i32 0, align 4
@CXL_AFU_DEBUG_An = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PSL_FIR_SLICE_An: 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"CXL_PSL_AFU_DEBUG_An: 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"CXL_PSL_ErrStat_An: 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"AFU_ERR_An: 0x%.16llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PSL_DSISR_An: 0x%.16llx\0A\00", align 1
@CXL_PSL_SERR_An_IRQS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Further such interrupts will be masked until the AFU is reset\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @native_slice_irq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_slice_irq_err(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cxl_afu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.cxl_afu*
  store %struct.cxl_afu* %14, %struct.cxl_afu** %5, align 8
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %16 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %17 = call i32 @cxl_p1n_read(%struct.cxl_afu* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %19 = load i32, i32* @CXL_PSL_ErrStat_An, align 4
  %20 = call i32 @cxl_p2n_read(%struct.cxl_afu* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %22 = load i32, i32* @CXL_AFU_ERR_An, align 4
  %23 = call i32 @cxl_p2n_read(%struct.cxl_afu* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %25 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %26 = call i32 @cxl_p2n_read(%struct.cxl_afu* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cxl_afu_decode_psl_serr(%struct.cxl_afu* %27, i32 %28)
  %30 = call i64 (...) @cxl_is_power8()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %34 = load i32, i32* @CXL_PSL_FIR_SLICE_An, align 4
  %35 = call i32 @cxl_p1n_read(%struct.cxl_afu* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %37 = load i32, i32* @CXL_AFU_DEBUG_An, align 4
  %38 = call i32 @cxl_p1n_read(%struct.cxl_afu* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %40 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %39, i32 0, i32 0
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dev_crit(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %44 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %43, i32 0, i32 0
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @dev_crit(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %32, %2
  %48 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %49 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_crit(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %53 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_crit(i32* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %57 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dev_crit(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @CXL_PSL_SERR_An_IRQS, align 4
  %62 = and i32 %60, %61
  %63 = ashr i32 %62, 32
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %68 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @cxl_p1n_write(%struct.cxl_afu* %67, i32 %68, i32 %69)
  %71 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  %72 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %71, i32 0, i32 0
  %73 = call i32 @dev_info(i32* %72, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %74
}

declare dso_local i32 @cxl_p1n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_p2n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_afu_decode_psl_serr(%struct.cxl_afu*, i32) #1

declare dso_local i64 @cxl_is_power8(...) #1

declare dso_local i32 @dev_crit(i32*, i8*, i32) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
