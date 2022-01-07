; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_rebuild_busmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_rebuild_busmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ehea_top_bmap** }
%struct.ehea_top_bmap = type { %struct.ehea_top_bmap**, i64* }
%struct.ehea_dir_bmap = type { %struct.ehea_dir_bmap**, i64* }

@EHEA_BUSMAP_START = common dso_local global i64 0, align 8
@EHEA_MAP_ENTRIES = common dso_local global i32 0, align 4
@ehea_bmap = common dso_local global %struct.TYPE_2__* null, align 8
@EHEA_SECTSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ehea_rebuild_busmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_rebuild_busmap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehea_top_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehea_dir_bmap*, align 8
  %8 = alloca i32, align 4
  %9 = load i64, i64* @EHEA_BUSMAP_START, align 8
  store i64 %9, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %117, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @EHEA_MAP_ENTRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %120

14:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehea_bmap, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ehea_top_bmap**, %struct.ehea_top_bmap*** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %17, i64 %19
  %21 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %20, align 8
  %22 = icmp ne %struct.ehea_top_bmap* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %117

24:                                               ; preds = %14
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehea_bmap, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ehea_top_bmap**, %struct.ehea_top_bmap*** %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %27, i64 %29
  %31 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %30, align 8
  store %struct.ehea_top_bmap* %31, %struct.ehea_top_bmap** %5, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %101, %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @EHEA_MAP_ENTRIES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  %37 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %5, align 8
  %38 = getelementptr inbounds %struct.ehea_top_bmap, %struct.ehea_top_bmap* %37, i32 0, i32 0
  %39 = load %struct.ehea_top_bmap**, %struct.ehea_top_bmap*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %39, i64 %41
  %43 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %42, align 8
  %44 = icmp ne %struct.ehea_top_bmap* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %101

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %5, align 8
  %50 = getelementptr inbounds %struct.ehea_top_bmap, %struct.ehea_top_bmap* %49, i32 0, i32 0
  %51 = load %struct.ehea_top_bmap**, %struct.ehea_top_bmap*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %51, i64 %53
  %55 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %54, align 8
  %56 = bitcast %struct.ehea_top_bmap* %55 to %struct.ehea_dir_bmap*
  store %struct.ehea_dir_bmap* %56, %struct.ehea_dir_bmap** %7, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %84, %46
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EHEA_MAP_ENTRIES, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load %struct.ehea_dir_bmap*, %struct.ehea_dir_bmap** %7, align 8
  %63 = getelementptr inbounds %struct.ehea_dir_bmap, %struct.ehea_dir_bmap* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %84

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i64, i64* %1, align 8
  %75 = load %struct.ehea_dir_bmap*, %struct.ehea_dir_bmap** %7, align 8
  %76 = getelementptr inbounds %struct.ehea_dir_bmap, %struct.ehea_dir_bmap* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %74, i64* %80, align 8
  %81 = load i64, i64* @EHEA_SECTSIZE, align 8
  %82 = load i64, i64* %1, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %1, align 8
  br label %84

84:                                               ; preds = %71, %70
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %57

87:                                               ; preds = %57
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %5, align 8
  %92 = getelementptr inbounds %struct.ehea_top_bmap, %struct.ehea_top_bmap* %91, i32 0, i32 0
  %93 = load %struct.ehea_top_bmap**, %struct.ehea_top_bmap*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %93, i64 %95
  store %struct.ehea_top_bmap* null, %struct.ehea_top_bmap** %96, align 8
  %97 = load %struct.ehea_dir_bmap*, %struct.ehea_dir_bmap** %7, align 8
  %98 = bitcast %struct.ehea_dir_bmap* %97 to %struct.ehea_top_bmap*
  %99 = call i32 @kfree(%struct.ehea_top_bmap* %98)
  br label %100

100:                                              ; preds = %90, %87
  br label %101

101:                                              ; preds = %100, %45
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %32

104:                                              ; preds = %32
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehea_bmap, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.ehea_top_bmap**, %struct.ehea_top_bmap*** %109, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %110, i64 %112
  store %struct.ehea_top_bmap* null, %struct.ehea_top_bmap** %113, align 8
  %114 = load %struct.ehea_top_bmap*, %struct.ehea_top_bmap** %5, align 8
  %115 = call i32 @kfree(%struct.ehea_top_bmap* %114)
  br label %116

116:                                              ; preds = %107, %104
  br label %117

117:                                              ; preds = %116, %23
  %118 = load i32, i32* %2, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4
  br label %10

120:                                              ; preds = %10
  ret void
}

declare dso_local i32 @kfree(%struct.ehea_top_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
