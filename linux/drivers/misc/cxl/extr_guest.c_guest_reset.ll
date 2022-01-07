; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, i32, %struct.cxl_afu**, %struct.TYPE_2__* }
%struct.cxl_afu = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Adapter reset request\0A\00", align 1
@CXL_ERROR_DETECTED_EVENT = common dso_local global i32 0, align 4
@pci_channel_io_frozen = common dso_local global i32 0, align 4
@CXL_SLOT_RESET_EVENT = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i32 0, align 4
@CXL_RESUME_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*)* @guest_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_reset(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  store %struct.cxl_afu* null, %struct.cxl_afu** %3, align 8
  %6 = call i32 @pr_devel(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cxl*, %struct.cxl** %2, align 8
  %8 = getelementptr inbounds %struct.cxl, %struct.cxl* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.cxl*, %struct.cxl** %2, align 8
  %13 = getelementptr inbounds %struct.cxl, %struct.cxl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load %struct.cxl*, %struct.cxl** %2, align 8
  %18 = getelementptr inbounds %struct.cxl, %struct.cxl* %17, i32 0, i32 2
  %19 = load %struct.cxl_afu**, %struct.cxl_afu*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cxl_afu*, %struct.cxl_afu** %19, i64 %21
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %22, align 8
  store %struct.cxl_afu* %23, %struct.cxl_afu** %3, align 8
  %24 = icmp ne %struct.cxl_afu* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %27 = load i32, i32* @CXL_ERROR_DETECTED_EVENT, align 4
  %28 = load i32, i32* @pci_channel_io_frozen, align 4
  %29 = call i32 @pci_error_handlers(%struct.cxl_afu* %26, i32 %27, i32 %28)
  %30 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %31 = call i32 @cxl_context_detach_all(%struct.cxl_afu* %30)
  br label %32

32:                                               ; preds = %25, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.cxl*, %struct.cxl** %2, align 8
  %38 = getelementptr inbounds %struct.cxl, %struct.cxl* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cxl_h_reset_adapter(i32 %41)
  store i32 %42, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %70, %36
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.cxl*, %struct.cxl** %2, align 8
  %46 = getelementptr inbounds %struct.cxl, %struct.cxl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %49
  %53 = load %struct.cxl*, %struct.cxl** %2, align 8
  %54 = getelementptr inbounds %struct.cxl, %struct.cxl* %53, i32 0, i32 2
  %55 = load %struct.cxl_afu**, %struct.cxl_afu*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cxl_afu*, %struct.cxl_afu** %55, i64 %57
  %59 = load %struct.cxl_afu*, %struct.cxl_afu** %58, align 8
  store %struct.cxl_afu* %59, %struct.cxl_afu** %3, align 8
  %60 = icmp ne %struct.cxl_afu* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %63 = load i32, i32* @CXL_SLOT_RESET_EVENT, align 4
  %64 = load i32, i32* @pci_channel_io_normal, align 4
  %65 = call i32 @pci_error_handlers(%struct.cxl_afu* %62, i32 %63, i32 %64)
  %66 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %67 = load i32, i32* @CXL_RESUME_EVENT, align 4
  %68 = call i32 @pci_error_handlers(%struct.cxl_afu* %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %61, %52, %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load %struct.cxl*, %struct.cxl** %2, align 8
  %75 = getelementptr inbounds %struct.cxl, %struct.cxl* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pci_error_handlers(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_context_detach_all(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_h_reset_adapter(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
