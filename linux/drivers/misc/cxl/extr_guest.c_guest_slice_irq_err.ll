; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_slice_irq_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_slice_irq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Couldn't read PSL_SERR_An: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CXL_AFU_ERR_An = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"AFU_ERR_An: 0x%.16llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"PSL_DSISR_An: 0x%.16llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Couldn't ack slice error interrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @guest_slice_irq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_slice_irq_err(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cxl_afu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.cxl_afu*
  store %struct.cxl_afu* %12, %struct.cxl_afu** %6, align 8
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cxl_h_get_fn_error_interrupt(i32 %17, i32* %8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %23 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_crit(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %29 = load i32, i32* @CXL_AFU_ERR_An, align 4
  %30 = call i32 @cxl_p2n_read(%struct.cxl_afu* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %32 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %33 = call i32 @cxl_p2n_read(%struct.cxl_afu* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @cxl_afu_decode_psl_serr(%struct.cxl_afu* %34, i32 %35)
  %37 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %38 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %37, i32 0, i32 0
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_crit(i32* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %42 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %41, i32 0, i32 0
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_crit(i32* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %46 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @cxl_h_ack_fn_error_interrupt(i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %27
  %55 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %56 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_crit(i32* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %27
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @cxl_h_get_fn_error_interrupt(i32, i32*) #1

declare dso_local i32 @dev_crit(i32*, i8*, i32) #1

declare dso_local i32 @cxl_p2n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_afu_decode_psl_serr(%struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_h_ack_fn_error_interrupt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
