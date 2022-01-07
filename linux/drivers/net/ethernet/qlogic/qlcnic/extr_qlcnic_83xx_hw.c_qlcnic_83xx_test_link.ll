; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_test_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__*, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { i8*, i8*, i32, i64, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"link state down\0A\00", align 1
@QLCNIC_CMD_GET_LINK_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Get Link Status Command failed: 0x%x\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i8* null, align 8
@QLCNIC_XGBE = common dso_local global i8* null, align 8
@QLCNIC_GBE = common dso_local global i8* null, align 8
@PORT_TP = common dso_local global i8* null, align 8
@PORT_DA = common dso_local global i8* null, align 8
@PORT_OTHER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_test_link(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %9, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %22 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @QLC_83XX_LINK_STATE(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @QLC_83xx_FUNC_VAL(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %24
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_info(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %143

43:                                               ; preds = %24
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = load i32, i32* @QLCNIC_CMD_GET_LINK_STATUS, align 4
  %46 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %143

51:                                               ; preds = %43
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %52, %struct.qlcnic_cmd_args* %8)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_info(i32* %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %140

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @QLC_83XX_CURRENT_LINK_SPEED(i32 %69)
  switch i32 %70, label %87 [
    i32 140, label %71
    i32 142, label %75
    i32 139, label %79
    i32 141, label %83
  ]

71:                                               ; preds = %63
  %72 = load i32, i32* @SPEED_10, align 4
  %73 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %74 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %90

75:                                               ; preds = %63
  %76 = load i32, i32* @SPEED_100, align 4
  %77 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %78 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %90

79:                                               ; preds = %63
  %80 = load i32, i32* @SPEED_1000, align 4
  %81 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %82 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %90

83:                                               ; preds = %63
  %84 = load i32, i32* @SPEED_10000, align 4
  %85 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %86 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %90

87:                                               ; preds = %63
  %88 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %89 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %83, %79, %75, %71
  %91 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @QLC_83XX_SFP_MODULE_TYPE(i32 %96)
  switch i32 %97, label %126 [
    i32 130, label %98
    i32 131, label %98
    i32 129, label %98
    i32 132, label %105
    i32 133, label %105
    i32 134, label %105
    i32 128, label %112
    i32 136, label %119
    i32 138, label %119
    i32 137, label %119
    i32 135, label %119
  ]

98:                                               ; preds = %90, %90, %90
  %99 = load i8*, i8** @PORT_FIBRE, align 8
  %100 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %101 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @QLCNIC_XGBE, align 8
  %103 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %104 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %133

105:                                              ; preds = %90, %90, %90
  %106 = load i8*, i8** @PORT_FIBRE, align 8
  %107 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %108 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @QLCNIC_GBE, align 8
  %110 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %111 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %133

112:                                              ; preds = %90
  %113 = load i8*, i8** @PORT_TP, align 8
  %114 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %115 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @QLCNIC_GBE, align 8
  %117 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %118 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %133

119:                                              ; preds = %90, %90, %90, %90
  %120 = load i8*, i8** @PORT_DA, align 8
  %121 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %122 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @QLCNIC_XGBE, align 8
  %124 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %125 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %133

126:                                              ; preds = %90
  %127 = load i8*, i8** @PORT_OTHER, align 8
  %128 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %129 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @QLCNIC_XGBE, align 8
  %131 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  %132 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %126, %119, %112, %105, %98
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %133
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139, %56
  %141 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %49, %36
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @QLC_83XX_LINK_STATE(i32) #1

declare dso_local i32 @QLC_83xx_FUNC_VAL(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @QLC_83XX_CURRENT_LINK_SPEED(i32) #1

declare dso_local i32 @QLC_83XX_SFP_MODULE_TYPE(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
