; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_push_board_ext_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_push_board_ext_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@hi_board_ext_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not read board ext data addr (%d)\0A\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"boot push board extended data addr 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"invalid board (ext) data sizes %zu != %d+%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"could not write board ext data (%d)\0A\00", align 1
@hi_board_ext_data_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"could not write board ext data bit (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i64)* @ath10k_push_board_ext_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_push_board_ext_data(%struct.ath10k* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = load i32, i32* @hi_board_ext_data, align 4
  %24 = call i32 @ath10k_bmi_read32(%struct.ath10k* %22, i32 %23, i64* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %85

32:                                               ; preds = %3
  %33 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %34 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @ath10k_dbg(%struct.ath10k* %33, i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %85

40:                                               ; preds = %32
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %42, %43
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %49, i64 %50, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %85

55:                                               ; preds = %40
  %56 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr i8, i8* %58, i64 %59
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @ath10k_bmi_write_memory(%struct.ath10k* %56, i64 %57, i8* %60, i64 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %55
  %71 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %72 = load i32, i32* @hi_board_ext_data_config, align 4
  %73 = load i64, i64* %9, align 8
  %74 = shl i64 %73, 16
  %75 = or i64 %74, 1
  %76 = call i32 @ath10k_bmi_write32(%struct.ath10k* %71, i32 %72, i64 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %79, %65, %46, %39, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ath10k_bmi_read32(%struct.ath10k*, i32, i64*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64) #1

declare dso_local i32 @ath10k_bmi_write_memory(%struct.ath10k*, i64, i8*, i64) #1

declare dso_local i32 @ath10k_bmi_write32(%struct.ath10k*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
