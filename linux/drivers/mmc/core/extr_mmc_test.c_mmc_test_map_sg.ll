; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_mem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_mem*, i64, %struct.scatterlist*, i32, i32, i32, i32*, i32)* @mmc_test_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_map_sg(%struct.mmc_test_mem* %0, i64 %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_test_mem*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.scatterlist*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.mmc_test_mem* %0, %struct.mmc_test_mem** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %18, align 8
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %20, align 8
  %23 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @sg_init_table(%struct.scatterlist* %23, i32 %24)
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %29, %8
  %32 = load i32*, i32** %16, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %126, %31
  store i32 0, i32* %19, align 4
  br label %34

34:                                               ; preds = %116, %33
  %35 = load i32, i32* %19, align 4
  %36 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %10, align 8
  %37 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %119

40:                                               ; preds = %34
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %10, align 8
  %43 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %19, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 %41, %49
  store i64 %50, i64* %21, align 8
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %54, %56
  %58 = load i64, i64* %21, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %61, %63
  %65 = call i64 @ALIGN(i64 %64, i32 512)
  store i64 %65, i64* %21, align 8
  br label %66

66:                                               ; preds = %60, %53, %40
  %67 = load i64, i64* %21, align 8
  %68 = load i64, i64* %20, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %20, align 8
  store i64 %71, i64* %21, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i64, i64* %21, align 8
  %74 = load i32, i32* %15, align 4
  %75 = zext i32 %74 to i64
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %15, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %21, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %82 = icmp ne %struct.scatterlist* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %85 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %84)
  store %struct.scatterlist* %85, %struct.scatterlist** %18, align 8
  br label %88

86:                                               ; preds = %80
  %87 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %87, %struct.scatterlist** %18, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %90 = icmp ne %struct.scatterlist* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %141

94:                                               ; preds = %88
  %95 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %96 = load %struct.mmc_test_mem*, %struct.mmc_test_mem** %10, align 8
  %97 = getelementptr inbounds %struct.mmc_test_mem, %struct.mmc_test_mem* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %19, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %21, align 8
  %105 = call i32 @sg_set_page(%struct.scatterlist* %95, i32 %103, i64 %104, i32 0)
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %20, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %20, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load i64, i64* %20, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %94
  br label %119

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %19, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %34

119:                                              ; preds = %114, %34
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %20, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i1 [ false, %120 ], [ %125, %123 ]
  br i1 %127, label %33, label %128

128:                                              ; preds = %126
  %129 = load i64, i64* %20, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  br label %141

134:                                              ; preds = %128
  %135 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %136 = icmp ne %struct.scatterlist* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %139 = call i32 @sg_mark_end(%struct.scatterlist* %138)
  br label %140

140:                                              ; preds = %137, %134
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %140, %131, %91
  %142 = load i32, i32* %9, align 4
  ret i32 %142
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
