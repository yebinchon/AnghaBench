; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_ext_power_req_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_ext_power_req_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@TPS80031_EXT_PWR_REQ = common dso_local global i64 0, align 8
@TPS80031_PWR_REQ_INPUT_PREQ1 = common dso_local global i64 0, align 8
@TPS80031_PREQ1_RES_ASS_A = common dso_local global i32 0, align 4
@TPS80031_PWR_REQ_INPUT_PREQ2 = common dso_local global i64 0, align 8
@TPS80031_PREQ2_RES_ASS_A = common dso_local global i32 0, align 4
@TPS80031_PWR_REQ_INPUT_PREQ3 = common dso_local global i64 0, align 8
@TPS80031_PREQ3_RES_ASS_A = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"reg 0x%02x setbit failed, err = %d\0A\00", align 1
@TPS80031_PHOENIX_MSK_TRANSITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"reg 0x%02x clrbit failed, err = %d\0A\00", align 1
@TPS80031_STATE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"reg 0x%02x update failed, err = %d\0A\00", align 1
@TPS80031_TRANS_SLEEP_OFF = common dso_local global i32 0, align 4
@TPS80031_TRANS_SLEEP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tps80031_ext_power_req_config(%struct.device* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @TPS80031_EXT_PWR_REQ, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %121

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @TPS80031_PWR_REQ_INPUT_PREQ1, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @TPS80031_PREQ1_RES_ASS_A, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 3
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %12, align 4
  store i32 5, i32* %13, align 4
  br label %52

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @TPS80031_PWR_REQ_INPUT_PREQ2, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @TPS80031_PREQ2_RES_ASS_A, align 4
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 3
  %39 = add nsw i32 %36, %38
  store i32 %39, i32* %12, align 4
  store i32 6, i32* %13, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @TPS80031_PWR_REQ_INPUT_PREQ3, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @TPS80031_PREQ3_RES_ASS_A, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 3
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %12, align 4
  store i32 7, i32* %13, align 4
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %25
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 7
  %58 = call i32 @BIT(i32 %57)
  %59 = call i32 @tps80031_set_bits(%struct.device* %53, i32 %54, i32 %55, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %121

68:                                               ; preds = %52
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %71 = load i32, i32* @TPS80031_PHOENIX_MSK_TRANSITION, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = call i32 @tps80031_clr_bits(%struct.device* %69, i32 %70, i32 %71, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i32, i32* @TPS80031_PHOENIX_MSK_TRANSITION, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %121

83:                                               ; preds = %68
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @TPS80031_PWR_REQ_INPUT_PREQ2, align 8
  %86 = load i64, i64* @TPS80031_PWR_REQ_INPUT_PREQ3, align 8
  %87 = or i64 %85, %86
  %88 = and i64 %84, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %83
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @TPS80031_STATE_MASK, align 4
  %95 = call i32 @tps80031_update(%struct.device* %91, i32 %92, i32 %93, i32 0, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %90
  br label %119

104:                                              ; preds = %83
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @TPS80031_TRANS_SLEEP_OFF, align 4
  %109 = load i32, i32* @TPS80031_TRANS_SLEEP_MASK, align 4
  %110 = call i32 @tps80031_update(%struct.device* %105, i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load %struct.device*, %struct.device** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %104
  br label %119

119:                                              ; preds = %118, %103
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %77, %62, %19
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @tps80031_set_bits(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @tps80031_clr_bits(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @tps80031_update(%struct.device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
