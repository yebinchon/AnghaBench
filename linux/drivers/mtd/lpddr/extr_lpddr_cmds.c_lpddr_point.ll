; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { i64, %struct.lpddr_private* }
%struct.lpddr_private = type { i32, i32, %struct.flchip* }
%struct.flchip = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FL_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i8**, i32*)* @lpddr_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_point(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.map_info*, align 8
  %15 = alloca %struct.lpddr_private*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.flchip*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load %struct.map_info*, %struct.map_info** %23, align 8
  store %struct.map_info* %24, %struct.map_info** %14, align 8
  %25 = load %struct.map_info*, %struct.map_info** %14, align 8
  %26 = getelementptr inbounds %struct.map_info, %struct.map_info* %25, i32 0, i32 1
  %27 = load %struct.lpddr_private*, %struct.lpddr_private** %26, align 8
  store %struct.lpddr_private* %27, %struct.lpddr_private** %15, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %30 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %16, align 4
  store i64 0, i64* %18, align 8
  %33 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %34 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %33, i32 0, i32 2
  %35 = load %struct.flchip*, %struct.flchip** %34, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.flchip, %struct.flchip* %35, i64 %37
  store %struct.flchip* %38, %struct.flchip** %19, align 8
  store i32 0, i32* %20, align 4
  %39 = load %struct.map_info*, %struct.map_info** %14, align 8
  %40 = getelementptr inbounds %struct.map_info, %struct.map_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %6
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %157

46:                                               ; preds = %6
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %50 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %48, %51
  %53 = sub nsw i32 %47, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %17, align 8
  %55 = load %struct.map_info*, %struct.map_info** %14, align 8
  %56 = getelementptr inbounds %struct.map_info, %struct.map_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.flchip*, %struct.flchip** %19, align 8
  %60 = getelementptr inbounds %struct.flchip, %struct.flchip* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr i8, i8* %58, i64 %61
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = load i8**, i8*** %12, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %126, %46
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %156

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %72 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %156

76:                                               ; preds = %69
  %77 = load i64, i64* %18, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load %struct.flchip*, %struct.flchip** %19, align 8
  %81 = getelementptr inbounds %struct.flchip, %struct.flchip* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %18, align 8
  br label %91

83:                                               ; preds = %76
  %84 = load %struct.flchip*, %struct.flchip** %19, align 8
  %85 = getelementptr inbounds %struct.flchip, %struct.flchip* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %156

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %17, align 8
  %94 = add i64 %92, %93
  %95 = sub i64 %94, 1
  %96 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %97 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = zext i32 %98 to i64
  %100 = lshr i64 %95, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %91
  %103 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %104 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %17, align 8
  %109 = sub i64 %107, %108
  store i64 %109, i64* %21, align 8
  br label %112

110:                                              ; preds = %91
  %111 = load i64, i64* %10, align 8
  store i64 %111, i64* %21, align 8
  br label %112

112:                                              ; preds = %110, %102
  %113 = load %struct.flchip*, %struct.flchip** %19, align 8
  %114 = getelementptr inbounds %struct.flchip, %struct.flchip* %113, i32 0, i32 3
  %115 = call i32 @mutex_lock(i32* %114)
  %116 = load %struct.map_info*, %struct.map_info** %14, align 8
  %117 = load %struct.flchip*, %struct.flchip** %19, align 8
  %118 = load i32, i32* @FL_POINT, align 4
  %119 = call i32 @get_chip(%struct.map_info* %116, %struct.flchip* %117, i32 %118)
  store i32 %119, i32* %20, align 4
  %120 = load %struct.flchip*, %struct.flchip** %19, align 8
  %121 = getelementptr inbounds %struct.flchip, %struct.flchip* %120, i32 0, i32 3
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %20, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %156

126:                                              ; preds = %112
  %127 = load i32, i32* @FL_POINT, align 4
  %128 = load %struct.flchip*, %struct.flchip** %19, align 8
  %129 = getelementptr inbounds %struct.flchip, %struct.flchip* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.flchip*, %struct.flchip** %19, align 8
  %131 = getelementptr inbounds %struct.flchip, %struct.flchip* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load i64, i64* %21, align 8
  %135 = load i64*, i64** %11, align 8
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %134
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %21, align 8
  %139 = load i64, i64* %10, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %10, align 8
  store i64 0, i64* %17, align 8
  %141 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %142 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %18, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %18, align 8
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  %150 = load %struct.lpddr_private*, %struct.lpddr_private** %15, align 8
  %151 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %150, i32 0, i32 2
  %152 = load %struct.flchip*, %struct.flchip** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.flchip, %struct.flchip* %152, i64 %154
  store %struct.flchip* %155, %struct.flchip** %19, align 8
  br label %66

156:                                              ; preds = %125, %89, %75, %66
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %156, %43
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_chip(%struct.map_info*, %struct.flchip*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
