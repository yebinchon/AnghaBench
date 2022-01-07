; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_start_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_start_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.cxl_ioctl_start_work = type { i32, i64, i32 }

@CXL_START_WORK_NUM_IRQS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_start_work(%struct.cxl_context* %0, %struct.cxl_ioctl_start_work* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl_context*, align 8
  %5 = alloca %struct.cxl_ioctl_start_work*, align 8
  %6 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %4, align 8
  store %struct.cxl_ioctl_start_work* %1, %struct.cxl_ioctl_start_work** %5, align 8
  %7 = load %struct.cxl_ioctl_start_work*, %struct.cxl_ioctl_start_work** %5, align 8
  %8 = getelementptr inbounds %struct.cxl_ioctl_start_work, %struct.cxl_ioctl_start_work* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CXL_START_WORK_NUM_IRQS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %15 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cxl_ioctl_start_work*, %struct.cxl_ioctl_start_work** %5, align 8
  %20 = getelementptr inbounds %struct.cxl_ioctl_start_work, %struct.cxl_ioctl_start_work* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.cxl_ioctl_start_work*, %struct.cxl_ioctl_start_work** %5, align 8
  %23 = getelementptr inbounds %struct.cxl_ioctl_start_work, %struct.cxl_ioctl_start_work* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %26 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %21
  %32 = load %struct.cxl_ioctl_start_work*, %struct.cxl_ioctl_start_work** %5, align 8
  %33 = getelementptr inbounds %struct.cxl_ioctl_start_work, %struct.cxl_ioctl_start_work* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %36 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31, %21
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %70

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %13
  %46 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %47 = load %struct.cxl_ioctl_start_work*, %struct.cxl_ioctl_start_work** %5, align 8
  %48 = getelementptr inbounds %struct.cxl_ioctl_start_work, %struct.cxl_ioctl_start_work* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @afu_register_irqs(%struct.cxl_context* %46, i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %45
  %56 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %57 = load %struct.cxl_ioctl_start_work*, %struct.cxl_ioctl_start_work** %5, align 8
  %58 = getelementptr inbounds %struct.cxl_ioctl_start_work, %struct.cxl_ioctl_start_work* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @current, align 4
  %61 = call i32 @cxl_start_context(%struct.cxl_context* %56, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %66 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %67 = call i32 @afu_release_irqs(%struct.cxl_context* %65, %struct.cxl_context* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %64, %53, %41
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @afu_register_irqs(%struct.cxl_context*, i64) #1

declare dso_local i32 @cxl_start_context(%struct.cxl_context*, i32, i32) #1

declare dso_local i32 @afu_release_irqs(%struct.cxl_context*, %struct.cxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
