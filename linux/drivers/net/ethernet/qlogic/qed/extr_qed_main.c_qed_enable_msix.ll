; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32 }
%struct.qed_int_params = type { %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Trying to enable MSI-X with less vectors (%d out of %d)\0A\00", align 1
@QED_INT_MODE_MSIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed to enable MSI-X [Requested %d vectors][rc %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_int_params*)* @qed_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_enable_msix(%struct.qed_dev* %0, %struct.qed_int_params* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_int_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_int_params* %1, %struct.qed_int_params** %4, align 8
  %8 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %9 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %19 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %30 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %33 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %36 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pci_enable_msix_range(i32 %31, %struct.TYPE_7__* %34, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %47 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %45, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %54 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = srem i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %51
  %59 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %60 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pci_disable_msix(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %65 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %63, %66
  %68 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %69 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %75 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @DP_NOTICE(%struct.qed_dev* %72, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %77)
  %79 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %80 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %83 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @pci_enable_msix_exact(i32 %81, %struct.TYPE_7__* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %58
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %58
  br label %92

92:                                               ; preds = %91, %51, %44, %28
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* @QED_INT_MODE_MSIX, align 4
  %97 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %98 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.qed_int_params*, %struct.qed_int_params** %4, align 8
  %102 = getelementptr inbounds %struct.qed_int_params, %struct.qed_int_params* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  store i32 0, i32* %6, align 4
  br label %109

104:                                              ; preds = %92
  %105 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @DP_NOTICE(%struct.qed_dev* %105, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %95
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @pci_enable_msix_range(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @pci_disable_msix(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_enable_msix_exact(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
