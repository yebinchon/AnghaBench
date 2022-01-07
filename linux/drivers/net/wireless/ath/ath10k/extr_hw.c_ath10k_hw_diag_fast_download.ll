; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_diag_fast_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_diag_fast_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.bmi_segmented_file_header = type { i64, i64, i32 }
%struct.bmi_segmented_metadata = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BMI_SGMTFILE_MAGIC_NUM = common dso_local global i64 0, align 8
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Not a supported firmware, magic_num:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Not a supported firmware, file_flags:0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"firmware segment is truncated: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"firmware has unsupported segment:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"firmware has invalid segment length, %d > %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"failed to download firmware via diag interface:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"boot firmware fast diag download successfully.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_hw_diag_fast_download(%struct.ath10k* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bmi_segmented_file_header*, align 8
  %16 = alloca %struct.bmi_segmented_metadata*, align 8
  %17 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 24
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %159

26:                                               ; preds = %4
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast i32* %27 to %struct.bmi_segmented_file_header*
  store %struct.bmi_segmented_file_header* %28, %struct.bmi_segmented_file_header** %15, align 8
  %29 = load %struct.bmi_segmented_file_header*, %struct.bmi_segmented_file_header** %15, align 8
  %30 = getelementptr inbounds %struct.bmi_segmented_file_header, %struct.bmi_segmented_file_header* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @__le32_to_cpu(i32 %31)
  %33 = load i64, i64* @BMI_SGMTFILE_MAGIC_NUM, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %37 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %38 = load %struct.bmi_segmented_file_header*, %struct.bmi_segmented_file_header** %15, align 8
  %39 = getelementptr inbounds %struct.bmi_segmented_file_header, %struct.bmi_segmented_file_header* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %36, i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %159

44:                                               ; preds = %26
  %45 = load %struct.bmi_segmented_file_header*, %struct.bmi_segmented_file_header** %15, align 8
  %46 = getelementptr inbounds %struct.bmi_segmented_file_header, %struct.bmi_segmented_file_header* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %51 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %52 = load %struct.bmi_segmented_file_header*, %struct.bmi_segmented_file_header** %15, align 8
  %53 = getelementptr inbounds %struct.bmi_segmented_file_header, %struct.bmi_segmented_file_header* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %50, i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %159

58:                                               ; preds = %44
  %59 = load %struct.bmi_segmented_file_header*, %struct.bmi_segmented_file_header** %15, align 8
  %60 = getelementptr inbounds %struct.bmi_segmented_file_header, %struct.bmi_segmented_file_header* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.bmi_segmented_metadata*
  store %struct.bmi_segmented_metadata* %62, %struct.bmi_segmented_metadata** %16, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 24
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %141, %58
  %68 = load i32, i32* %14, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %150

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 16
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %17, align 4
  br label %150

80:                                               ; preds = %70
  %81 = load %struct.bmi_segmented_metadata*, %struct.bmi_segmented_metadata** %16, align 8
  %82 = getelementptr inbounds %struct.bmi_segmented_metadata, %struct.bmi_segmented_metadata* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @__le32_to_cpu(i32 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load %struct.bmi_segmented_metadata*, %struct.bmi_segmented_metadata** %16, align 8
  %87 = getelementptr inbounds %struct.bmi_segmented_metadata, %struct.bmi_segmented_metadata* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @__le32_to_cpu(i32 %88)
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load %struct.bmi_segmented_metadata*, %struct.bmi_segmented_metadata** %16, align 8
  %92 = getelementptr inbounds %struct.bmi_segmented_metadata, %struct.bmi_segmented_metadata* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %10, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %95, 16
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  switch i32 %98, label %110 [
    i32 130, label %99
    i32 129, label %103
    i32 131, label %104
    i32 128, label %104
  ]

99:                                               ; preds = %80
  %100 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @ath10k_bmi_set_start(%struct.ath10k* %100, i32 %101)
  store i32 %102, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %134

103:                                              ; preds = %80
  store i32 0, i32* %13, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %134

104:                                              ; preds = %80, %80
  %105 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %17, align 4
  br label %134

110:                                              ; preds = %80
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %17, align 4
  br label %134

121:                                              ; preds = %110
  %122 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @ath10k_hw_diag_segment_download(%struct.ath10k* %122, i32* %123, i32 %124, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %131 = load i32, i32* %17, align 4
  %132 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %130, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %121
  br label %134

134:                                              ; preds = %133, %114, %104, %103, %99
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %134
  br label %150

141:                                              ; preds = %137
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = bitcast i32* %145 to %struct.bmi_segmented_metadata*
  store %struct.bmi_segmented_metadata* %146, %struct.bmi_segmented_metadata** %16, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %14, align 4
  br label %67

150:                                              ; preds = %140, %74, %67
  %151 = load i32, i32* %17, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %155 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %156 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %154, i32 %155, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* %17, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %49, %35, %23
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i64 @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_bmi_set_start(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_hw_diag_segment_download(%struct.ath10k*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
