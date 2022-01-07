; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_diag_segment_msb_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_diag_segment_msb_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@REGION_ACCESS_SIZE_MASK = common dso_local global i64 0, align 8
@REGION_ACCESS_SIZE_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"failed to download the first %d bytes segment to address:0x%x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"failed to download the second %d bytes segment to address:0x%x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"failed to download the only %d bytes segment to address:0x%x: %d\0A\00", align 1
@DRAM_BASE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i64, i64)* @ath10k_hw_diag_segment_msb_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_hw_diag_segment_msb_download(%struct.ath10k* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @REGION_ACCESS_SIZE_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @CPU_ADDR_MSB_REGION_VAL(i64 %18)
  %20 = call i32 @ath10k_hw_map_target_mem(%struct.ath10k* %17, i64 %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @REGION_ACCESS_SIZE_LIMIT, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %4
  %27 = load i64, i64* @REGION_ACCESS_SIZE_LIMIT, align 8
  %28 = load i64, i64* %9, align 8
  %29 = sub nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 @ath10k_hif_diag_write(%struct.ath10k* %36, i64 %37, i8* %38, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %26
  %45 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ath10k_warn(%struct.ath10k* %45, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %48, i32 %49)
  br label %99

51:                                               ; preds = %26
  %52 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @CPU_ADDR_MSB_REGION_VAL(i64 %53)
  %55 = add nsw i64 %54, 1
  %56 = call i32 @ath10k_hw_map_target_mem(%struct.ath10k* %52, i64 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  store i8* %60, i8** %13, align 8
  %61 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @REGION_ACCESS_SIZE_MASK, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 @ath10k_hif_diag_write(%struct.ath10k* %61, i64 %65, i8* %66, i64 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %51
  %73 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @REGION_ACCESS_SIZE_MASK, align 8
  %78 = xor i64 %77, -1
  %79 = and i64 %76, %78
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ath10k_warn(%struct.ath10k* %73, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %75, i64 %79, i32 %80)
  br label %99

82:                                               ; preds = %51
  br label %98

83:                                               ; preds = %4
  %84 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @ath10k_hif_diag_write(%struct.ath10k* %84, i64 %85, i8* %86, i64 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @ath10k_warn(%struct.ath10k* %92, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %94, i32 %95)
  br label %99

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %82
  br label %99

99:                                               ; preds = %98, %91, %72, %44
  %100 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %101 = load i64, i64* @DRAM_BASE_ADDRESS, align 8
  %102 = call i64 @CPU_ADDR_MSB_REGION_VAL(i64 %101)
  %103 = call i32 @ath10k_hw_map_target_mem(%struct.ath10k* %100, i64 %102)
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i32 @ath10k_hw_map_target_mem(%struct.ath10k*, i64) #1

declare dso_local i64 @CPU_ADDR_MSB_REGION_VAL(i64) #1

declare dso_local i32 @ath10k_hif_diag_write(%struct.ath10k*, i64, i8*, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
