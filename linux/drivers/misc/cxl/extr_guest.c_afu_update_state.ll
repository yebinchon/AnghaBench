; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_afu_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_afu_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cxl_afu*)* }
%struct.cxl_afu = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"AFU(%d) update state to %#x\0A\00", align 1
@CXL_ERROR_DETECTED_EVENT = common dso_local global i32 0, align 4
@pci_channel_io_frozen = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"reset hcall failed %d\0A\00", align 1
@CXL_SLOT_RESET_EVENT = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i32 0, align 4
@CXL_RESUME_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"AFU is in permanent error state\0A\00", align 1
@pci_channel_io_perm_failure = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Unexpected AFU(%d) error state: %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @afu_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_update_state(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %6 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %7 = call i32 @afu_read_error_state(%struct.cxl_afu* %6, i32* %5)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %100

12:                                               ; preds = %1
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %100

21:                                               ; preds = %12
  %22 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %23 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %90 [
    i32 130, label %28
    i32 131, label %34
    i32 128, label %71
    i32 129, label %77
  ]

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %31 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %98

34:                                               ; preds = %21
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %36 = load i32, i32* @CXL_ERROR_DETECTED_EVENT, align 4
  %37 = load i32, i32* @pci_channel_io_frozen, align 4
  %38 = call i32 @pci_error_handlers(%struct.cxl_afu* %35, i32 %36, i32 %37)
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %40 = call i32 @cxl_context_detach_all(%struct.cxl_afu* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %42, align 8
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %45 = call i32 %43(%struct.cxl_afu* %44)
  store i32 %45, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %34
  %51 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %52 = call i32 @afu_read_error_state(%struct.cxl_afu* %51, i32* %5)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 130
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %60 = load i32, i32* @CXL_SLOT_RESET_EVENT, align 4
  %61 = load i32, i32* @pci_channel_io_normal, align 4
  %62 = call i32 @pci_error_handlers(%struct.cxl_afu* %59, i32 %60, i32 %61)
  %63 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %64 = load i32, i32* @CXL_RESUME_EVENT, align 4
  %65 = call i32 @pci_error_handlers(%struct.cxl_afu* %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %58, %55, %50
  %67 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %68 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %98

71:                                               ; preds = %21
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %74 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %98

77:                                               ; preds = %21
  %78 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %79 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %78, i32 0, i32 2
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %82 = load i32, i32* @CXL_ERROR_DETECTED_EVENT, align 4
  %83 = load i32, i32* @pci_channel_io_perm_failure, align 4
  %84 = call i32 @pci_error_handlers(%struct.cxl_afu* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %87 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %98

90:                                               ; preds = %21
  %91 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %92 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %100

98:                                               ; preds = %77, %71, %66, %28
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %90, %20, %10
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @afu_read_error_state(%struct.cxl_afu*, i32*) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local i32 @pci_error_handlers(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_context_detach_all(%struct.cxl_afu*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
