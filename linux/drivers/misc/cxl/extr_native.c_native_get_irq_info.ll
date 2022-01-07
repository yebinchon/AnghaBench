; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_get_irq_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_get_irq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.cxl_afu*)* }
%struct.cxl_afu = type { i32 }
%struct.cxl_irq_info = type { i64, i8*, i8*, i8*, i8*, i8* }

@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@CXL_PSL_DAR_An = common dso_local global i32 0, align 4
@CXL_PSL_DSR_An = common dso_local global i32 0, align 4
@CXL_AFU_ERR_An = common dso_local global i32 0, align 4
@CXL_PSL_ErrStat_An = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*, %struct.cxl_irq_info*)* @native_get_irq_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_get_irq_info(%struct.cxl_afu* %0, %struct.cxl_irq_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl_afu*, align 8
  %5 = alloca %struct.cxl_irq_info*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %4, align 8
  store %struct.cxl_irq_info* %1, %struct.cxl_irq_info** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (i32, %struct.cxl_afu*)*, i32 (i32, %struct.cxl_afu*)** %7, align 8
  %9 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %10 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %13 = call i32 %8(i32 %11, %struct.cxl_afu* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %20 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %21 = call i8* @cxl_p2n_read(%struct.cxl_afu* %19, i32 %20)
  %22 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %5, align 8
  %23 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %25 = load i32, i32* @CXL_PSL_DAR_An, align 4
  %26 = call i8* @cxl_p2n_read(%struct.cxl_afu* %24, i32 %25)
  %27 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %5, align 8
  %28 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = call i64 (...) @cxl_is_power8()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %33 = load i32, i32* @CXL_PSL_DSR_An, align 4
  %34 = call i8* @cxl_p2n_read(%struct.cxl_afu* %32, i32 %33)
  %35 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %5, align 8
  %36 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %31, %18
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %39 = load i32, i32* @CXL_AFU_ERR_An, align 4
  %40 = call i8* @cxl_p2n_read(%struct.cxl_afu* %38, i32 %39)
  %41 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %5, align 8
  %42 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %44 = load i32, i32* @CXL_PSL_ErrStat_An, align 4
  %45 = call i8* @cxl_p2n_read(%struct.cxl_afu* %43, i32 %44)
  %46 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %5, align 8
  %47 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.cxl_irq_info*, %struct.cxl_irq_info** %5, align 8
  %49 = getelementptr inbounds %struct.cxl_irq_info, %struct.cxl_irq_info* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %37, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @cxl_p2n_read(%struct.cxl_afu*, i32) #1

declare dso_local i64 @cxl_is_power8(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
