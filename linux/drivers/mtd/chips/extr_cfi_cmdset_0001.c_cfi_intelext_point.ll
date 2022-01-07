; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_intelext_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_intelext_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { i64, i8*, %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i8**, i64*)* @cfi_intelext_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_intelext_point(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.map_info*, align 8
  %15 = alloca %struct.cfi_private*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load %struct.map_info*, %struct.map_info** %22, align 8
  store %struct.map_info* %23, %struct.map_info** %14, align 8
  %24 = load %struct.map_info*, %struct.map_info** %14, align 8
  %25 = getelementptr inbounds %struct.map_info, %struct.map_info* %24, i32 0, i32 2
  %26 = load %struct.cfi_private*, %struct.cfi_private** %25, align 8
  store %struct.cfi_private* %26, %struct.cfi_private** %15, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.map_info*, %struct.map_info** %14, align 8
  %28 = getelementptr inbounds %struct.map_info, %struct.map_info* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %170

34:                                               ; preds = %6
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %37 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %35, %38
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %43 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %41, %44
  %46 = sub nsw i32 %40, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %16, align 8
  %48 = load %struct.map_info*, %struct.map_info** %14, align 8
  %49 = getelementptr inbounds %struct.map_info, %struct.map_info* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %52 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr i8, i8* %50, i64 %58
  %60 = load i64, i64* %16, align 8
  %61 = getelementptr i8, i8* %59, i64 %60
  %62 = load i8**, i8*** %12, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i64*, i64** %13, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %34
  %66 = load %struct.map_info*, %struct.map_info** %14, align 8
  %67 = getelementptr inbounds %struct.map_info, %struct.map_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %70 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %68, %76
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %77, %78
  %80 = load i64*, i64** %13, align 8
  store i64 %79, i64* %80, align 8
  br label %81

81:                                               ; preds = %65, %34
  br label %82

82:                                               ; preds = %152, %81
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %169

85:                                               ; preds = %82
  %86 = load i32, i32* %18, align 4
  %87 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %88 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %169

92:                                               ; preds = %85
  %93 = load i64, i64* %17, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %97 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %17, align 8
  br label %117

104:                                              ; preds = %92
  %105 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %106 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %17, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %169

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %95
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %16, align 8
  %120 = add i64 %118, %119
  %121 = sub i64 %120, 1
  %122 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %123 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = zext i32 %124 to i64
  %126 = lshr i64 %121, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %130 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 1, %131
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %16, align 8
  %135 = sub i64 %133, %134
  store i64 %135, i64* %20, align 8
  br label %138

136:                                              ; preds = %117
  %137 = load i64, i64* %10, align 8
  store i64 %137, i64* %20, align 8
  br label %138

138:                                              ; preds = %136, %128
  %139 = load %struct.map_info*, %struct.map_info** %14, align 8
  %140 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %141 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %20, align 8
  %148 = call i32 @do_point_onechip(%struct.map_info* %139, %struct.TYPE_2__* %145, i64 %146, i64 %147)
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  br label %169

152:                                              ; preds = %138
  %153 = load i64, i64* %20, align 8
  %154 = load i64*, i64** %11, align 8
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %153
  store i64 %156, i64* %154, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load i64, i64* %10, align 8
  %159 = sub i64 %158, %157
  store i64 %159, i64* %10, align 8
  store i64 0, i64* %16, align 8
  %160 = load %struct.cfi_private*, %struct.cfi_private** %15, align 8
  %161 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = shl i32 1, %162
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %17, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %17, align 8
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %82

169:                                              ; preds = %151, %115, %91, %82
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %169, %31
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local i32 @do_point_onechip(%struct.map_info*, %struct.TYPE_2__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
