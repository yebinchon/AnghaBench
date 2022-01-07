; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_board_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_board_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i64, %struct.TYPE_4__, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@hi_board_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to get board file target address.\0A\00", align 1
@hi_board_ext_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to get extended board file target address.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR6003_BOARD_DATA_SZ = common dso_local global i64 0, align 8
@AR6003_BOARD_EXT_DATA_SZ = common dso_local global i64 0, align 8
@AR6003_BOARD_EXT_DATA_SZ_V2 = common dso_local global i64 0, align 8
@AR6004_BOARD_DATA_SZ = common dso_local global i64 0, align 8
@AR6004_BOARD_EXT_DATA_SZ = common dso_local global i64 0, align 8
@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"writing extended board data to 0x%x (%d B)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to write extended board data: %d\0A\00", align 1
@hi_board_ext_data_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Too small board file: %zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"writing board file to 0x%x (%d B)\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Board file bmi write failed: %d\0A\00", align 1
@AR6004_HW_1_3_VERSION = common dso_local global i64 0, align 8
@AR6004_HW_3_0_VERSION = common dso_local global i64 0, align 8
@hi_board_data_initialized = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_upload_board_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_upload_board_file(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %10 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %11 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %184

20:                                               ; preds = %1
  %21 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  %31 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %32 = load i32, i32* @hi_board_data, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %31, i32 %32, i64 %33)
  br label %45

35:                                               ; preds = %20
  %36 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %37 = load i32, i32* @hi_board_data, align 4
  %38 = call i32 @ath6kl_bmi_read_hi32(%struct.ath6kl* %36, i32 %37, i64* %4)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %2, align 4
  br label %184

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %47 = load i32, i32* @hi_board_ext_data, align 4
  %48 = call i32 @ath6kl_bmi_read_hi32(%struct.ath6kl* %46, i32 %47, i64* %5)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %184

54:                                               ; preds = %45
  %55 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %184

66:                                               ; preds = %59, %54
  %67 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %68 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %86 [
    i32 129, label %70
    i32 128, label %83
  ]

70:                                               ; preds = %66
  %71 = load i64, i64* @AR6003_BOARD_DATA_SZ, align 8
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* @AR6003_BOARD_EXT_DATA_SZ, align 8
  store i64 %72, i64* %8, align 8
  %73 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %74 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %76, %77
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i64, i64* @AR6003_BOARD_EXT_DATA_SZ_V2, align 8
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %80, %70
  br label %90

83:                                               ; preds = %66
  %84 = load i64, i64* @AR6004_BOARD_DATA_SZ, align 8
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* @AR6004_BOARD_EXT_DATA_SZ, align 8
  store i64 %85, i64* %8, align 8
  br label %90

86:                                               ; preds = %66
  %87 = call i64 @WARN_ON(i32 1)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %184

90:                                               ; preds = %83, %82
  %91 = load i64, i64* %5, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %90
  %94 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %95 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %97, %98
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %93
  %102 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @ath6kl_dbg(i32 %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %104)
  %106 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %109 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @ath6kl_bmi_write(%struct.ath6kl* %106, i64 %107, i32* %112, i64 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %101
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %184

121:                                              ; preds = %101
  %122 = load i64, i64* %8, align 8
  %123 = shl i64 %122, 16
  %124 = or i64 %123, 1
  store i64 %124, i64* %6, align 8
  %125 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %126 = load i32, i32* @hi_board_ext_data_config, align 4
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %125, i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %121, %93, %90
  %130 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %131 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %7, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %137 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %2, align 4
  br label %184

143:                                              ; preds = %129
  %144 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @ath6kl_dbg(i32 %144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %145, i64 %146)
  %148 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %149 = load i64, i64* %4, align 8
  %150 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %151 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @ath6kl_bmi_write(%struct.ath6kl* %148, i64 %149, i32* %152, i64 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %143
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %2, align 4
  br label %184

161:                                              ; preds = %143
  %162 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %163 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @AR6004_HW_1_3_VERSION, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %175, label %168

168:                                              ; preds = %161
  %169 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %170 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AR6004_HW_3_0_VERSION, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168, %161
  %176 = load i64, i64* %7, align 8
  store i64 %176, i64* %6, align 8
  br label %178

177:                                              ; preds = %168
  store i64 1, i64* %6, align 8
  br label %178

178:                                              ; preds = %177, %175
  %179 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %180 = load i32, i32* @hi_board_data_initialized, align 4
  %181 = load i64, i64* %6, align 8
  %182 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %179, i32 %180, i64 %181)
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %178, %157, %135, %117, %86, %62, %51, %41, %17
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath6kl_bmi_write_hi32(%struct.ath6kl*, i32, i64) #1

declare dso_local i32 @ath6kl_bmi_read_hi32(%struct.ath6kl*, i32, i64*) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @ath6kl_bmi_write(%struct.ath6kl*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
