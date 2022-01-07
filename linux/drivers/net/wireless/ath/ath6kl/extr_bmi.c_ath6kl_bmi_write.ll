; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64*, i64 }

@BMI_WRITE_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ATH6KL_DBG_BMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"bmi write memory: addr: 0x%x, len: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to write to the device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_write(%struct.ath6kl* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [400 x i64], align 16
  %17 = alloca i64*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* @BMI_WRITE_MEMORY, align 8
  store i64 %18, i64* %10, align 8
  store i64 24, i64* %15, align 8
  %19 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %173

30:                                               ; preds = %4
  %31 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %32 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 24
  %36 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %37 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = call i64 @WARN_ON(i32 1)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %173

45:                                               ; preds = %30
  %46 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %47 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %49, 3200
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @E2BIG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %173

57:                                               ; preds = %45
  %58 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %63 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 24
  %67 = call i32 @memset(i64* %61, i32 0, i64 %66)
  %68 = load i32, i32* @ATH6KL_DBG_BMI, align 4
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @ath6kl_dbg(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %165, %57
  %74 = load i64, i64* %13, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %172

76:                                               ; preds = %73
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %13, align 8
  %80 = sub nsw i64 %78, %79
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  store i64* %81, i64** %17, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %84 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 24
  %88 = icmp slt i64 %82, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %76
  %90 = load i64, i64* %13, align 8
  %91 = and i64 %90, 3
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = and i64 %95, 3
  %97 = sub nsw i64 4, %96
  %98 = add nsw i64 %94, %97
  store i64 %98, i64* %13, align 8
  %99 = getelementptr inbounds [400 x i64], [400 x i64]* %16, i64 0, i64 0
  %100 = load i64*, i64** %17, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @memcpy(i64* %99, i64* %100, i64 %101)
  %103 = getelementptr inbounds [400 x i64], [400 x i64]* %16, i64 0, i64 0
  store i64* %103, i64** %17, align 8
  br label %104

104:                                              ; preds = %93, %89
  %105 = load i64, i64* %13, align 8
  store i64 %105, i64* %14, align 8
  br label %112

106:                                              ; preds = %76
  %107 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %108 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 24
  store i64 %111, i64* %14, align 8
  br label %112

112:                                              ; preds = %106, %104
  store i64 0, i64* %12, align 8
  %113 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %114 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = call i32 @memcpy(i64* %118, i64* %10, i64 8)
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 8
  store i64 %121, i64* %12, align 8
  %122 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %123 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = call i32 @memcpy(i64* %127, i64* %7, i64 8)
  %129 = load i64, i64* %12, align 8
  %130 = add i64 %129, 8
  store i64 %130, i64* %12, align 8
  %131 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %132 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = call i32 @memcpy(i64* %136, i64* %14, i64 8)
  %138 = load i64, i64* %12, align 8
  %139 = add i64 %138, 8
  store i64 %139, i64* %12, align 8
  %140 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %141 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64*, i64** %17, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @memcpy(i64* %145, i64* %146, i64 %147)
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %12, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %12, align 8
  %152 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %153 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %154 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @ath6kl_hif_bmi_write(%struct.ath6kl* %152, i64* %156, i64 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %112
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %5, align 4
  br label %173

165:                                              ; preds = %112
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* %13, align 8
  %168 = sub nsw i64 %167, %166
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %7, align 8
  %171 = add nsw i64 %170, %169
  store i64 %171, i64* %7, align 8
  br label %73

172:                                              ; preds = %73
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %172, %161, %54, %41, %24
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @ath6kl_hif_bmi_write(%struct.ath6kl*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
