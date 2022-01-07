; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.map_info* }
%struct.map_info = type { %struct.pcm_int_data* }
%struct.pcm_int_data = type { i32 }

@lpdd2_nvm_mutex = common dso_local global i32 0, align 4
@LPDDR2_NVM_SW_OVERWRITE = common dso_local global i32 0, align 4
@LPDDR2_NVM_BUF_OVERWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @lpddr2_nvm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr2_nvm_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.map_info*, align 8
  %12 = alloca %struct.pcm_int_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 1
  %22 = load %struct.map_info*, %struct.map_info** %21, align 8
  store %struct.map_info* %22, %struct.map_info** %11, align 8
  %23 = load %struct.map_info*, %struct.map_info** %11, align 8
  %24 = getelementptr inbounds %struct.map_info, %struct.map_info* %23, i32 0, i32 0
  %25 = load %struct.pcm_int_data*, %struct.pcm_int_data** %24, align 8
  store %struct.pcm_int_data* %25, %struct.pcm_int_data** %12, align 8
  %26 = load i32*, i32** %10, align 8
  store i32* %26, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %27 = call i32 @mutex_lock(i32* @lpdd2_nvm_mutex)
  %28 = load %struct.map_info*, %struct.map_info** %11, align 8
  %29 = call i32 @ow_enable(%struct.map_info* %28)
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %32

32:                                               ; preds = %130, %5
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %131

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @IS_ALIGNED(i64 %37, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %104, label %43

43:                                               ; preds = %36
  %44 = load i32*, i32** %18, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %17, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i64, i64* %15, align 8
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %17, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %17, align 8
  %58 = load %struct.pcm_int_data*, %struct.pcm_int_data** %12, align 8
  %59 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %81

62:                                               ; preds = %43
  %63 = load i32*, i32** %18, align 8
  %64 = load i64, i64* %15, align 8
  %65 = add i64 %64, 2
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %17, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %73, 3
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 24
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %17, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %17, align 8
  br label %81

81:                                               ; preds = %62, %43
  %82 = load %struct.map_info*, %struct.map_info** %11, align 8
  %83 = load i32, i32* @LPDDR2_NVM_SW_OVERWRITE, align 4
  %84 = load i64, i64* %17, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @lpddr2_nvm_do_op(%struct.map_info* %82, i32 %83, i32 %85, i64 %86, i64 0, i32* null)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %132

91:                                               ; preds = %81
  %92 = load %struct.pcm_int_data*, %struct.pcm_int_data** %12, align 8
  %93 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %13, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %13, align 8
  %98 = load %struct.pcm_int_data*, %struct.pcm_int_data** %12, align 8
  %99 = getelementptr inbounds %struct.pcm_int_data, %struct.pcm_int_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %15, align 8
  br label %130

104:                                              ; preds = %36
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %15, align 8
  %107 = sub i64 %105, %106
  %108 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %109 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @min(i64 %107, i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load %struct.map_info*, %struct.map_info** %11, align 8
  %113 = load i32, i32* @LPDDR2_NVM_BUF_OVERWRITE, align 4
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = load i64, i64* %15, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = call i32 @lpddr2_nvm_do_op(%struct.map_info* %112, i32 %113, i32 0, i64 %114, i64 %115, i32* %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %104
  br label %132

123:                                              ; preds = %104
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %13, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %15, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %15, align 8
  br label %130

130:                                              ; preds = %123, %91
  br label %32

131:                                              ; preds = %32
  br label %132

132:                                              ; preds = %131, %122, %90
  %133 = load i64, i64* %15, align 8
  %134 = load i64*, i64** %9, align 8
  store i64 %133, i64* %134, align 8
  %135 = load %struct.map_info*, %struct.map_info** %11, align 8
  %136 = call i32 @ow_disable(%struct.map_info* %135)
  %137 = call i32 @mutex_unlock(i32* @lpdd2_nvm_mutex)
  %138 = load i32, i32* %19, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ow_enable(%struct.map_info*) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @lpddr2_nvm_do_op(%struct.map_info*, i32, i32, i64, i64, i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ow_disable(%struct.map_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
