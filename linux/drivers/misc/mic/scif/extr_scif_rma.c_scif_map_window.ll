; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_map_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_map_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scif_window = type { i32, i32*, i8**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@intel_iommu_enabled = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_map_window(%struct.scif_dev* %0, %struct.scif_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scif_dev*, align 8
  %5 = alloca %struct.scif_window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %4, align 8
  store %struct.scif_window* %1, %struct.scif_window** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = call i32 (...) @might_sleep()
  %15 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %16 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %11, align 8
  %18 = load i64, i64* @intel_iommu_enabled, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %22 = call i32 @scifdev_self(%struct.scif_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %26 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %27 = call i32 @scif_iommu_map(%struct.scif_dev* %25, %struct.scif_window* %26)
  store i32 %27, i32* %3, align 4
  br label %140

28:                                               ; preds = %20, %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %132, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %32 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @page_to_phys(i32 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %12, align 8
  store i32 1, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %73, %35
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %50 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @page_to_phys(i32 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = add nsw i64 %64, %65
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %76

69:                                               ; preds = %53
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %47

76:                                               ; preds = %68, %47
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %79 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %85 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = call i64 (...) @scif_is_mgmt_node()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %76
  %91 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %92 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @page_to_phys(i32 %103)
  %105 = call i32 @phys_to_virt(i8* %104)
  %106 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @PAGE_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = call i32 @scif_map_single(i8** %96, i32 %105, %struct.scif_dev* %106, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %90
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %140

115:                                              ; preds = %90
  br label %131

116:                                              ; preds = %76
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @page_to_phys(i32 %123)
  %125 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %126 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %125, i32 0, i32 2
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %124, i8** %130, align 8
  br label %131

131:                                              ; preds = %116, %115
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %29

138:                                              ; preds = %29
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %113, %24
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @scifdev_self(%struct.scif_dev*) #1

declare dso_local i32 @scif_iommu_map(%struct.scif_dev*, %struct.scif_window*) #1

declare dso_local i8* @page_to_phys(i32) #1

declare dso_local i64 @scif_is_mgmt_node(...) #1

declare dso_local i32 @scif_map_single(i8**, i32, %struct.scif_dev*, i32) #1

declare dso_local i32 @phys_to_virt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
