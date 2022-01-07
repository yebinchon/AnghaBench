; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_interrupt_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_interrupt_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i8*, i8*, %struct.TYPE_8__*, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_8__ = type { i32 }
%struct.qlcnic_hardware_context = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Device is resetting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Device in diagnostics mode\0A\00", align 1
@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_CMD_INTRPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_DEF_INT_ID = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Interrupt generated: 0x%x, requested:0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Interrupt test error: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_interrupt_test(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca %struct.qlcnic_cmd_args, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %4, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 5
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %17, align 8
  store %struct.qlcnic_hardware_context* %18, %struct.qlcnic_hardware_context** %5, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 4
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netdev_info(%struct.net_device* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %154

35:                                               ; preds = %1
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %37 = call i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @netdev_info(%struct.net_device* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %154

44:                                               ; preds = %35
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device* %45, i32 %46, i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %144

52:                                               ; preds = %44
  %53 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = load i32, i32* @QLCNIC_CMD_INTRPT_TEST, align 4
  %57 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %6, %struct.qlcnic_adapter* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %144

61:                                               ; preds = %52
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %70 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  br label %79

75:                                               ; preds = %61
  %76 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %77 = load i32, i32* @QLCNIC_DEF_INT_ID, align 4
  %78 = call i32 @QLCRDX(%struct.qlcnic_hardware_context* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @BIT_0, align 4
  %90 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %89, i32* %93, align 4
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %95 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %94, %struct.qlcnic_cmd_args* %6)
  store i32 %95, i32* %13, align 4
  %96 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @LSW(i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @MSW(i32 %103)
  %105 = call i8* @LSB(i32 %104)
  store i8* %105, i8** %7, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %79
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %110, i32 0, i32 3
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @dev_info(i32* %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %79
  %118 = load i8*, i8** %7, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %120, %117
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %139

131:                                              ; preds = %127
  %132 = call i32 @msleep(i32 20)
  %133 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %134 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %131, %130
  %140 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %6)
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @qlcnic_83xx_diag_free_res(%struct.net_device* %141, i8* %142)
  br label %144

144:                                              ; preds = %139, %60, %51
  %145 = load i8*, i8** %8, align 8
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %150 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %152 = call i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter* %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %144, %39, %30
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i64 @qlcnic_get_diag_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @LSW(i32) #1

declare dso_local i8* @LSB(i32) #1

declare dso_local i32 @MSW(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_83xx_diag_free_res(%struct.net_device*, i8*) #1

declare dso_local i32 @qlcnic_release_diag_lock(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
