; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_send_cpu_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_firmware_if.c_hl_fw_send_cpu_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32, %struct.armcp_packet*)*, %struct.armcp_packet* (%struct.hl_device*, i32, i32*)* }
%struct.armcp_packet = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate DMA memory for packet to CPU\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to send CB on CPU PQ (%d)\0A\00", align 1
@ARMCP_PACKET_FENCE_VAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Device CPU packet timeout (0x%x)\0A\00", align 1
@ARMCP_PKT_CTL_RC_MASK = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_RC_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"F/W ERROR %d for CPU packet %d\0A\00", align 1
@ARMCP_PKT_CTL_OPCODE_MASK = common dso_local global i32 0, align 4
@ARMCP_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_fw_send_cpu_message(%struct.hl_device* %0, i32 %1, i32* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.armcp_packet*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.armcp_packet* (%struct.hl_device*, i32, i32*)*, %struct.armcp_packet* (%struct.hl_device*, i32, i32*)** %21, align 8
  %23 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.armcp_packet* %22(%struct.hl_device* %23, i32 %24, i32* %15)
  store %struct.armcp_packet* %25, %struct.armcp_packet** %14, align 8
  %26 = load %struct.armcp_packet*, %struct.armcp_packet** %14, align 8
  %27 = icmp ne %struct.armcp_packet* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %6
  %29 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %146

35:                                               ; preds = %6
  %36 = load %struct.armcp_packet*, %struct.armcp_packet** %14, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @memcpy(%struct.armcp_packet* %36, i32* %37, i32 %38)
  %40 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 2
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %132

48:                                               ; preds = %35
  %49 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %17, align 4
  br label %132

56:                                               ; preds = %48
  %57 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @hl_hw_queue_send_cb_no_cmpl(%struct.hl_device* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %66 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %132

70:                                               ; preds = %56
  %71 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %72 = load %struct.armcp_packet*, %struct.armcp_packet** %14, align 8
  %73 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %72, i32 0, i32 2
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @ARMCP_PACKET_FENCE_VAL, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @hl_poll_timeout_memory(%struct.hl_device* %71, i32* %73, i32 %74, i32 %78, i32 1000, i32 %79, i32 1)
  store i32 %80, i32* %17, align 4
  %81 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @hl_hw_queue_inc_ci_kernel(%struct.hl_device* %81, i32 %82)
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %70
  %89 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %90 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %95 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %132

96:                                               ; preds = %70
  %97 = load %struct.armcp_packet*, %struct.armcp_packet** %14, align 8
  %98 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @ARMCP_PKT_CTL_RC_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @ARMCP_PKT_CTL_RC_SHIFT, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %96
  %109 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %110 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @ARMCP_PKT_CTL_OPCODE_SHIFT, align 4
  %117 = ashr i32 %115, %116
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %117)
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %17, align 4
  br label %131

121:                                              ; preds = %96
  %122 = load i64*, i64** %13, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.armcp_packet*, %struct.armcp_packet** %14, align 8
  %126 = getelementptr inbounds %struct.armcp_packet, %struct.armcp_packet* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = load i64*, i64** %13, align 8
  store i64 %128, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %121
  br label %131

131:                                              ; preds = %130, %108
  br label %132

132:                                              ; preds = %131, %88, %64, %53, %47
  %133 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %134 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %133, i32 0, i32 2
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %137 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32 (%struct.hl_device*, i32, %struct.armcp_packet*)*, i32 (%struct.hl_device*, i32, %struct.armcp_packet*)** %139, align 8
  %141 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.armcp_packet*, %struct.armcp_packet** %14, align 8
  %144 = call i32 %140(%struct.hl_device* %141, i32 %142, %struct.armcp_packet* %143)
  %145 = load i32, i32* %17, align 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %132, %28
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.armcp_packet*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hl_hw_queue_send_cb_no_cmpl(%struct.hl_device*, i32, i32, i32) #1

declare dso_local i32 @hl_poll_timeout_memory(%struct.hl_device*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hl_hw_queue_inc_ci_kernel(%struct.hl_device*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
