; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_cmd_utf_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_cmd_utf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32*, i64, i64, i32 }
%struct.nlattr = type { i32 }

@ATH10K_DBG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"testmode cmd utf start\0A\00", align 1
@ATH10K_STATE_UTF = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@ATH10K_STATE_OFF = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to fetch UTF firmware: %d\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to init utf code swap segment: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"testmode wmi version %d\0A\00", align 1
@ATH10K_FIRMWARE_MODE_UTF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to power up hif (testmode): %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to start core (testmode): %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"API 1\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"UTF firmware %s started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.nlattr**)* @ath10k_tm_cmd_utf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_tm_cmd_utf_start(%struct.ath10k* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %10 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %8, i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATH10K_STATE_UTF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EALREADY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %197

22:                                               ; preds = %2
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ATH10K_STATE_OFF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %197

31:                                               ; preds = %22
  %32 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EEXIST, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %197

45:                                               ; preds = %31
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = call i32 @ath10k_tm_fetch_firmware(%struct.ath10k* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ath10k_err(%struct.ath10k* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %197

54:                                               ; preds = %45
  %55 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %54
  %63 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %62
  %71 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %72 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %73 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @ath10k_swap_code_seg_init(%struct.ath10k* %71, %struct.TYPE_6__* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @ath10k_warn(%struct.ath10k* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %161

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %62, %54
  %85 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %86 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %85, i32 0, i32 3
  %87 = call i32 @spin_lock_bh(i32* %86)
  %88 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %89 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %92 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %91, i32 0, i32 3
  %93 = call i32 @spin_unlock_bh(i32* %92)
  %94 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %95 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %96 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %97 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %94, i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %104 = load i32, i32* @ATH10K_FIRMWARE_MODE_UTF, align 4
  %105 = call i32 @ath10k_hif_power_up(%struct.ath10k* %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %84
  %109 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ath10k_err(%struct.ath10k* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i64, i64* @ATH10K_STATE_OFF, align 8
  %113 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %114 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %161

115:                                              ; preds = %84
  %116 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %117 = load i32, i32* @ATH10K_FIRMWARE_MODE_UTF, align 4
  %118 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %119 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = call i32 @ath10k_core_start(%struct.ath10k* %116, i32 %117, %struct.TYPE_7__* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @ath10k_err(%struct.ath10k* %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = load i64, i64* @ATH10K_STATE_OFF, align 8
  %129 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %130 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %158

131:                                              ; preds = %115
  %132 = load i64, i64* @ATH10K_STATE_UTF, align 8
  %133 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %134 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %136 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @strlen(i8* %140)
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %131
  %144 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %145 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %6, align 8
  br label %151

150:                                              ; preds = %131
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %151

151:                                              ; preds = %150, %143
  %152 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @ath10k_info(%struct.ath10k* %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %153)
  %155 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %156 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %155, i32 0, i32 1
  %157 = call i32 @mutex_unlock(i32* %156)
  store i32 0, i32* %3, align 4
  br label %202

158:                                              ; preds = %124
  %159 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %160 = call i32 @ath10k_hif_power_down(%struct.ath10k* %159)
  br label %161

161:                                              ; preds = %158, %108, %79
  %162 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %163 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %161
  %170 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %171 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %179 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %180 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i32 @ath10k_swap_code_seg_release(%struct.ath10k* %178, %struct.TYPE_6__* %182)
  br label %184

184:                                              ; preds = %177, %169, %161
  %185 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %186 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @release_firmware(i32* %190)
  %192 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %193 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i32* null, i32** %196, align 8
  br label %197

197:                                              ; preds = %184, %50, %42, %28, %19
  %198 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %199 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %198, i32 0, i32 1
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %197, %151
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_tm_fetch_firmware(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_swap_code_seg_init(%struct.ath10k*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_hif_power_up(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_core_start(%struct.ath10k*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath10k_hif_power_down(%struct.ath10k*) #1

declare dso_local i32 @ath10k_swap_code_seg_release(%struct.ath10k*, %struct.TYPE_6__*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
