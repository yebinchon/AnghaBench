; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_build_logical_block_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_build_logical_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssfdcr_record = type { i32, i64, i32, i16*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@OOB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SSFDC_RO: build_block_map() nblks=%d (%luK)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"SSFDC_RO: mtd read_oob() failed at %lu\0A\00", align 1
@MAX_LOGIC_BLK_PER_ZONE = common dso_local global i32 0, align 4
@MAX_PHYS_BLK_PER_ZONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"SSFDC_RO: build_block_map() phys_block=%d,logic_block_addr=%d, zone=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssfdcr_record*)* @build_logical_block_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_logical_block_map(%struct.ssfdcr_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssfdcr_record*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ssfdcr_record* %0, %struct.ssfdcr_record** %3, align 8
  %13 = load i32, i32* @OOB_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %18 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  store %struct.mtd_info* %20, %struct.mtd_info** %10, align 8
  %21 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %22 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %25 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %29 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %27, %30
  %32 = udiv i64 %31, 1024
  %33 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %32)
  %34 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %35 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %96, %1
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %41 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %99

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %48 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %46, %49
  store i64 %50, i64* %4, align 8
  %51 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @mtd_block_isbad(%struct.mtd_info* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %96

56:                                               ; preds = %44
  %57 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @read_raw_oob(%struct.mtd_info* %57, i64 %58, i32* %16)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i64, i64* %4, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %100

66:                                               ; preds = %56
  %67 = call i32 @get_logical_address(i32* %16)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @MAX_LOGIC_BLK_PER_ZONE, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @MAX_PHYS_BLK_PER_ZONE, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MAX_LOGIC_BLK_PER_ZONE, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = trunc i32 %83 to i16
  %85 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %86 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %85, i32 0, i32 3
  %87 = load i16*, i16** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %87, i64 %89
  store i16 %84, i16* %90, align 2
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %74, %70, %66
  br label %96

96:                                               ; preds = %95, %55
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %38

99:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %62
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #2

declare dso_local i64 @mtd_block_isbad(%struct.mtd_info*, i64) #2

declare dso_local i32 @read_raw_oob(%struct.mtd_info*, i64, i32*) #2

declare dso_local i32 @get_logical_address(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
