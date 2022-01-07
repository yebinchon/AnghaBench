; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i64, i32*, %struct.TYPE_2__*, i32, %struct.stmpe_variant_info* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.stmpe_variant_info = type { i32, i32, i32 }

@STMPE_IDX_CHIP_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unknown chip id: %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s detected, chip id: %#x\0A\00", align 1
@STMPE801_ID = common dso_local global i32 0, align 4
@STMPE1600_ID = common dso_local global i32 0, align 4
@STMPE_SYS_CTRL_INT_EN = common dso_local global i32 0, align 4
@STMPE_ICR_LSB_GIM = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@STMPE_ICR_LSB_EDGE = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@STMPE_SYS_CTRL_INT_HI = common dso_local global i32 0, align 4
@STMPE_ICR_LSB_HIGH = common dso_local global i32 0, align 4
@STMPE_IDX_ICR_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*)* @stmpe_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_chip_init(%struct.stmpe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmpe_variant_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %3, align 8
  %11 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %12 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %17 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %22 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %21, i32 0, i32 4
  %23 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %22, align 8
  store %struct.stmpe_variant_info* %23, %struct.stmpe_variant_info** %6, align 8
  store i32 0, i32* %7, align 4
  %24 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %25 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %26 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @STMPE_IDX_CHIP_ID, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %34 = call i32 @stmpe_block_read(%struct.stmpe* %24, i32 %30, i32 %32, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %2, align 4
  br label %175

39:                                               ; preds = %1
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %42, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %6, align 8
  %48 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %6, align 8
  %52 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %39
  %56 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %57 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %175

63:                                               ; preds = %39
  %64 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %65 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %6, align 8
  %68 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %73 = call i32 @stmpe_disable(%struct.stmpe* %72, i32 -1)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %2, align 4
  br label %175

78:                                               ; preds = %63
  %79 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %80 = call i32 @stmpe_reset(%struct.stmpe* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %175

85:                                               ; preds = %78
  %86 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %87 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %149

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @STMPE801_ID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @STMPE1600_ID, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %90
  %99 = load i32, i32* @STMPE_SYS_CTRL_INT_EN, align 4
  store i32 %99, i32* %7, align 4
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @STMPE_ICR_LSB_GIM, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @STMPE801_ID, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @STMPE1600_ID, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114, %110
  %119 = load i32, i32* @STMPE_ICR_LSB_EDGE, align 4
  %120 = load i32, i32* %7, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %118, %114
  br label %123

123:                                              ; preds = %122, %106, %102
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @STMPE801_ID, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @STMPE1600_ID, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135, %131
  %140 = load i32, i32* @STMPE_SYS_CTRL_INT_HI, align 4
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  br label %147

143:                                              ; preds = %135
  %144 = load i32, i32* @STMPE_ICR_LSB_HIGH, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %127
  br label %149

149:                                              ; preds = %148, %85
  %150 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %151 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @stmpe_autosleep(%struct.stmpe* %157, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %2, align 4
  br label %175

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %149
  %166 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %167 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %168 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @STMPE_IDX_ICR_LSB, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @stmpe_reg_write(%struct.stmpe* %166, i32 %172, i32 %173)
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %165, %162, %83, %76, %55, %37
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @stmpe_block_read(%struct.stmpe*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @stmpe_disable(%struct.stmpe*, i32) #1

declare dso_local i32 @stmpe_reset(%struct.stmpe*) #1

declare dso_local i32 @stmpe_autosleep(%struct.stmpe*, i32) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
