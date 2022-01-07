; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_send_job_on_qman0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_send_job_on_qman0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32* (%struct.hl_device*, i32, i32, i32*)*, i32 (%struct.hl_device*, i8*, i32)*, i32 (%struct.hl_device*, i32*, i32*)* }
%struct.hl_cs_job = type { i32, %struct.hl_cb* }
%struct.hl_cb = type { i32, i32 }
%struct.packet_msg_prot = type { i32, i8*, i8* }

@GOYA_PLDM_QMAN0_TIMEOUT_USEC = common dso_local global i32 0, align 4
@HL_DEVICE_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Can't send driver job on QMAN0 because the device is not idle\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate fence memory for QMAN0\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PACKET_MSG_PROT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_EB_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_MB_SHIFT = common dso_local global i32 0, align 4
@GOYA_QMAN0_FENCE_VAL = common dso_local global i32 0, align 4
@GOYA_QUEUE_ID_DMA_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to send CB on QMAN0, %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"QMAN0 Job timeout (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_cs_job*)* @goya_send_job_on_qman0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_send_job_on_qman0(%struct.hl_device* %0, %struct.hl_cs_job* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_cs_job*, align 8
  %6 = alloca %struct.packet_msg_prot*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hl_cb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_cs_job* %1, %struct.hl_cs_job** %5, align 8
  %13 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @GOYA_PLDM_QMAN0_TIMEOUT_USEC, align 4
  store i32 %18, i32* %11, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HL_DEVICE_TIMEOUT_USEC, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32 (%struct.hl_device*, i32*, i32*)*, i32 (%struct.hl_device*, i32*, i32*)** %25, align 8
  %27 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %28 = call i32 %26(%struct.hl_device* %27, i32* null, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %21
  %31 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err_ratelimited(i32 %33, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %147

37:                                               ; preds = %21
  %38 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %39 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32* (%struct.hl_device*, i32, i32, i32*)*, i32* (%struct.hl_device*, i32, i32, i32*)** %41, align 8
  %43 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* %42(%struct.hl_device* %43, i32 4, i32 %44, i32* %8)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %37
  %49 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %147

55:                                               ; preds = %37
  %56 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %57 = call i32 @goya_qman0_set_security(%struct.hl_device* %56, i32 1)
  %58 = load %struct.hl_cs_job*, %struct.hl_cs_job** %5, align 8
  %59 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %58, i32 0, i32 1
  %60 = load %struct.hl_cb*, %struct.hl_cb** %59, align 8
  store %struct.hl_cb* %60, %struct.hl_cb** %9, align 8
  %61 = load %struct.hl_cb*, %struct.hl_cb** %9, align 8
  %62 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hl_cs_job*, %struct.hl_cs_job** %5, align 8
  %65 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 24
  %70 = inttoptr i64 %69 to %struct.packet_msg_prot*
  store %struct.packet_msg_prot* %70, %struct.packet_msg_prot** %6, align 8
  %71 = load i32, i32* @PACKET_MSG_PROT, align 4
  %72 = load i32, i32* @GOYA_PKT_CTL_OPCODE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* @GOYA_PKT_CTL_EB_SHIFT, align 4
  %75 = shl i32 1, %74
  %76 = or i32 %73, %75
  %77 = load i32, i32* @GOYA_PKT_CTL_MB_SHIFT, align 4
  %78 = shl i32 1, %77
  %79 = or i32 %76, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %6, align 8
  %83 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @GOYA_QMAN0_FENCE_VAL, align 4
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %6, align 8
  %87 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @cpu_to_le64(i32 %88)
  %90 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %6, align 8
  %91 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %93 = load i32, i32* @GOYA_QUEUE_ID_DMA_0, align 4
  %94 = load %struct.hl_cs_job*, %struct.hl_cs_job** %5, align 8
  %95 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hl_cb*, %struct.hl_cb** %9, align 8
  %98 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @hl_hw_queue_send_cb_no_cmpl(%struct.hl_device* %92, i32 %93, i32 %96, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %55
  %104 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %105 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %133

109:                                              ; preds = %55
  %110 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @GOYA_QMAN0_FENCE_VAL, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @hl_poll_timeout_memory(%struct.hl_device* %110, i32* %111, i32 %112, i32 %116, i32 1000, i32 %117, i32 1)
  store i32 %118, i32* %12, align 4
  %119 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %120 = load i32, i32* @GOYA_QUEUE_ID_DMA_0, align 4
  %121 = call i32 @hl_hw_queue_inc_ci_kernel(%struct.hl_device* %119, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %109
  %127 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %128 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %133

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132, %126, %103
  %134 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %135 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32 (%struct.hl_device*, i8*, i32)*, i32 (%struct.hl_device*, i8*, i32)** %137, align 8
  %139 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = bitcast i32* %140 to i8*
  %142 = load i32, i32* %8, align 4
  %143 = call i32 %138(%struct.hl_device* %139, i8* %141, i32 %142)
  %144 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %145 = call i32 @goya_qman0_set_security(%struct.hl_device* %144, i32 0)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %133, %48, %30
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @goya_qman0_set_security(%struct.hl_device*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @hl_hw_queue_send_cb_no_cmpl(%struct.hl_device*, i32, i32, i32) #1

declare dso_local i32 @hl_poll_timeout_memory(%struct.hl_device*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hl_hw_queue_inc_ci_kernel(%struct.hl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
