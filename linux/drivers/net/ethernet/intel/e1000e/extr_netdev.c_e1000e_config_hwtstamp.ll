; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_config_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_config_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.hwtstamp_config, %struct.e1000_hw }
%struct.hwtstamp_config = type { i32, i32, i64 }
%struct.e1000_hw = type { i32 }

@E1000_TSYNCTXCTL_ENABLED = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_ENABLED = common dso_local global i32 0, align 4
@FLAG_HAS_HW_TIMESTAMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_L4_V1 = common dso_local global i32 0, align 4
@E1000_RXMTRL_PTP_V1_SYNC_MESSAGE = common dso_local global i32 0, align 4
@E1000_RXMTRL_PTP_V1_DELAY_REQ_MESSAGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_L2_V2 = common dso_local global i32 0, align 4
@E1000_RXMTRL_PTP_V2_SYNC_MESSAGE = common dso_local global i32 0, align 4
@E1000_RXMTRL_PTP_V2_DELAY_REQ_MESSAGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_L2_L4_V2 = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_EVENT_V2 = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_ALL = common dso_local global i32 0, align 4
@TSYNCTXCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Timesync Tx Control register not set as expected\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TSYNCRXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Timesync Rx Control register not set as expected\0A\00", align 1
@ETH_P_1588 = common dso_local global i32 0, align 4
@RXMTRL = common dso_local global i32 0, align 4
@PTP_EV_PORT = common dso_local global i32 0, align 4
@RXUDP = common dso_local global i32 0, align 4
@RXSTMPH = common dso_local global i32 0, align 4
@TXSTMPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.hwtstamp_config*)* @e1000e_config_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000e_config_hwtstamp(%struct.e1000_adapter* %0, %struct.hwtstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.hwtstamp_config*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.hwtstamp_config* %1, %struct.hwtstamp_config** %5, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 2
  store %struct.e1000_hw* %15, %struct.e1000_hw** %6, align 8
  %16 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FLAG_HAS_HW_TIMESTAMP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %180

27:                                               ; preds = %2
  %28 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %29 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %180

35:                                               ; preds = %27
  %36 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %37 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %41 [
    i32 129, label %39
    i32 128, label %40
  ]

39:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %44

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %180

44:                                               ; preds = %40, %39
  %45 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %46 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %91 [
    i32 143, label %48
    i32 139, label %49
    i32 141, label %54
    i32 134, label %59
    i32 136, label %64
    i32 131, label %69
    i32 130, label %69
    i32 133, label %74
    i32 138, label %74
    i32 132, label %79
    i32 135, label %79
    i32 137, label %79
    i32 140, label %85
    i32 142, label %85
    i32 144, label %85
  ]

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %94

49:                                               ; preds = %44
  %50 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L4_V1, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @E1000_RXMTRL_PTP_V1_SYNC_MESSAGE, align 4
  store i32 %53, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %94

54:                                               ; preds = %44
  %55 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L4_V1, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @E1000_RXMTRL_PTP_V1_DELAY_REQ_MESSAGE, align 4
  store i32 %58, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %94

59:                                               ; preds = %44
  %60 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L2_V2, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @E1000_RXMTRL_PTP_V2_SYNC_MESSAGE, align 4
  store i32 %63, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %94

64:                                               ; preds = %44
  %65 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L2_V2, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @E1000_RXMTRL_PTP_V2_DELAY_REQ_MESSAGE, align 4
  store i32 %68, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %94

69:                                               ; preds = %44, %44
  %70 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L2_L4_V2, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @E1000_RXMTRL_PTP_V2_SYNC_MESSAGE, align 4
  store i32 %73, i32* %9, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %94

74:                                               ; preds = %44, %44
  %75 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L2_L4_V2, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @E1000_RXMTRL_PTP_V2_DELAY_REQ_MESSAGE, align 4
  store i32 %78, i32* %9, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %94

79:                                               ; preds = %44, %44, %44
  %80 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_EVENT_V2, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %84 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %83, i32 0, i32 1
  store i32 137, i32* %84, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %94

85:                                               ; preds = %44, %44, %44
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  %86 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_ALL, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %90 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %89, i32 0, i32 1
  store i32 144, i32* %90, align 4
  br label %94

91:                                               ; preds = %44
  %92 = load i32, i32* @ERANGE, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %180

94:                                               ; preds = %85, %79, %74, %69, %64, %59, %54, %49, %48
  %95 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %95, i32 0, i32 1
  %97 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %98 = bitcast %struct.hwtstamp_config* %96 to i8*
  %99 = bitcast %struct.hwtstamp_config* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 16, i1 false)
  %100 = load i32, i32* @TSYNCTXCTL, align 4
  %101 = call i32 @er32(i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* @TSYNCTXCTL, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @ew32(i32 %109, i32 %110)
  %112 = load i32, i32* @TSYNCTXCTL, align 4
  %113 = call i32 @er32(i32 %112)
  %114 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %94
  %121 = call i32 @e_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @EAGAIN, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %180

124:                                              ; preds = %94
  %125 = load i32, i32* @TSYNCRXCTL, align 4
  %126 = call i32 @er32(i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  %128 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_MASK, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %13, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* @TSYNCRXCTL, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @ew32(i32 %136, i32 %137)
  %139 = load i32, i32* @TSYNCRXCTL, align 4
  %140 = call i32 @er32(i32 %139)
  %141 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  %142 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_MASK, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  %147 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_MASK, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %144, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %124
  %152 = call i32 @e_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @EAGAIN, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %180

155:                                              ; preds = %124
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* @ETH_P_1588, align 4
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i32, i32* @RXMTRL, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @ew32(i32 %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load i32, i32* @PTP_EV_PORT, align 4
  store i32 %169, i32* %10, align 4
  %170 = call i32 @cpu_to_be16s(i32* %10)
  br label %171

171:                                              ; preds = %168, %162
  %172 = load i32, i32* @RXUDP, align 4
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @ew32(i32 %172, i32 %173)
  %175 = call i32 (...) @e1e_flush()
  %176 = load i32, i32* @RXSTMPH, align 4
  %177 = call i32 @er32(i32 %176)
  %178 = load i32, i32* @TXSTMPH, align 4
  %179 = call i32 @er32(i32 %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %171, %151, %120, %91, %41, %32, %24
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @er32(i32) #2

declare dso_local i32 @ew32(i32, i32) #2

declare dso_local i32 @e_err(i8*) #2

declare dso_local i32 @cpu_to_be16s(i32*) #2

declare dso_local i32 @e1e_flush(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
