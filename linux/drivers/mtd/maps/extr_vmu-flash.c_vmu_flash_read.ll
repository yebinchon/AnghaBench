; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_flash_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_flash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.mdev_part* }
%struct.mdev_part = type { i32, %struct.maple_device* }
%struct.maple_device = type { i32 }
%struct.memcard = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vmu_cache* }
%struct.vmu_cache = type { i64, i64, i64, i64 }
%struct.vmu_block = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @vmu_flash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmu_flash_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.maple_device*, align 8
  %13 = alloca %struct.memcard*, align 8
  %14 = alloca %struct.mdev_part*, align 8
  %15 = alloca %struct.vmu_cache*, align 8
  %16 = alloca %struct.vmu_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load %struct.mdev_part*, %struct.mdev_part** %24, align 8
  store %struct.mdev_part* %25, %struct.mdev_part** %14, align 8
  %26 = load %struct.mdev_part*, %struct.mdev_part** %14, align 8
  %27 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %26, i32 0, i32 1
  %28 = load %struct.maple_device*, %struct.maple_device** %27, align 8
  store %struct.maple_device* %28, %struct.maple_device** %12, align 8
  %29 = load %struct.mdev_part*, %struct.mdev_part** %14, align 8
  %30 = getelementptr inbounds %struct.mdev_part, %struct.mdev_part* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %19, align 4
  %32 = load %struct.maple_device*, %struct.maple_device** %12, align 8
  %33 = call %struct.memcard* @maple_get_drvdata(%struct.maple_device* %32)
  store %struct.memcard* %33, %struct.memcard** %13, align 8
  %34 = load %struct.memcard*, %struct.memcard** %13, align 8
  %35 = getelementptr inbounds %struct.memcard, %struct.memcard* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %19, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %21, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = load i32, i32* %21, align 4
  %46 = load %struct.memcard*, %struct.memcard** %13, align 8
  %47 = getelementptr inbounds %struct.memcard, %struct.memcard* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = icmp ugt i64 %44, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %5
  %53 = load i32, i32* %21, align 4
  %54 = load %struct.memcard*, %struct.memcard** %13, align 8
  %55 = getelementptr inbounds %struct.memcard, %struct.memcard* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %8, align 8
  %60 = sub i64 %58, %59
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %52, %5
  %62 = load i64, i64* %9, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %210

67:                                               ; preds = %61
  %68 = load %struct.memcard*, %struct.memcard** %13, align 8
  %69 = getelementptr inbounds %struct.memcard, %struct.memcard* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.vmu_cache*, %struct.vmu_cache** %74, align 8
  store %struct.vmu_cache* %75, %struct.vmu_cache** %15, align 8
  br label %76

76:                                               ; preds = %201, %67
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %82 = load i32, i32* %19, align 4
  %83 = call %struct.vmu_block* @ofs_to_block(i64 %80, %struct.mtd_info* %81, i32 %82)
  store %struct.vmu_block* %83, %struct.vmu_block** %16, align 8
  %84 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %85 = icmp ne %struct.vmu_block* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %210

89:                                               ; preds = %76
  %90 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %91 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %172

94:                                               ; preds = %89
  %95 = load i32, i32* @jiffies, align 4
  %96 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %97 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HZ, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i64 @time_before(i32 %95, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %172

103:                                              ; preds = %94
  %104 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %105 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %108 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %172

111:                                              ; preds = %103
  %112 = load %struct.memcard*, %struct.memcard** %13, align 8
  %113 = getelementptr inbounds %struct.memcard, %struct.memcard* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %117 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %115, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %20, align 4
  %121 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %122 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %123, %124
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %125, %127
  %129 = load %struct.memcard*, %struct.memcard** %13, align 8
  %130 = getelementptr inbounds %struct.memcard, %struct.memcard* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = icmp ult i64 %128, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %111
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %140 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %143 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %141, %144
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 %146, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memcpy(i32* %138, i64 %145, i32 %150)
  %152 = load i64, i64* %9, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %17, align 4
  br label %171

154:                                              ; preds = %111
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load %struct.vmu_cache*, %struct.vmu_cache** %15, align 8
  %160 = getelementptr inbounds %struct.vmu_cache, %struct.vmu_cache* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %163 = getelementptr inbounds %struct.vmu_block, %struct.vmu_block* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %161, %164
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @memcpy(i32* %158, i64 %165, i32 %166)
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %17, align 4
  br label %171

171:                                              ; preds = %154, %134
  br label %198

172:                                              ; preds = %103, %94, %89
  %173 = load i64, i64* %8, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %173, %175
  %177 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %178 = call zeroext i8 @vmu_flash_read_char(i64 %176, i32* %18, %struct.mtd_info* %177)
  store i8 %178, i8* %22, align 1
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %172
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64*, i64** %10, align 8
  store i64 %183, i64* %184, align 8
  %185 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %186 = call i32 @kfree(%struct.vmu_block* %185)
  %187 = load i8, i8* %22, align 1
  %188 = zext i8 %187 to i32
  store i32 %188, i32* %6, align 4
  br label %210

189:                                              ; preds = %172
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i8, i8* %22, align 1
  %195 = call i32 @memset(i32* %193, i8 zeroext %194, i32 1)
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %189, %171
  %199 = load %struct.vmu_block*, %struct.vmu_block** %16, align 8
  %200 = call i32 @kfree(%struct.vmu_block* %199)
  br label %201

201:                                              ; preds = %198
  %202 = load i64, i64* %9, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp ugt i64 %202, %204
  br i1 %205, label %76, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64*, i64** %10, align 8
  store i64 %208, i64* %209, align 8
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %206, %181, %86, %64
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local %struct.memcard* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local %struct.vmu_block* @ofs_to_block(i64, %struct.mtd_info*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local zeroext i8 @vmu_flash_read_char(i64, i32*, %struct.mtd_info*) #1

declare dso_local i32 @kfree(%struct.vmu_block*) #1

declare dso_local i32 @memset(i32*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
