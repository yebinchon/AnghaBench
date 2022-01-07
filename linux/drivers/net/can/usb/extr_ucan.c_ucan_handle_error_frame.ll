; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_handle_error_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_handle_error_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.can_device_stats }
%struct.can_device_stats = type { i32, i32, i32, i32, i32 }
%struct.ucan_message_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@CAN_ERR_LOSTARB = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@CAN_ERR_ACK = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_ACTIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucan_priv*, %struct.ucan_message_in*, i32)* @ucan_handle_error_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_handle_error_frame(%struct.ucan_priv* %0, %struct.ucan_message_in* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucan_priv*, align 8
  %6 = alloca %struct.ucan_message_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.can_device_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %5, align 8
  store %struct.ucan_message_in* %1, %struct.ucan_message_in** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %18 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.net_device_stats* %20, %struct.net_device_stats** %9, align 8
  %21 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store %struct.can_device_stats* %23, %struct.can_device_stats** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CAN_ERR_LOSTARB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.can_device_stats*, %struct.can_device_stats** %10, align 8
  %30 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.can_device_stats*, %struct.can_device_stats** %10, align 8
  %40 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @CAN_ERR_ACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %50 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 130, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @CAN_ERR_CRTL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %59
  %65 = load %struct.ucan_message_in*, %struct.ucan_message_in** %6, align 8
  %66 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %78 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %64
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @CAN_ERR_CRTL_ACTIVE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  %91 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 128, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %99 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 129, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %96
  br label %105

105:                                              ; preds = %104, %59
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @CAN_ERR_PROT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %105
  %111 = load %struct.ucan_message_in*, %struct.ucan_message_in** %6, align 8
  %112 = getelementptr inbounds %struct.ucan_message_in, %struct.ucan_message_in* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %110
  %123 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %124 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %132

127:                                              ; preds = %110
  %128 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %129 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %122
  br label %133

133:                                              ; preds = %132, %105
  %134 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %135 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %180

141:                                              ; preds = %133
  %142 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %143 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = icmp ugt i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %151 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  store i32 1, i32* %4, align 4
  br label %180

153:                                              ; preds = %141
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %156 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* %8, align 4
  switch i32 %158, label %178 [
    i32 130, label %159
    i32 129, label %168
    i32 128, label %173
  ]

159:                                              ; preds = %153
  %160 = load %struct.can_device_stats*, %struct.can_device_stats** %10, align 8
  %161 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load %struct.ucan_priv*, %struct.ucan_priv** %5, align 8
  %165 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = call i32 @can_bus_off(%struct.TYPE_8__* %166)
  br label %179

168:                                              ; preds = %153
  %169 = load %struct.can_device_stats*, %struct.can_device_stats** %10, align 8
  %170 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %179

173:                                              ; preds = %153
  %174 = load %struct.can_device_stats*, %struct.can_device_stats** %10, align 8
  %175 = getelementptr inbounds %struct.can_device_stats, %struct.can_device_stats* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %179

178:                                              ; preds = %153
  br label %179

179:                                              ; preds = %178, %173, %168, %159
  store i32 1, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %148, %140
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @can_bus_off(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
