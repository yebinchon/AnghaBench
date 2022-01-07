; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_create_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_paprd_create_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_hw_cal_data = type { i64**, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AR_PHY_CHAN_INFO_MEMORY = common dso_local global i32 0, align 4
@AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ = common dso_local global i32 0, align 4
@AR_PHY_CHAN_INFO_TAB_0 = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1 = common dso_local global i32 0, align 4
@AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_paprd_create_curve(%struct.ath_hw* %0, %struct.ath9k_hw_cal_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_hw_cal_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_hw_cal_data* %1, %struct.ath9k_hw_cal_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %6, align 8
  %17 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %8, align 8
  %22 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %6, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %22, i32 0, i32 0
  %24 = load i64**, i64*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64*, i64** %24, i64 %26
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %9, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %6, align 8
  %30 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = call i32 @memset(i64* %35, i32 0, i32 8)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64* @kmalloc_array(i32 96, i32 8, i32 %37)
  store i64* %38, i64** %14, align 8
  %39 = load i64*, i64** %14, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %120

44:                                               ; preds = %3
  %45 = load i64*, i64** %14, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64* %46, i64** %10, align 8
  %47 = load i64*, i64** %14, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 48
  store i64* %48, i64** %11, align 8
  %49 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %50 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY, align 4
  %51 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ, align 4
  %52 = call i32 @REG_CLR_BIT(%struct.ath_hw* %49, i32 %50, i32 %51)
  %53 = load i64, i64* @AR_PHY_CHAN_INFO_TAB_0, align 8
  store i64 %53, i64* %15, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %69, %44
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 48
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %59 = load i64, i64* %15, align 8
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = call i64 @REG_READ(%struct.ath_hw* %58, i64 %63)
  %65 = load i64*, i64** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %68, align 8
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %74 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY, align 4
  %75 = load i32, i32* @AR_PHY_CHAN_INFO_MEMORY_CHANINFOMEM_S2_READ, align 4
  %76 = call i32 @REG_SET_BIT(%struct.ath_hw* %73, i32 %74, i32 %75)
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %92, %72
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 48
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = shl i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = call i64 @REG_READ(%struct.ath_hw* %81, i64 %86)
  %88 = load i64*, i64** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 %87, i64* %91, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %77

95:                                               ; preds = %77
  %96 = load i64*, i64** %10, align 8
  %97 = load i64*, i64** %11, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @create_pa_curve(i64* %96, i64* %97, i64* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  store i32 -2, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %95
  %104 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %105 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i64 @ar9003_paprd_retrain_pa_in(%struct.ath_hw* %104, %struct.ath9k_hw_cal_data* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EINPROGRESS, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %109, %103
  %113 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %114 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1, align 4
  %115 = load i32, i32* @AR_PHY_PAPRD_TRAINER_STAT1_PAPRD_TRAIN_DONE, align 4
  %116 = call i32 @REG_CLR_BIT(%struct.ath_hw* %113, i32 %114, i32 %115)
  %117 = load i64*, i64** %14, align 8
  %118 = call i32 @kfree(i64* %117)
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %112, %41
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @create_pa_curve(i64*, i64*, i64*, i32*) #1

declare dso_local i64 @ar9003_paprd_retrain_pa_in(%struct.ath_hw*, %struct.ath9k_hw_cal_data*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
