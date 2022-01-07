; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_context.c_ocxl_context_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pci_dev = type { i32 }

@CLOSED = common dso_local global i32 0, align 4
@ATTACHED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Couldn't remove PE entry cleanly: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_context_detach(%struct.ocxl_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocxl_context*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocxl_context* %0, %struct.ocxl_context** %3, align 8
  %8 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %9 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %8, i32 0, i32 3
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %12 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @CLOSED, align 4
  %15 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %16 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %18 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %17, i32 0, i32 3
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ATTACHED, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

24:                                               ; preds = %1
  %25 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %26 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.pci_dev* @to_pci_dev(i32 %32)
  store %struct.pci_dev* %33, %struct.pci_dev** %4, align 8
  %34 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %35 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %41 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %48 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ocxl_config_terminate_pasid(%struct.pci_dev* %45, i32 %46, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %52 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %57 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @trace_ocxl_terminate_pasid(i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %24
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %91

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %24
  %72 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %73 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ocxl_context*, %struct.ocxl_context** %3, align 8
  %80 = getelementptr inbounds %struct.ocxl_context, %struct.ocxl_context* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ocxl_link_remove_pe(i32 %78, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %71
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %71
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %68, %23
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ocxl_config_terminate_pasid(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @trace_ocxl_terminate_pasid(i32, i32) #1

declare dso_local i32 @ocxl_link_remove_pe(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
