; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.cc770_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.can_frame = type { i32*, i64, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"status interrupt (%#x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CTRL_EAF = common dso_local global i32 0, align 4
@tx_error_counter = common dso_local global i32 0, align 4
@rx_error_counter = common dso_local global i32 0, align 4
@STAT_BOFF = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@CTRL_INI = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@STAT_WARN = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_ACTIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@STAT_LEC_MASK = common dso_local global i32 0, align 4
@STAT_LEC_ACK = common dso_local global i32 0, align 4
@CAN_ERR_ACK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT1 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT0 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_CRC_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cc770_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc770_err(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cc770_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.cc770_priv* %12, %struct.cc770_priv** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @netdev_dbg(%struct.net_device* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %18, %struct.can_frame** %8)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %228

25:                                               ; preds = %2
  %26 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %27 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CTRL_EAF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %34 = load i32, i32* @tx_error_counter, align 4
  %35 = call i8* @cc770_read_reg(%struct.cc770_priv* %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %38 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32 %36, i32* %40, align 4
  %41 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %42 = load i32, i32* @rx_error_counter, align 4
  %43 = call i8* @cc770_read_reg(%struct.cc770_priv* %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %32, %25
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @STAT_BOFF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %56 = load i32, i32* @control, align 4
  %57 = load i32, i32* @CTRL_INI, align 4
  %58 = call i32 @cc770_write_reg(%struct.cc770_priv* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %60 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %61 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %65 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %66 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %69 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 @can_bus_off(%struct.net_device* %74)
  br label %146

76:                                               ; preds = %49
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @STAT_WARN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %130

81:                                               ; preds = %76
  %82 = load i32, i32* @CAN_ERR_CRTL, align 4
  %83 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %84 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 127
  br i1 %92, label %93, label %111

93:                                               ; preds = %81
  %94 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %95 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %98 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %102 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %103 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %106 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %129

111:                                              ; preds = %81
  %112 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  %113 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %116 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %120 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %121 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %124 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %111, %93
  br label %145

130:                                              ; preds = %76
  %131 = load i32, i32* @CAN_ERR_PROT, align 4
  %132 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %133 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* @CAN_ERR_PROT_ACTIVE, align 4
  %137 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %138 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %142 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %143 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %130, %129
  br label %146

146:                                              ; preds = %145, %54
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @STAT_LEC_MASK, align 4
  %149 = and i32 %147, %148
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 7
  br i1 %151, label %152, label %212

152:                                              ; preds = %146
  %153 = load i32, i32* %10, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %212

155:                                              ; preds = %152
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @STAT_LEC_ACK, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i32, i32* @CAN_ERR_ACK, align 4
  %161 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %162 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %211

165:                                              ; preds = %155
  %166 = load i32, i32* @CAN_ERR_PROT, align 4
  %167 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %168 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* %10, align 4
  switch i32 %171, label %210 [
    i32 128, label %172
    i32 129, label %180
    i32 131, label %188
    i32 132, label %196
    i32 130, label %204
  ]

172:                                              ; preds = %165
  %173 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %174 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %175 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %173
  store i32 %179, i32* %177, align 4
  br label %210

180:                                              ; preds = %165
  %181 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %182 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %183 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %181
  store i32 %187, i32* %185, align 4
  br label %210

188:                                              ; preds = %165
  %189 = load i32, i32* @CAN_ERR_PROT_BIT1, align 4
  %190 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %191 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %189
  store i32 %195, i32* %193, align 4
  br label %210

196:                                              ; preds = %165
  %197 = load i32, i32* @CAN_ERR_PROT_BIT0, align 4
  %198 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %199 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %197
  store i32 %203, i32* %201, align 4
  br label %210

204:                                              ; preds = %165
  %205 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %206 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %207 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  store i32 %205, i32* %209, align 4
  br label %210

210:                                              ; preds = %165, %204, %196, %188, %180, %172
  br label %211

211:                                              ; preds = %210, %159
  br label %212

212:                                              ; preds = %211, %152, %146
  %213 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %214 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  %217 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %218 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %221 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %219
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %221, align 4
  %226 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %227 = call i32 @netif_rx(%struct.sk_buff* %226)
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %212, %22
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i8* @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
