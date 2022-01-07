; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_transmitter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_transmitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hdlcdrv_state = type { i64, %struct.TYPE_6__, %struct.sk_buff*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@HDLCDRV_MAGIC = common dso_local global i64 0, align 8
@HDLCDRV_MAXFLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdlcdrv_transmitter(%struct.net_device* %0, %struct.hdlcdrv_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hdlcdrv_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.hdlcdrv_state* %1, %struct.hdlcdrv_state** %4, align 8
  %12 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %13 = icmp ne %struct.hdlcdrv_state* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %16 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  br label %320

21:                                               ; preds = %14
  %22 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %23 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 8
  %25 = call i64 @test_and_set_bit(i32 0, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %320

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %319, %28
  %30 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %31 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %33, 16
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %37 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 9
  %39 = call i64 @hdlcdrv_hbuf_full(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %43 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 8
  %45 = call i32 @clear_bit(i32 0, i32* %44)
  br label %320

46:                                               ; preds = %35
  %47 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %48 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 9
  %50 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %51 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hdlcdrv_hbuf_put(i32* %49, i32 %53)
  %55 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %56 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %57, align 4
  %60 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %61 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 16
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %46, %29
  %66 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %67 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %70 [
    i32 0, label %75
    i32 1, label %75
    i32 2, label %199
  ]

70:                                               ; preds = %65
  %71 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %72 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 8
  %74 = call i32 @clear_bit(i32 0, i32* %73)
  br label %320

75:                                               ; preds = %65, %65
  %76 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %77 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %75
  %82 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %83 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %88 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 32382, %90
  %92 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %93 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %98 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 16
  store i32 %101, i32* %99, align 8
  br label %319

102:                                              ; preds = %75
  %103 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %104 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %110 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 8
  %112 = call i32 @clear_bit(i32 0, i32* %111)
  br label %320

113:                                              ; preds = %102
  %114 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %115 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %114, i32 0, i32 2
  %116 = load %struct.sk_buff*, %struct.sk_buff** %115, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %9, align 8
  %117 = icmp ne %struct.sk_buff* %116, null
  br i1 %117, label %136, label %118

118:                                              ; preds = %113
  %119 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %120 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %121 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @tenms_to_2flags(%struct.hdlcdrv_state* %119, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 2
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store i32 2, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %118
  %129 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %130 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %134 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  br label %319

136:                                              ; preds = %113
  %137 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %138 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %137, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %138, align 8
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = call i32 @netif_wake_queue(%struct.net_device* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @HDLCDRV_MAXFLEN, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %160

151:                                              ; preds = %148, %136
  %152 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %153 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i32 0, i32* %154, align 8
  %155 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %156 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  store i32 1, i32* %157, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %158)
  br label %319

160:                                              ; preds = %148
  %161 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %162 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %163 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %161, i32 1, i32* %165, i32 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %169 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %168)
  %170 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %171 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %175 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  store i32* %173, i32** %176, align 8
  %177 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %178 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @append_crc_ccitt(i32* %180, i32 %181)
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 2
  %185 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %186 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 6
  store i32 %184, i32* %187, align 8
  %188 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %189 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 2, i32* %190, align 8
  %191 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %192 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 7
  store i32 0, i32* %193, align 4
  %194 = load %struct.net_device*, %struct.net_device** %3, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  br label %319

199:                                              ; preds = %65
  %200 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %201 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %199
  %206 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %207 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  store i32 0, i32* %208, align 8
  %209 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %210 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  store i32 1, i32* %211, align 4
  br label %319

212:                                              ; preds = %199
  %213 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %214 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %215, align 8
  %218 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %219 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 5
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %224 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = shl i32 %222, %226
  %228 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %229 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %227
  store i32 %232, i32* %230, align 4
  %233 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %234 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = ashr i32 %236, 8
  store i32 %237, i32* %235, align 4
  %238 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %239 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i32 1
  store i32* %242, i32** %240, align 8
  %243 = load i32, i32* %241, align 4
  %244 = shl i32 %243, 16
  %245 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %246 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %244
  store i32 %249, i32* %247, align 4
  store i32 126976, i32* %5, align 4
  store i32 65536, i32* %6, align 4
  %250 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %251 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sub nsw i32 31, %253
  %255 = lshr i32 -1, %254
  store i32 %255, i32* %7, align 4
  %256 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %257 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 8
  store i32 %260, i32* %258, align 8
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %308, %212
  %262 = load i32, i32* %8, align 4
  %263 = icmp slt i32 %262, 8
  br i1 %263, label %264, label %318

264:                                              ; preds = %261
  %265 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %266 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %5, align 4
  %270 = and i32 %268, %269
  %271 = load i32, i32* %5, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %264
  br label %308

274:                                              ; preds = %264
  %275 = load i32, i32* %6, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %278 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, %276
  store i32 %281, i32* %279, align 4
  %282 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %283 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %7, align 4
  %287 = and i32 %285, %286
  %288 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %289 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %7, align 4
  %293 = xor i32 %292, -1
  %294 = and i32 %291, %293
  %295 = shl i32 %294, 1
  %296 = or i32 %287, %295
  %297 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %298 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  store i32 %296, i32* %299, align 4
  %300 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %301 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 8
  %305 = load i32, i32* %7, align 4
  %306 = shl i32 %305, 1
  %307 = or i32 %306, 1
  store i32 %307, i32* %7, align 4
  br label %308

308:                                              ; preds = %274, %273
  %309 = load i32, i32* %8, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %8, align 4
  %311 = load i32, i32* %5, align 4
  %312 = shl i32 %311, 1
  store i32 %312, i32* %5, align 4
  %313 = load i32, i32* %6, align 4
  %314 = shl i32 %313, 1
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %7, align 4
  %316 = shl i32 %315, 1
  %317 = or i32 %316, 1
  store i32 %317, i32* %7, align 4
  br label %261

318:                                              ; preds = %261
  br label %319

319:                                              ; preds = %318, %205, %160, %151, %128, %81
  br label %29

320:                                              ; preds = %108, %70, %41, %27, %20
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @hdlcdrv_hbuf_full(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hdlcdrv_hbuf_put(i32*, i32) #1

declare dso_local i32 @tenms_to_2flags(%struct.hdlcdrv_state*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @append_crc_ccitt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
