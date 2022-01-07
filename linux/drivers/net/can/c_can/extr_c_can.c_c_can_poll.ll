; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.c_can_priv = type { i32, i32 (%struct.c_can_priv*, i32)*, i64, %struct.TYPE_2__, i32 (%struct.c_can_priv*, i32, i32)*, i32 }
%struct.TYPE_2__ = type { i64 }

@C_CAN_STS_REG = common dso_local global i32 0, align 4
@BOSCH_D_CAN = common dso_local global i64 0, align 8
@LEC_UNUSED = common dso_local global i32 0, align 4
@STATUS_EWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"entered error warning state\0A\00", align 1
@C_CAN_ERROR_WARNING = common dso_local global i32 0, align 4
@STATUS_EPASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"entered error passive state\0A\00", align 1
@C_CAN_ERROR_PASSIVE = common dso_local global i32 0, align 4
@STATUS_BOFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"entered bus off state\0A\00", align 1
@C_CAN_BUS_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"left bus off state\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"left error passive state\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"left error warning state\0A\00", align 1
@C_CAN_NO_ERROR = common dso_local global i32 0, align 4
@LEC_MASK = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @c_can_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.c_can_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.c_can_priv* %14, %struct.c_can_priv** %6, align 8
  %15 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %16 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %19 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %18, i32 0, i32 5
  %20 = call i64 @atomic_xchg(i32* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %24 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %23, i32 0, i32 1
  %25 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %24, align 8
  %26 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %27 = load i32, i32* @C_CAN_STS_REG, align 4
  %28 = call i32 %25(%struct.c_can_priv* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %30 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %32 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BOSCH_D_CAN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %22
  %37 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %38 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %37, i32 0, i32 4
  %39 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %38, align 8
  %40 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %41 = load i32, i32* @C_CAN_STS_REG, align 4
  %42 = load i32, i32* @LEC_UNUSED, align 4
  %43 = call i32 %39(%struct.c_can_priv* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %22
  br label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @STATUS_EWARN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @STATUS_EWARN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @netdev_dbg(%struct.net_device* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* @C_CAN_ERROR_WARNING, align 4
  %62 = call i64 @c_can_handle_state_change(%struct.net_device* %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %57, %52, %47
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @STATUS_EPASS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @STATUS_EPASS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i32 @netdev_dbg(%struct.net_device* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load i32, i32* @C_CAN_ERROR_PASSIVE, align 4
  %82 = call i64 @c_can_handle_state_change(%struct.net_device* %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %77, %72, %67
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @STATUS_BOFF, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @STATUS_BOFF, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = call i32 @netdev_dbg(%struct.net_device* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = load i32, i32* @C_CAN_BUS_OFF, align 4
  %102 = call i64 @c_can_handle_state_change(%struct.net_device* %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %188

107:                                              ; preds = %92, %87
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @STATUS_BOFF, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @STATUS_BOFF, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.net_device*, %struct.net_device** %5, align 8
  %119 = call i32 @netdev_dbg(%struct.net_device* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = load i32, i32* @C_CAN_ERROR_PASSIVE, align 4
  %122 = call i64 @c_can_handle_state_change(%struct.net_device* %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %117, %112, %107
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @STATUS_EPASS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @STATUS_EPASS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = call i32 @netdev_dbg(%struct.net_device* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.net_device*, %struct.net_device** %5, align 8
  %141 = load i32, i32* @C_CAN_ERROR_WARNING, align 4
  %142 = call i64 @c_can_handle_state_change(%struct.net_device* %140, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %137, %132, %127
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @STATUS_EWARN, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @STATUS_EWARN, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load %struct.net_device*, %struct.net_device** %5, align 8
  %159 = call i32 @netdev_dbg(%struct.net_device* %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = load i32, i32* @C_CAN_NO_ERROR, align 4
  %162 = call i64 @c_can_handle_state_change(%struct.net_device* %160, i32 %161)
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %157, %152, %147
  %168 = load %struct.net_device*, %struct.net_device** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @LEC_MASK, align 4
  %171 = and i32 %169, %170
  %172 = call i64 @c_can_handle_bus_err(%struct.net_device* %168, i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %9, align 4
  %177 = load %struct.net_device*, %struct.net_device** %5, align 8
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* %9, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i64 @c_can_do_rx_poll(%struct.net_device* %177, i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %9, align 4
  %186 = load %struct.net_device*, %struct.net_device** %5, align 8
  %187 = call i32 @c_can_do_tx(%struct.net_device* %186)
  br label %188

188:                                              ; preds = %167, %97
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %188
  %193 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @napi_complete_done(%struct.napi_struct* %193, i32 %194)
  %196 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %197 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %192
  %203 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %204 = call i32 @c_can_irq_control(%struct.c_can_priv* %203, i32 1)
  br label %205

205:                                              ; preds = %202, %192
  br label %206

206:                                              ; preds = %205, %188
  %207 = load i32, i32* %9, align 4
  ret i32 %207
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i64 @c_can_handle_state_change(%struct.net_device*, i32) #1

declare dso_local i64 @c_can_handle_bus_err(%struct.net_device*, i32) #1

declare dso_local i64 @c_can_do_rx_poll(%struct.net_device*, i32) #1

declare dso_local i32 @c_can_do_tx(%struct.net_device*) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @c_can_irq_control(%struct.c_can_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
