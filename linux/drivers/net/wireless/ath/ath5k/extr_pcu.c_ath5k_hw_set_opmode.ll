; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }
%struct.ath_common = type { i64 }

@ATH5K_DEBUG_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mode %d\0A\00", align 1
@AR5K_STA_ID1 = common dso_local global i32 0, align 4
@AR5K_STA_ID1_ADHOC = common dso_local global i32 0, align 4
@AR5K_STA_ID1_AP = common dso_local global i32 0, align 4
@AR5K_STA_ID1_KEYSRCH_MODE = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_STA_ID1_PWR_SV = common dso_local global i32 0, align 4
@AR5K_STA_ID1_NO_PSPOLL = common dso_local global i32 0, align 4
@AR5K_BCR_ADHOC = common dso_local global i32 0, align 4
@AR5K_CFG = common dso_local global i32 0, align 4
@AR5K_CFG_IBSS = common dso_local global i32 0, align 4
@AR5K_BCR_AP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_STA_ID0 = common dso_local global i32 0, align 4
@AR5K_BCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_opmode(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %6, align 8
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = load i32, i32* @ATH5K_DEBUG_MODE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %13, i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %18 = load i32, i32* @AR5K_STA_ID1, align 4
  %19 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %17, i32 %18)
  %20 = and i32 %19, -65536
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @AR5K_STA_ID1_ADHOC, align 4
  %22 = load i32, i32* @AR5K_STA_ID1_AP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @AR5K_STA_ID1_KEYSRCH_MODE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AR5K_AR5210, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @AR5K_STA_ID1_PWR_SV, align 4
  %33 = load i32, i32* @AR5K_STA_ID1_NO_PSPOLL, align 4
  %34 = or i32 %32, %33
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  %38 = or i32 %25, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %121 [
    i32 132, label %43
    i32 131, label %67
    i32 130, label %67
    i32 128, label %91
    i32 129, label %106
  ]

43:                                               ; preds = %36
  %44 = load i32, i32* @AR5K_STA_ID1_ADHOC, align 4
  %45 = load i32, i32* @AR5K_STA_ID1_KEYSRCH_MODE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @AR5K_BCR_ADHOC, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AR5K_AR5210, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load i32, i32* @AR5K_STA_ID1_NO_PSPOLL, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %66

61:                                               ; preds = %43
  %62 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %63 = load i32, i32* @AR5K_CFG, align 4
  %64 = load i32, i32* @AR5K_CFG_IBSS, align 4
  %65 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  br label %124

67:                                               ; preds = %36, %36
  %68 = load i32, i32* @AR5K_STA_ID1_AP, align 4
  %69 = load i32, i32* @AR5K_STA_ID1_KEYSRCH_MODE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @AR5K_BCR_AP, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AR5K_AR5210, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %67
  %82 = load i32, i32* @AR5K_STA_ID1_NO_PSPOLL, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %90

85:                                               ; preds = %67
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %87 = load i32, i32* @AR5K_CFG, align 4
  %88 = load i32, i32* @AR5K_CFG_IBSS, align 4
  %89 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %81
  br label %124

91:                                               ; preds = %36
  %92 = load i32, i32* @AR5K_STA_ID1_KEYSRCH_MODE, align 4
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %94 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AR5K_AR5210, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @AR5K_STA_ID1_PWR_SV, align 4
  br label %101

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = or i32 %92, %102
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %36, %101
  %107 = load i32, i32* @AR5K_STA_ID1_KEYSRCH_MODE, align 4
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %109 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @AR5K_AR5210, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @AR5K_STA_ID1_NO_PSPOLL, align 4
  br label %116

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = or i32 %107, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %124

121:                                              ; preds = %36
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %155

124:                                              ; preds = %116, %90, %66
  %125 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %126 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @get_unaligned_le32(i64 %127)
  store i32 %128, i32* %9, align 4
  %129 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %130 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 4
  %133 = call i32 @get_unaligned_le16(i64 %132)
  store i32 %133, i32* %10, align 4
  %134 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @AR5K_STA_ID0, align 4
  %137 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %134, i32 %135, i32 %136)
  %138 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @AR5K_STA_ID1, align 4
  %143 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %138, i32 %141, i32 %142)
  %144 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %145 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AR5K_AR5210, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %124
  %150 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @AR5K_BCR, align 4
  %153 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %124
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %121
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
