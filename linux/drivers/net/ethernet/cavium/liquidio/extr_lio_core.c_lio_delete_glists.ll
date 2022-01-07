; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_delete_glists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_delete_glists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i32, i32, i64*, i64*, i64*, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32 }
%struct.octnic_gather = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_delete_glists(%struct.lio* %0) #0 {
  %2 = alloca %struct.lio*, align 8
  %3 = alloca %struct.octnic_gather*, align 8
  %4 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %2, align 8
  %5 = load %struct.lio*, %struct.lio** %2, align 8
  %6 = getelementptr inbounds %struct.lio, %struct.lio* %5, i32 0, i32 6
  %7 = load i64*, i64** %6, align 8
  %8 = call i32 @kfree(i64* %7)
  %9 = load %struct.lio*, %struct.lio** %2, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 6
  store i64* null, i64** %10, align 8
  %11 = load %struct.lio*, %struct.lio** %2, align 8
  %12 = getelementptr inbounds %struct.lio, %struct.lio* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %118

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %96, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.lio*, %struct.lio** %2, align 8
  %20 = getelementptr inbounds %struct.lio, %struct.lio* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %99

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %38, %25
  %27 = load %struct.lio*, %struct.lio** %2, align 8
  %28 = getelementptr inbounds %struct.lio, %struct.lio* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = call i64 @lio_list_delete_head(i64* %32)
  %34 = inttoptr i64 %33 to %struct.octnic_gather*
  store %struct.octnic_gather* %34, %struct.octnic_gather** %3, align 8
  %35 = load %struct.octnic_gather*, %struct.octnic_gather** %3, align 8
  %36 = bitcast %struct.octnic_gather* %35 to i64*
  %37 = call i32 @kfree(i64* %36)
  br label %38

38:                                               ; preds = %26
  %39 = load %struct.octnic_gather*, %struct.octnic_gather** %3, align 8
  %40 = icmp ne %struct.octnic_gather* %39, null
  br i1 %40, label %26, label %41

41:                                               ; preds = %38
  %42 = load %struct.lio*, %struct.lio** %2, align 8
  %43 = getelementptr inbounds %struct.lio, %struct.lio* %42, i32 0, i32 4
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %95

46:                                               ; preds = %41
  %47 = load %struct.lio*, %struct.lio** %2, align 8
  %48 = getelementptr inbounds %struct.lio, %struct.lio* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %46
  %56 = load %struct.lio*, %struct.lio** %2, align 8
  %57 = getelementptr inbounds %struct.lio, %struct.lio* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  %61 = load %struct.lio*, %struct.lio** %2, align 8
  %62 = getelementptr inbounds %struct.lio, %struct.lio* %61, i32 0, i32 3
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %60
  %70 = load %struct.lio*, %struct.lio** %2, align 8
  %71 = getelementptr inbounds %struct.lio, %struct.lio* %70, i32 0, i32 5
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load %struct.lio*, %struct.lio** %2, align 8
  %74 = getelementptr inbounds %struct.lio, %struct.lio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.lio*, %struct.lio** %2, align 8
  %77 = getelementptr inbounds %struct.lio, %struct.lio* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load %struct.lio*, %struct.lio** %2, align 8
  %81 = getelementptr inbounds %struct.lio, %struct.lio* %80, i32 0, i32 4
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.lio*, %struct.lio** %2, align 8
  %88 = getelementptr inbounds %struct.lio, %struct.lio* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @lio_dma_free(%struct.TYPE_2__* %72, i32 %79, i64 %86, i64 %93)
  br label %95

95:                                               ; preds = %69, %60, %55, %46, %41
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %17

99:                                               ; preds = %17
  %100 = load %struct.lio*, %struct.lio** %2, align 8
  %101 = getelementptr inbounds %struct.lio, %struct.lio* %100, i32 0, i32 4
  %102 = load i64*, i64** %101, align 8
  %103 = call i32 @kfree(i64* %102)
  %104 = load %struct.lio*, %struct.lio** %2, align 8
  %105 = getelementptr inbounds %struct.lio, %struct.lio* %104, i32 0, i32 4
  store i64* null, i64** %105, align 8
  %106 = load %struct.lio*, %struct.lio** %2, align 8
  %107 = getelementptr inbounds %struct.lio, %struct.lio* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  %109 = call i32 @kfree(i64* %108)
  %110 = load %struct.lio*, %struct.lio** %2, align 8
  %111 = getelementptr inbounds %struct.lio, %struct.lio* %110, i32 0, i32 3
  store i64* null, i64** %111, align 8
  %112 = load %struct.lio*, %struct.lio** %2, align 8
  %113 = getelementptr inbounds %struct.lio, %struct.lio* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = call i32 @kfree(i64* %114)
  %116 = load %struct.lio*, %struct.lio** %2, align 8
  %117 = getelementptr inbounds %struct.lio, %struct.lio* %116, i32 0, i32 2
  store i64* null, i64** %117, align 8
  br label %118

118:                                              ; preds = %99, %15
  ret void
}

declare dso_local i32 @kfree(i64*) #1

declare dso_local i64 @lio_list_delete_head(i64*) #1

declare dso_local i32 @lio_dma_free(%struct.TYPE_2__*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
