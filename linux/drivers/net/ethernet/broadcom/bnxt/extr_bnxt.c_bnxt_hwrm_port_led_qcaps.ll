; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_port_led_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_port_led_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64, i32, i32, %struct.bnxt_led_info*, %struct.bnxt_pf_info, %struct.hwrm_port_led_qcaps_output* }
%struct.bnxt_led_info = type { i32, i32 }
%struct.bnxt_pf_info = type { i32 }
%struct.hwrm_port_led_qcaps_output = type { i64, i32 }
%struct.hwrm_port_led_qcaps_input = type { i32, i32 }

@HWRM_PORT_LED_QCAPS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_MAX_LED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_port_led_qcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_port_led_qcaps(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_port_led_qcaps_output*, align 8
  %5 = alloca %struct.hwrm_port_led_qcaps_input, align 4
  %6 = alloca %struct.bnxt_pf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_led_info*, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 5
  %13 = load %struct.hwrm_port_led_qcaps_output*, %struct.hwrm_port_led_qcaps_output** %12, align 8
  store %struct.hwrm_port_led_qcaps_output* %13, %struct.hwrm_port_led_qcaps_output** %4, align 8
  %14 = bitcast %struct.hwrm_port_led_qcaps_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 4
  store %struct.bnxt_pf_info* %16, %struct.bnxt_pf_info** %6, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %20 = call i64 @BNXT_VF(%struct.bnxt* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 67073
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %115

28:                                               ; preds = %22
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = load i32, i32* @HWRM_PORT_LED_QCAPS, align 4
  %31 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %29, %struct.hwrm_port_led_qcaps_input* %5, i32 %30, i32 -1, i32 -1)
  %32 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %6, align 8
  %33 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = getelementptr inbounds %struct.hwrm_port_led_qcaps_input, %struct.hwrm_port_led_qcaps_input* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 2
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %42 = call i32 @_hwrm_send_message(%struct.bnxt* %40, %struct.hwrm_port_led_qcaps_input* %5, i32 8, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %115

50:                                               ; preds = %28
  %51 = load %struct.hwrm_port_led_qcaps_output*, %struct.hwrm_port_led_qcaps_output** %4, align 8
  %52 = getelementptr inbounds %struct.hwrm_port_led_qcaps_output, %struct.hwrm_port_led_qcaps_output* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %50
  %56 = load %struct.hwrm_port_led_qcaps_output*, %struct.hwrm_port_led_qcaps_output** %4, align 8
  %57 = getelementptr inbounds %struct.hwrm_port_led_qcaps_output, %struct.hwrm_port_led_qcaps_output* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BNXT_MAX_LED, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %55
  %62 = load %struct.hwrm_port_led_qcaps_output*, %struct.hwrm_port_led_qcaps_output** %4, align 8
  %63 = getelementptr inbounds %struct.hwrm_port_led_qcaps_output, %struct.hwrm_port_led_qcaps_output* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %66 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %68 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %67, i32 0, i32 3
  %69 = load %struct.bnxt_led_info*, %struct.bnxt_led_info** %68, align 8
  %70 = load %struct.hwrm_port_led_qcaps_output*, %struct.hwrm_port_led_qcaps_output** %4, align 8
  %71 = getelementptr inbounds %struct.hwrm_port_led_qcaps_output, %struct.hwrm_port_led_qcaps_output* %70, i32 0, i32 1
  %72 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %73 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(%struct.bnxt_led_info* %69, i32* %71, i32 %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %107, %61
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %82 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %78
  %86 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 3
  %88 = load %struct.bnxt_led_info*, %struct.bnxt_led_info** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bnxt_led_info, %struct.bnxt_led_info* %88, i64 %90
  store %struct.bnxt_led_info* %91, %struct.bnxt_led_info** %9, align 8
  %92 = load %struct.bnxt_led_info*, %struct.bnxt_led_info** %9, align 8
  %93 = getelementptr inbounds %struct.bnxt_led_info, %struct.bnxt_led_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load %struct.bnxt_led_info*, %struct.bnxt_led_info** %9, align 8
  %96 = getelementptr inbounds %struct.bnxt_led_info, %struct.bnxt_led_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @BNXT_LED_ALT_BLINK_CAP(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99, %85
  %104 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %105 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %110

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %78

110:                                              ; preds = %103, %78
  br label %111

111:                                              ; preds = %110, %55, %50
  %112 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %113 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %112, i32 0, i32 2
  %114 = call i32 @mutex_unlock(i32* %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %45, %27
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_port_led_qcaps_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_port_led_qcaps_input*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @memcpy(%struct.bnxt_led_info*, i32*, i32) #2

declare dso_local i32 @BNXT_LED_ALT_BLINK_CAP(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
