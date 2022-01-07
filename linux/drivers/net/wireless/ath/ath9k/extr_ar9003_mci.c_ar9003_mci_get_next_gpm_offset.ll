; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_next_gpm_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_get_next_gpm_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32 }

@AR_MCI_INTERRUPT_RX_MSG_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_GPM = common dso_local global i32 0, align 4
@AR_MCI_GPM_1 = common dso_local global i32 0, align 4
@AR_MCI_GPM_WRITE_PTR = common dso_local global i32 0, align 4
@MCI_GPM_INVALID = common dso_local global i32 0, align 4
@MCI_GPM_NOMORE = common dso_local global i32 0, align 4
@MCI_GPM_MORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ath9k_hw_mci* %12, %struct.ath9k_hw_mci** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %15 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_GPM, align 4
  %16 = call i32 @REG_WRITE(%struct.ath_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* @AR_MCI_GPM_1, align 4
  %19 = call i32 @REG_READ(%struct.ath_hw* %17, i32 %18)
  %20 = load i32, i32* @AR_MCI_GPM_WRITE_PTR, align 4
  %21 = call i32 @MS(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %27 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %45

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %33 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 65535
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 65535
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %51 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %45
  %55 = load i32, i32* @MCI_GPM_INVALID, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @MCI_GPM_NOMORE, align 4
  store i32 %56, i32* %7, align 4
  br label %115

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %106, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %61 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @MCI_GPM_MORE, align 4
  store i32 %65, i32* %7, align 4
  br label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @MCI_GPM_NOMORE, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %70 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %74 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %80 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %84 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %87 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %92 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %78
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @ar9003_mci_is_gpm_valid(%struct.ath_hw* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %6, align 4
  br label %107

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @MCI_GPM_NOMORE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @MCI_GPM_INVALID, align 4
  store i32 %105, i32* %6, align 4
  br label %107

106:                                              ; preds = %100
  br label %58

107:                                              ; preds = %104, %98
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @MCI_GPM_INVALID, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 %112, 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %107
  br label %115

115:                                              ; preds = %114, %54
  %116 = load i32*, i32** %4, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** %4, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @ar9003_mci_is_gpm_valid(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
