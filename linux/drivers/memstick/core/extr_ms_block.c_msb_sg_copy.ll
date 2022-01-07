; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_sg_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_sg_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scatterlist*, %struct.scatterlist*, i32, i64, i64)* @msb_sg_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msb_sg_copy(%struct.scatterlist* %0, %struct.scatterlist* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %63, %27, %5
  %14 = load i64, i64* %10, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %13
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %24 = call i64 @sg_is_last(%struct.scatterlist* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %139

27:                                               ; preds = %22
  %28 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %10, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %33)
  store %struct.scatterlist* %34, %struct.scatterlist** %7, align 8
  br label %13

35:                                               ; preds = %16
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %38 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %39, %40
  %42 = call i64 @min(i64 %36, i64 %41)
  store i64 %42, i64* %12, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %45 = call i32 @sg_page(%struct.scatterlist* %44)
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @sg_set_page(%struct.scatterlist* %43, i32 %45, i64 %46, i64 %51)
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %57 = call i64 @sg_is_last(%struct.scatterlist* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %35
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59, %35
  br label %135

63:                                               ; preds = %59
  %64 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %65 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %64)
  store %struct.scatterlist* %65, %struct.scatterlist** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  %68 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %69 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %68)
  store %struct.scatterlist* %69, %struct.scatterlist** %7, align 8
  br label %13

70:                                               ; preds = %13
  br label %71

71:                                               ; preds = %111, %70
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %74 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  %80 = icmp ne i32 %78, 0
  br label %81

81:                                               ; preds = %77, %71
  %82 = phi i1 [ false, %71 ], [ %80, %77 ]
  br i1 %82, label %83, label %116

83:                                               ; preds = %81
  %84 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %85 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %11, align 8
  %89 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %12, align 8
  %94 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %95 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %96 = call i32 @sg_page(%struct.scatterlist* %95)
  %97 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %98 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %101 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @sg_set_page(%struct.scatterlist* %94, i32 %96, i64 %99, i64 %102)
  %104 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %105 = call i64 @sg_is_last(%struct.scatterlist* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %83
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107, %83
  br label %135

111:                                              ; preds = %107
  %112 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %113 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %112)
  store %struct.scatterlist* %113, %struct.scatterlist** %7, align 8
  %114 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %115 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %114)
  store %struct.scatterlist* %115, %struct.scatterlist** %8, align 8
  br label %71

116:                                              ; preds = %81
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %124 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %125 = call i32 @sg_page(%struct.scatterlist* %124)
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %128 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @sg_set_page(%struct.scatterlist* %123, i32 %125, i64 %126, i64 %129)
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %12, align 8
  br label %134

134:                                              ; preds = %122, %119, %116
  br label %135

135:                                              ; preds = %134, %110, %62
  %136 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %137 = call i32 @sg_mark_end(%struct.scatterlist* %136)
  %138 = load i64, i64* %12, align 8
  store i64 %138, i64* %6, align 8
  br label %139

139:                                              ; preds = %135, %26
  %140 = load i64, i64* %6, align 8
  ret i64 %140
}

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i64) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
