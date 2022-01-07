; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_check_gainf_readback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_check_gainf_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_rf_reg = type { i32 }
%struct.ath5k_hw = type { i64, %struct.TYPE_2__, i8*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AR5K_RF5111 = common dso_local global i64 0, align 8
@rf_regs_5111 = common dso_local global %struct.ath5k_rf_reg* null, align 8
@AR5K_RF_RFGAIN_STEP = common dso_local global i32 0, align 4
@AR5K_GAIN_DYN_ADJUST_HI_MARGIN = common dso_local global i32 0, align 4
@AR5K_GAIN_DYN_ADJUST_LO_MARGIN = common dso_local global i32 0, align 4
@rf_regs_5112 = common dso_local global %struct.ath5k_rf_reg* null, align 8
@AR5K_RF_MIXVGA_OVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_hw_rf_check_gainf_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf_check_gainf_readback(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_rf_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %139

13:                                               ; preds = %1
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AR5K_RF5111, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %13
  %20 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5111, align 8
  store %struct.ath5k_rf_reg* %20, %struct.ath5k_rf_reg** %4, align 8
  %21 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5111, align 8
  %22 = call i8* @ARRAY_SIZE(%struct.ath5k_rf_reg* %21)
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %26 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %4, align 8
  %27 = load i32, i32* @AR5K_RF_RFGAIN_STEP, align 4
  %28 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %25, %struct.ath5k_rf_reg* %26, i32 0, i32 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %29, align 16
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 63
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ 50, %32 ], [ %35, %33 ]
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 63
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32 [ 64, %41 ], [ %44, %42 ]
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 50
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 63
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @AR5K_GAIN_DYN_ADJUST_HI_MARGIN, align 4
  br label %59

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ -5, %58 ]
  %61 = sub nsw i32 %53, %60
  %62 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 63
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @AR5K_GAIN_DYN_ADJUST_LO_MARGIN, align 4
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = add nsw i32 %66, %73
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  br label %102

78:                                               ; preds = %13
  %79 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112, align 8
  store %struct.ath5k_rf_reg* %79, %struct.ath5k_rf_reg** %4, align 8
  %80 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112, align 8
  %81 = call i8* @ARRAY_SIZE(%struct.ath5k_rf_reg* %80)
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %83 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %85 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %4, align 8
  %86 = load i32, i32* @AR5K_RF_MIXVGA_OVR, align 4
  %87 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %84, %struct.ath5k_rf_reg* %85, i32 0, i32 %86, i32 0)
  store i32 %87, i32* %6, align 4
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %88, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %89, align 16
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %78
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 83, i32* %93, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 83, i32* %94, align 4
  br label %101

95:                                               ; preds = %78
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 107, i32* %96, align 4
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 107, i32* %97, align 4
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 55, i32* %100, align 8
  br label %101

101:                                              ; preds = %95, %92
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %104 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = icmp sge i32 %106, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %112 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %114, %116
  br i1 %117, label %136, label %118

118:                                              ; preds = %110, %102
  %119 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %120 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp sge i32 %122, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %128 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp sle i32 %130, %132
  br label %134

134:                                              ; preds = %126, %118
  %135 = phi i1 [ false, %118 ], [ %133, %126 ]
  br label %136

136:                                              ; preds = %134, %110
  %137 = phi i1 [ true, %110 ], [ %135, %134 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %136, %12
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i8* @ARRAY_SIZE(%struct.ath5k_rf_reg*) #1

declare dso_local i32 @ath5k_hw_rfb_op(%struct.ath5k_hw*, %struct.ath5k_rf_reg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
