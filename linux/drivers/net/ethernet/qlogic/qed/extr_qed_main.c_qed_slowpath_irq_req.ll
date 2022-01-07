; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_irq_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_irq_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i32, %struct.qed_dev*, i32, %struct.qed_dev* }
%struct.qed_dev = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@QED_INT_MODE_MSIX = common dso_local global i64 0, align 8
@NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sp-%d-%02x:%02x.%02x\00", align 1
@qed_msix_sp_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%02x:%02x.%02x\00", align 1
@QED_INT_MODE_INTA = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@qed_single_int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"request_irq failed, rc = %d\0A\00", align 1
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Requested slowpath %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_slowpath_irq_req(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 4
  %10 = load %struct.qed_dev*, %struct.qed_dev** %9, align 8
  store %struct.qed_dev* %10, %struct.qed_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %12 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @QED_INT_MODE_MSIX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %1
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NAME_SIZE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %29 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %36 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PCI_SLOT(i32 %39)
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %42 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %25, i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %34, i32 %40, i32 %43)
  %45 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %46 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @qed_msix_sp_int, align 4
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %56 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %59 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %58, i32 0, i32 2
  %60 = load %struct.qed_dev*, %struct.qed_dev** %59, align 8
  %61 = call i32 @request_irq(i32 %53, i32 %54, i64 0, i32 %57, %struct.qed_dev* %60)
  store i32 %61, i32* %5, align 4
  br label %111

62:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  %63 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %64 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NAME_SIZE, align 4
  %67 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %68 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %75 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PCI_SLOT(i32 %78)
  %80 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %81 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @PCI_FUNC(i32 %84)
  %86 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @snprintf(i32 %65, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %79, i32 %85)
  %87 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %88 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @QED_INT_MODE_INTA, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %62
  %95 = load i64, i64* @IRQF_SHARED, align 8
  %96 = load i64, i64* %7, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %94, %62
  %99 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %100 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @qed_single_int, align 4
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %107 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %110 = call i32 @request_irq(i32 %103, i32 %104, i64 %105, i32 %108, %struct.qed_dev* %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %98, %19
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @DP_NOTICE(%struct.qed_dev* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %129

118:                                              ; preds = %111
  %119 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %120 = load i32, i32* @NETIF_MSG_INTR, align 4
  %121 = load i32, i32* @QED_MSG_SP, align 4
  %122 = or i32 %120, %121
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @QED_INT_MODE_MSIX, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %128 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %119, i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %118, %114
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.qed_dev*) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
