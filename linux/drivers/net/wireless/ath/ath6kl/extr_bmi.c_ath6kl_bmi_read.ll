; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64*, i64 }

@BMI_READ_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_BMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"bmi read memory: device: addr: 0x%x, len: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to write to the device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to read from the device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_read(%struct.ath6kl* %0, i64 %1, i64* %2, i64 %3) #0 {
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
  store %struct.ath6kl* %0, %struct.ath6kl** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @BMI_READ_MEMORY, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %18 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %150

28:                                               ; preds = %4
  %29 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 8
  %34 = add i64 %33, 8
  %35 = add i64 %34, 8
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %38 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = call i32 @WARN_ON(i32 1)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %150

46:                                               ; preds = %28
  %47 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %48 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @memset(i64* %50, i32 0, i64 %51)
  %53 = load i32, i32* @ATH6KL_DBG_BMI, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @ath6kl_dbg(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %55)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %131, %46
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %149

61:                                               ; preds = %58
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %64 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i64, i64* %13, align 8
  br label %75

70:                                               ; preds = %61
  %71 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %72 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %70, %68
  %76 = phi i64 [ %69, %68 ], [ %74, %70 ]
  store i64 %76, i64* %14, align 8
  store i64 0, i64* %12, align 8
  %77 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %78 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = call i32 @memcpy(i64* %82, i64* %10, i64 8)
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 8
  store i64 %85, i64* %12, align 8
  %86 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %87 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = call i32 @memcpy(i64* %91, i64* %7, i64 8)
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 8
  store i64 %94, i64* %12, align 8
  %95 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %96 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = call i32 @memcpy(i64* %100, i64* %14, i64 8)
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 8
  store i64 %103, i64* %12, align 8
  %104 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %105 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %106 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @ath6kl_hif_bmi_write(%struct.ath6kl* %104, i64* %108, i64 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %75
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  br label %150

117:                                              ; preds = %75
  %118 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %119 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %120 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @ath6kl_hif_bmi_read(%struct.ath6kl* %118, i64* %122, i64 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @ath6kl_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %150

131:                                              ; preds = %117
  %132 = load i64*, i64** %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %13, align 8
  %135 = sub nsw i64 %133, %134
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %138 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = call i32 @memcpy(i64* %136, i64* %140, i64 %141)
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* %13, align 8
  %145 = sub nsw i64 %144, %143
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %7, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %7, align 8
  br label %58

149:                                              ; preds = %58
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %127, %113, %42, %22
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @ath6kl_hif_bmi_write(%struct.ath6kl*, i64*, i64) #1

declare dso_local i32 @ath6kl_hif_bmi_read(%struct.ath6kl*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
