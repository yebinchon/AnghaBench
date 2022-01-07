; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_destroy_remote_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_destroy_remote_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scif_window = type { i32, i32, i64, %struct.scif_rma_lookup, %struct.scif_rma_lookup }
%struct.scif_rma_lookup = type { i32, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@SCIF_NR_ADDR_IN_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scif_dev*, %struct.scif_window*)* @scif_destroy_remote_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_destroy_remote_lookup(%struct.scif_dev* %0, %struct.scif_window* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scif_rma_lookup*, align 8
  %8 = alloca %struct.scif_rma_lookup*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scif_window* %1, %struct.scif_window** %4, align 8
  %9 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %10 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %137

13:                                               ; preds = %2
  %14 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %15 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %14, i32 0, i32 4
  store %struct.scif_rma_lookup* %15, %struct.scif_rma_lookup** %7, align 8
  %16 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %17 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %16, i32 0, i32 3
  store %struct.scif_rma_lookup* %17, %struct.scif_rma_lookup** %8, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %75, %13
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %21 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %18
  %25 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %7, align 8
  %26 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %7, align 8
  %31 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %7, align 8
  %40 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @scif_unmap_single(i64 %45, %struct.scif_dev* %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %29, %24
  %50 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %8, align 8
  %51 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %8, align 8
  %56 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %8, align 8
  %65 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = call i32 @scif_unmap_single(i64 %70, %struct.scif_dev* %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %54, %49
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* @SCIF_NR_ADDR_IN_PAGE, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %18

83:                                               ; preds = %18
  %84 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %7, align 8
  %85 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %7, align 8
  %90 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %7, align 8
  %93 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %96 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %97 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @scif_free_coherent(i64* %91, i32 %94, %struct.scif_dev* %95, i32 %101)
  br label %103

103:                                              ; preds = %88, %83
  %104 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %8, align 8
  %105 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %8, align 8
  %110 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.scif_rma_lookup*, %struct.scif_rma_lookup** %8, align 8
  %113 = getelementptr inbounds %struct.scif_rma_lookup, %struct.scif_rma_lookup* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %116 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %117 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @scif_free_coherent(i64* %111, i32 %114, %struct.scif_dev* %115, i32 %121)
  br label %123

123:                                              ; preds = %108, %103
  %124 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %125 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %130 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %133 = call i32 @scif_unmap_single(i64 %131, %struct.scif_dev* %132, i32 48)
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %136 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %2
  ret void
}

declare dso_local i32 @scif_unmap_single(i64, %struct.scif_dev*, i32) #1

declare dso_local i32 @scif_free_coherent(i64*, i32, %struct.scif_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
