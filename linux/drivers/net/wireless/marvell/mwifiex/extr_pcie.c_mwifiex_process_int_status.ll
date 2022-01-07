; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_process_int_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_process_int_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i64 }

@PCIE_HOST_INT_STATUS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Read register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Write register failed\0A\00", align 1
@PS_STATE_SLEEP = common dso_local global i64 0, align 8
@PS_STATE_AWAKE = common dso_local global i64 0, align 8
@HOST_INTR_DNLD_DONE = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"info: TX DNLD Done\0A\00", align 1
@HOST_INTR_UPLD_RDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"info: Rx DATA\0A\00", align 1
@HOST_INTR_EVENT_RDY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"info: Rx EVENT\0A\00", align 1
@HOST_INTR_CMD_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"info: CMD sent Interrupt\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"info: cmd_sent=%d data_sent=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_process_int_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_process_int_status(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 8
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  store %struct.pcie_service_card* %10, %struct.pcie_service_card** %7, align 8
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %11, i32 0, i32 7
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 7
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %31 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %23
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %36 = call i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %34
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %40 = load i32, i32* @PCIE_HOST_INT_STATUS, align 4
  %41 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %39, i32 %40, i32* %5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %44, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %188

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %55 = load i32, i32* @PCIE_HOST_INT_STATUS, align 4
  %56 = load i32, i32* %5, align 4
  %57 = xor i32 %56, -1
  %58 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %54, i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %62 = load i32, i32* @ERROR, align 4
  %63 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %61, i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %188

64:                                               ; preds = %53
  %65 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PS_STATE_SLEEP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i64, i64* @PS_STATE_AWAKE, align 8
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 5
  %83 = call i32 @del_timer(i32* %82)
  br label %84

84:                                               ; preds = %75, %69, %64
  br label %85

85:                                               ; preds = %84, %50, %47
  br label %86

86:                                               ; preds = %85, %34
  br label %87

87:                                               ; preds = %86, %23
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @HOST_INTR_DNLD_DONE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %94 = load i32, i32* @INTR, align 4
  %95 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %93, i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %97 = call i32 @mwifiex_pcie_send_data_complete(%struct.mwifiex_adapter* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %188

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %87
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @HOST_INTR_UPLD_RDY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %110 = load i32, i32* @INTR, align 4
  %111 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %109, i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %113 = call i32 @mwifiex_pcie_process_recv_data(%struct.mwifiex_adapter* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %188

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %103
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @HOST_INTR_EVENT_RDY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %126 = load i32, i32* @INTR, align 4
  %127 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %125, i32 %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %128 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %129 = call i32 @mwifiex_pcie_process_event_ready(%struct.mwifiex_adapter* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %188

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @HOST_INTR_CMD_DONE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %147 = load i32, i32* @INTR, align 4
  %148 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %146, i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %149 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %149, i32 0, i32 3
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %153 = call i32 @mwifiex_pcie_process_cmd_complete(%struct.mwifiex_adapter* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %188

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %135
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %161 = load i32, i32* @INTR, align 4
  %162 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %163 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %160, i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %170 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %187, label %173

173:                                              ; preds = %159
  %174 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %175 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %173
  %179 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PS_STATE_SLEEP, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %186 = call i32 @mwifiex_pcie_enable_host_int(%struct.mwifiex_adapter* %185)
  br label %187

187:                                              ; preds = %184, %178, %173, %159
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %156, %132, %116, %100, %60, %43
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter*) #1

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mwifiex_pcie_send_data_complete(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_process_recv_data(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_process_event_ready(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_process_cmd_complete(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_enable_host_int(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
