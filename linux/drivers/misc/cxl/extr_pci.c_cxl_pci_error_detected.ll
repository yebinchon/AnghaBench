; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_error_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_pci_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_afu*, i32)* }
%struct.cxl_afu = type { i32 }
%struct.pci_dev = type { i32 }
%struct.cxl = type { i32, i32, i32, i32, %struct.cxl_afu**, i32, i64 }

@PCI_ERS_RESULT_NEED_RESET = common dso_local global i64 0, align 8
@pci_channel_io_perm_failure = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"reflashing, so opting out of EEH!\0A\00", align 1
@PCI_ERS_RESULT_NONE = common dso_local global i64 0, align 8
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Couldn't take context lock with %d active-contexts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*, i32)* @cxl_pci_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cxl_pci_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxl*, align 8
  %7 = alloca %struct.cxl_afu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call %struct.cxl* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.cxl* %12, %struct.cxl** %6, align 8
  %13 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  store i64 %14, i64* %9, align 8
  %15 = call i32 (...) @schedule()
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @pci_channel_io_perm_failure, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = load %struct.cxl*, %struct.cxl** %6, align 8
  %21 = getelementptr inbounds %struct.cxl, %struct.cxl* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %40, %19
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.cxl*, %struct.cxl** %6, align 8
  %26 = getelementptr inbounds %struct.cxl, %struct.cxl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.cxl*, %struct.cxl** %6, align 8
  %31 = getelementptr inbounds %struct.cxl, %struct.cxl* %30, i32 0, i32 4
  %32 = load %struct.cxl_afu**, %struct.cxl_afu*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cxl_afu*, %struct.cxl_afu** %32, i64 %34
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %35, align 8
  store %struct.cxl_afu* %36, %struct.cxl_afu** %7, align 8
  %37 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @cxl_vphb_error_detected(%struct.cxl_afu* %37, i32 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.cxl*, %struct.cxl** %6, align 8
  %45 = getelementptr inbounds %struct.cxl, %struct.cxl* %44, i32 0, i32 3
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %47, i64* %3, align 8
  br label %138

48:                                               ; preds = %2
  %49 = load %struct.cxl*, %struct.cxl** %6, align 8
  %50 = getelementptr inbounds %struct.cxl, %struct.cxl* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.cxl*, %struct.cxl** %6, align 8
  %55 = getelementptr inbounds %struct.cxl, %struct.cxl* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %62 = load i64, i64* @PCI_ERS_RESULT_NONE, align 8
  store i64 %62, i64* %3, align 8
  br label %138

63:                                               ; preds = %53, %48
  %64 = load %struct.cxl*, %struct.cxl** %6, align 8
  %65 = getelementptr inbounds %struct.cxl, %struct.cxl* %64, i32 0, i32 3
  %66 = call i32 @spin_lock(i32* %65)
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %117, %63
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.cxl*, %struct.cxl** %6, align 8
  %70 = getelementptr inbounds %struct.cxl, %struct.cxl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %67
  %74 = load %struct.cxl*, %struct.cxl** %6, align 8
  %75 = getelementptr inbounds %struct.cxl, %struct.cxl* %74, i32 0, i32 4
  %76 = load %struct.cxl_afu**, %struct.cxl_afu*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cxl_afu*, %struct.cxl_afu** %76, i64 %78
  %80 = load %struct.cxl_afu*, %struct.cxl_afu** %79, align 8
  store %struct.cxl_afu* %80, %struct.cxl_afu** %7, align 8
  %81 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %82 = icmp eq %struct.cxl_afu* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %117

84:                                               ; preds = %73
  %85 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @cxl_vphb_error_detected(%struct.cxl_afu* %85, i32 %86)
  store i64 %87, i64* %9, align 8
  %88 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %89 = call i32 @cxl_context_detach_all(%struct.cxl_afu* %88)
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.cxl_afu*, i32)*, i32 (%struct.cxl_afu*, i32)** %91, align 8
  %93 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %94 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %95 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 %92(%struct.cxl_afu* %93, i32 %96)
  %98 = load %struct.cxl_afu*, %struct.cxl_afu** %7, align 8
  %99 = call i32 @pci_deconfigure_afu(%struct.cxl_afu* %98)
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %104, i64* %8, align 8
  br label %116

105:                                              ; preds = %84
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @PCI_ERS_RESULT_NONE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* @PCI_ERS_RESULT_NONE, align 8
  store i64 %114, i64* %8, align 8
  br label %115

115:                                              ; preds = %113, %109, %105
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116, %83
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %67

120:                                              ; preds = %67
  %121 = load %struct.cxl*, %struct.cxl** %6, align 8
  %122 = getelementptr inbounds %struct.cxl, %struct.cxl* %121, i32 0, i32 3
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load %struct.cxl*, %struct.cxl** %6, align 8
  %125 = call i64 @cxl_adapter_context_lock(%struct.cxl* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load %struct.cxl*, %struct.cxl** %6, align 8
  %129 = getelementptr inbounds %struct.cxl, %struct.cxl* %128, i32 0, i32 2
  %130 = load %struct.cxl*, %struct.cxl** %6, align 8
  %131 = getelementptr inbounds %struct.cxl, %struct.cxl* %130, i32 0, i32 1
  %132 = call i32 @atomic_read(i32* %131)
  %133 = call i32 @dev_warn(i32* %129, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %127, %120
  %135 = load %struct.cxl*, %struct.cxl** %6, align 8
  %136 = call i32 @cxl_deconfigure_adapter(%struct.cxl* %135)
  %137 = load i64, i64* %8, align 8
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %134, %58, %43
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local %struct.cxl* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @cxl_vphb_error_detected(%struct.cxl_afu*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @cxl_context_detach_all(%struct.cxl_afu*) #1

declare dso_local i32 @pci_deconfigure_afu(%struct.cxl_afu*) #1

declare dso_local i64 @cxl_adapter_context_lock(%struct.cxl*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cxl_deconfigure_adapter(%struct.cxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
