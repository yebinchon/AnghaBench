; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_load_bsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_load_bsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [16 x i8] c"Begin load bsm\0A\00", align 1
@UCODE_RT = common dso_local global i32 0, align 4
@IL49_MAX_BSM_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BSM_DRAM_INST_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_INST_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_SRAM_LOWER_BOUND = common dso_local global i64 0, align 8
@BSM_WR_MEM_SRC_REG = common dso_local global i32 0, align 4
@BSM_WR_MEM_DST_REG = common dso_local global i32 0, align 4
@IL49_RTC_INST_LOWER_BOUND = common dso_local global i64 0, align 8
@BSM_WR_DWCOUNT_REG = common dso_local global i32 0, align 4
@BSM_WR_CTRL_REG = common dso_local global i32 0, align 4
@BSM_WR_CTRL_REG_BIT_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"BSM write complete, poll %d iterations\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"BSM write did not complete!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BSM_WR_CTRL_REG_BIT_START_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_load_bsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_load_bsm(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @UCODE_RT, align 4
  %24 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @IL49_MAX_BSM_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %144

32:                                               ; preds = %1
  %33 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %6, align 8
  %39 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %7, align 8
  %45 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  %53 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %54 = load i32, i32* @BSM_DRAM_INST_PTR_REG, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @il_wr_prph(%struct.il_priv* %53, i32 %54, i64 %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %58 = load i32, i32* @BSM_DRAM_DATA_PTR_REG, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @il_wr_prph(%struct.il_priv* %57, i32 %58, i64 %59)
  %61 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %62 = load i32, i32* @BSM_DRAM_INST_BYTECOUNT_REG, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @il_wr_prph(%struct.il_priv* %61, i32 %62, i64 %63)
  %65 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %66 = load i32, i32* @BSM_DRAM_DATA_BYTECOUNT_REG, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @il_wr_prph(%struct.il_priv* %65, i32 %66, i64 %67)
  %69 = load i64, i64* @BSM_SRAM_LOWER_BOUND, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %83, %32
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @BSM_SRAM_LOWER_BOUND, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %72, %73
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = call i32 @_il_wr_prph(%struct.il_priv* %77, i64 %78, i32 %81)
  br label %83

83:                                               ; preds = %76
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 8
  store i64 %85, i64* %12, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %4, align 8
  br label %70

88:                                               ; preds = %70
  %89 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %90 = call i32 @il4965_verify_bsm(%struct.il_priv* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %2, align 4
  br label %144

95:                                               ; preds = %88
  %96 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %97 = load i32, i32* @BSM_WR_MEM_SRC_REG, align 4
  %98 = call i32 @il_wr_prph(%struct.il_priv* %96, i32 %97, i64 0)
  %99 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %100 = load i32, i32* @BSM_WR_MEM_DST_REG, align 4
  %101 = load i64, i64* @IL49_RTC_INST_LOWER_BOUND, align 8
  %102 = call i32 @il_wr_prph(%struct.il_priv* %99, i32 %100, i64 %101)
  %103 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %104 = load i32, i32* @BSM_WR_DWCOUNT_REG, align 4
  %105 = load i64, i64* %5, align 8
  %106 = udiv i64 %105, 8
  %107 = call i32 @il_wr_prph(%struct.il_priv* %103, i32 %104, i64 %106)
  %108 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %109 = load i32, i32* @BSM_WR_CTRL_REG, align 4
  %110 = load i64, i64* @BSM_WR_CTRL_REG_BIT_START, align 8
  %111 = call i32 @il_wr_prph(%struct.il_priv* %108, i32 %109, i64 %110)
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %126, %95
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %113, 100
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %117 = load i32, i32* @BSM_WR_CTRL_REG, align 4
  %118 = call i64 @il_rd_prph(%struct.il_priv* %116, i32 %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @BSM_WR_CTRL_REG_BIT_START, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  br label %129

124:                                              ; preds = %115
  %125 = call i32 @udelay(i32 10)
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %112

129:                                              ; preds = %123, %112
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 100
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %139

135:                                              ; preds = %129
  %136 = call i32 @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %144

139:                                              ; preds = %132
  %140 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %141 = load i32, i32* @BSM_WR_CTRL_REG, align 4
  %142 = load i64, i64* @BSM_WR_CTRL_REG_BIT_START_EN, align 8
  %143 = call i32 @il_wr_prph(%struct.il_priv* %140, i32 %141, i64 %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %139, %135, %93, %29
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i64) #1

declare dso_local i32 @_il_wr_prph(%struct.il_priv*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @il4965_verify_bsm(%struct.il_priv*) #1

declare dso_local i64 @il_rd_prph(%struct.il_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IL_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
