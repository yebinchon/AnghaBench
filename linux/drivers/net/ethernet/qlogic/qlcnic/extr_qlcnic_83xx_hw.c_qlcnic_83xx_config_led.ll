; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8** }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { i8** }

@QLCNIC_CMD_GET_LED_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Get led config failed.\0A\00", align 1
@QLC_83XX_LED_CONFIG = common dso_local global i32 0, align 4
@QLCNIC_CMD_SET_LED_CONFIG = common dso_local global i32 0, align 4
@QLC_83XX_ENABLE_BEACON = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Set led config failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Restoring led config failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %114

14:                                               ; preds = %3
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = load i32, i32* @QLCNIC_CMD_GET_LED_CONFIG, align 4
  %17 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %184

22:                                               ; preds = %14
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %24 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %23, %struct.qlcnic_cmd_args* %8)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %111

33:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %45, i8** %53, align 8
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %34

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %60 = load i32, i32* @QLC_83XX_LED_CONFIG, align 4
  %61 = call i32 @LSW(i32 %60)
  %62 = shl i32 %61, 16
  %63 = load i32, i32* @QLC_83XX_LED_CONFIG, align 4
  %64 = call i32 @LSW(i32 %63)
  %65 = or i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %9, align 8
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %69 = load i32, i32* @QLCNIC_CMD_SET_LED_CONFIG, align 4
  %70 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %184

75:                                               ; preds = %58
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  store i8* %81, i8** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  store i8* %86, i8** %90, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %75
  %94 = load i8*, i8** @QLC_83XX_ENABLE_BEACON, align 8
  %95 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 4
  store i8* %94, i8** %98, align 8
  br label %99

99:                                               ; preds = %93, %75
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %101 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %100, %struct.qlcnic_cmd_args* %8)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %106 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %104, %99
  br label %111

111:                                              ; preds = %110, %27
  %112 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %184

114:                                              ; preds = %3
  %115 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %116 = load i32, i32* @QLCNIC_CMD_SET_LED_CONFIG, align 4
  %117 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %184

122:                                              ; preds = %114
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %124 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  store i8* %129, i8** %133, align 8
  %134 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %135 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  store i8* %140, i8** %144, align 8
  %145 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %146 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 2
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 3
  store i8* %151, i8** %155, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %170

158:                                              ; preds = %122
  %159 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %160 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 3
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 4
  store i8* %165, i8** %169, align 8
  br label %170

170:                                              ; preds = %158, %122
  %171 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %172 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %171, %struct.qlcnic_cmd_args* %8)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %177 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = call i32 @dev_err(i32* %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %175, %170
  %182 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %181, %120, %111, %73, %20
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @LSW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
