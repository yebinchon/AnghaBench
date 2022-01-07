; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_can_start_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_can_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__QLCNIC_START_FW = common dso_local global i32 0, align 4
@QLCNIC_CRB_DRV_ACTIVE = common dso_local global i32 0, align 4
@QLCNIC_CRB_DEV_STATE = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Device state = %u\0A\00", align 1
@QLCNIC_CRB_DRV_IDC_VER = common dso_local global i32 0, align 4
@QLCNIC_DRV_IDC_VER = common dso_local global i32 0, align 4
@QLCNIC_CRB_DRV_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Device in failed state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Waiting for device to initialize timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_can_start_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_can_start_firmware(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @__QLCNIC_START_FW, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 3
  %18 = call i64 @test_and_clear_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %153

21:                                               ; preds = %1
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = call i64 @qlcnic_api_lock(%struct.qlcnic_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %153

26:                                               ; preds = %21
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = load i32, i32* @QLCNIC_CRB_DRV_ACTIVE, align 4
  %29 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 4
  %33 = shl i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @QLC_DEV_SET_REF_CNT(i32 %37, i32 %38)
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = load i32, i32* @QLCNIC_CRB_DRV_ACTIVE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %26
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %46 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %47 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = load i32, i32* @HW, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @QLCDB(%struct.qlcnic_adapter* %48, i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %102 [
    i32 134, label %53
    i32 128, label %65
    i32 130, label %71
    i32 131, label %82
    i32 133, label %93
    i32 132, label %101
    i32 129, label %101
  ]

53:                                               ; preds = %44
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %56 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %54, i32 %55, i32 132)
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = load i32, i32* @QLCNIC_CRB_DRV_IDC_VER, align 4
  %59 = load i32, i32* @QLCNIC_DRV_IDC_VER, align 4
  %60 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %57, i32 %58, i32 %59)
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = call i32 @qlcnic_idc_debug_info(%struct.qlcnic_adapter* %61, i32 0)
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %64 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %63)
  store i32 1, i32* %2, align 4
  br label %153

65:                                               ; preds = %44
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = call i32 @qlcnic_check_idc_ver(%struct.qlcnic_adapter* %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %69 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %153

71:                                               ; preds = %44
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %73 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %74 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @QLC_DEV_SET_RST_RDY(i32 %75, i32 %76)
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %79 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %78, i32 %79, i32 %80)
  br label %102

82:                                               ; preds = %44
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %84 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %85 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @QLC_DEV_SET_QSCNT_RDY(i32 %86, i32 %87)
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %89, i32 %90, i32 %91)
  br label %102

93:                                               ; preds = %44
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %100 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %99)
  store i32 -1, i32* %2, align 4
  br label %153

101:                                              ; preds = %44, %44
  br label %102

102:                                              ; preds = %44, %101, %82, %71
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %104 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %103)
  br label %105

105:                                              ; preds = %121, %102
  %106 = call i32 @msleep(i32 1000)
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %108 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %109 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 129
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %114

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 128
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i1 [ false, %114 ], [ %120, %117 ]
  br i1 %122, label %105, label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %153

132:                                              ; preds = %123
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %134 = call i64 @qlcnic_api_lock(%struct.qlcnic_adapter* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 -1, i32* %2, align 4
  br label %153

137:                                              ; preds = %132
  %138 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %139 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %140 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @QLC_DEV_CLR_RST_QSCNT(i32 %141, i32 %142)
  %144 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %145 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %144, i32 %145, i32 %146)
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %149 = call i32 @qlcnic_check_idc_ver(%struct.qlcnic_adapter* %148)
  store i32 %149, i32* %8, align 4
  %150 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %151 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %137, %136, %126, %93, %65, %53, %25, %20
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_api_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLC_DEV_SET_REF_CNT(i32, i32) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLCDB(%struct.qlcnic_adapter*, i32, i8*, i32) #1

declare dso_local i32 @qlcnic_idc_debug_info(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_api_unlock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_check_idc_ver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLC_DEV_SET_RST_RDY(i32, i32) #1

declare dso_local i32 @QLC_DEV_SET_QSCNT_RDY(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @QLC_DEV_CLR_RST_QSCNT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
