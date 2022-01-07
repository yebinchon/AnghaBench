; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_if_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_if_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64, i64, %struct.bnxt_hw_resc, i32, i32, i32, %struct.hwrm_func_drv_if_change_output* }
%struct.bnxt_hw_resc = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.hwrm_func_drv_if_change_output = type { i32 }
%struct.hwrm_func_drv_if_change_input = type { i32, i32 }

@BNXT_FW_CAP_IF_CHANGE = common dso_local global i32 0, align 4
@HWRM_FUNC_DRV_IF_CHANGE = common dso_local global i32 0, align 4
@FUNC_DRV_IF_CHANGE_REQ_FLAGS_UP = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FUNC_DRV_IF_CHANGE_RESP_FLAGS_RESC_CHANGE = common dso_local global i32 0, align 4
@FUNC_DRV_IF_CHANGE_RESP_FLAGS_HOT_FW_RESET_DONE = common dso_local global i32 0, align 4
@BNXT_STATE_IN_FW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RESET_DONE not set during FW reset.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BNXT_STATE_ABORT_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"init int mode failed\0A\00", align 1
@BNXT_STATE_FW_RESET_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_hwrm_if_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_if_change(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_func_drv_if_change_output*, align 8
  %7 = alloca %struct.hwrm_func_drv_if_change_input, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnxt_hw_resc*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 7
  %15 = load %struct.hwrm_func_drv_if_change_output*, %struct.hwrm_func_drv_if_change_output** %14, align 8
  store %struct.hwrm_func_drv_if_change_output* %15, %struct.hwrm_func_drv_if_change_output** %6, align 8
  %16 = bitcast %struct.hwrm_func_drv_if_change_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BNXT_FW_CAP_IF_CHANGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

24:                                               ; preds = %2
  %25 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %26 = load i32, i32* @HWRM_FUNC_DRV_IF_CHANGE, align 4
  %27 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %25, %struct.hwrm_func_drv_if_change_input* %7, i32 %26, i32 -1, i32 -1)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @FUNC_DRV_IF_CHANGE_REQ_FLAGS_UP, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.hwrm_func_drv_if_change_input, %struct.hwrm_func_drv_if_change_input* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 6
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %39 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %40 = call i32 @_hwrm_send_message(%struct.bnxt* %38, %struct.hwrm_func_drv_if_change_input* %7, i32 8, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load %struct.hwrm_func_drv_if_change_output*, %struct.hwrm_func_drv_if_change_output** %6, align 8
  %45 = getelementptr inbounds %struct.hwrm_func_drv_if_change_output, %struct.hwrm_func_drv_if_change_output* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 6
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %159

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %159

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @FUNC_DRV_IF_CHANGE_RESP_FLAGS_RESC_CHANGE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @FUNC_DRV_IF_CHANGE_RESP_FLAGS_HOT_FW_RESET_DONE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %74 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %75 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %74, i32 0, i32 4
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %83 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @netdev_err(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %159

88:                                               ; preds = %78, %72
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %99 = call i32 @bnxt_fw_init_one(%struct.bnxt* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* @BNXT_STATE_ABORT_ERR, align 4
  %104 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %105 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %104, i32 0, i32 4
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %159

108:                                              ; preds = %97
  %109 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %110 = call i32 @bnxt_clear_int_mode(%struct.bnxt* %109)
  %111 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %112 = call i32 @bnxt_init_int_mode(%struct.bnxt* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %117 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @netdev_err(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %159

121:                                              ; preds = %108
  %122 = load i32, i32* @BNXT_STATE_FW_RESET_DET, align 4
  %123 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %124 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %123, i32 0, i32 4
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  br label %126

126:                                              ; preds = %121, %94
  %127 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %128 = call i64 @BNXT_NEW_RM(%struct.bnxt* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  %131 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %132 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %131, i32 0, i32 3
  store %struct.bnxt_hw_resc* %132, %struct.bnxt_hw_resc** %12, align 8
  %133 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %134 = call i32 @bnxt_hwrm_func_resc_qcaps(%struct.bnxt* %133, i32 1)
  store i32 %134, i32* %11, align 4
  %135 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %12, align 8
  %136 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %135, i32 0, i32 6
  store i64 0, i64* %136, align 8
  %137 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %12, align 8
  %138 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %137, i32 0, i32 5
  store i64 0, i64* %138, align 8
  %139 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %12, align 8
  %140 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %139, i32 0, i32 4
  store i64 0, i64* %140, align 8
  %141 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %12, align 8
  %142 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %12, align 8
  %144 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %12, align 8
  %146 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %12, align 8
  %148 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %130
  %152 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %153 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %155 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %151, %130
  br label %157

157:                                              ; preds = %156, %126
  br label %158

158:                                              ; preds = %157, %91
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %115, %102, %81, %59, %54, %23
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_drv_if_change_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_drv_if_change_input*, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i32 @bnxt_fw_init_one(%struct.bnxt*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @bnxt_clear_int_mode(%struct.bnxt*) #2

declare dso_local i32 @bnxt_init_int_mode(%struct.bnxt*) #2

declare dso_local i64 @BNXT_NEW_RM(%struct.bnxt*) #2

declare dso_local i32 @bnxt_hwrm_func_resc_qcaps(%struct.bnxt*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
