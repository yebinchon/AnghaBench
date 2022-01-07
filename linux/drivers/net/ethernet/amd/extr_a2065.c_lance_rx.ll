; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lance_private = type { i32, i32, %struct.lance_regs*, %struct.lance_init_block* }
%struct.lance_regs = type { i32 }
%struct.lance_init_block = type { i32**, %struct.lance_rx_desc* }
%struct.lance_rx_desc = type { i8, i32 }
%struct.sk_buff = type { i32 }

@LE_C0_RINT = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_R1_OWN = common dso_local global i8 0, align 1
@LE_R1_POK = common dso_local global i8 0, align 1
@LE_R1_ERR = common dso_local global i8 0, align 1
@LE_R1_BUF = common dso_local global i8 0, align 1
@LE_R1_CRC = common dso_local global i8 0, align 1
@LE_R1_OFL = common dso_local global i8 0, align 1
@LE_R1_FRA = common dso_local global i8 0, align 1
@LE_R1_EOP = common dso_local global i8 0, align 1
@RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lance_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_rx(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lance_private*, align 8
  %5 = alloca %struct.lance_init_block*, align 8
  %6 = alloca %struct.lance_regs*, align 8
  %7 = alloca %struct.lance_rx_desc*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.lance_private* @netdev_priv(%struct.net_device* %11)
  store %struct.lance_private* %12, %struct.lance_private** %4, align 8
  %13 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %14 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %13, i32 0, i32 3
  %15 = load %struct.lance_init_block*, %struct.lance_init_block** %14, align 8
  store %struct.lance_init_block* %15, %struct.lance_init_block** %5, align 8
  %16 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %17 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %16, i32 0, i32 2
  %18 = load %struct.lance_regs*, %struct.lance_regs** %17, align 8
  store %struct.lance_regs* %18, %struct.lance_regs** %6, align 8
  %19 = load i32, i32* @LE_C0_RINT, align 4
  %20 = load i32, i32* @LE_C0_INEA, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.lance_regs*, %struct.lance_regs** %6, align 8
  %23 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %22, i32 0, i32 0
  store volatile i32 %21, i32* %23, align 4
  %24 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %25 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %24, i32 0, i32 1
  %26 = load volatile %struct.lance_rx_desc*, %struct.lance_rx_desc** %25, align 8
  %27 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %28 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %26, i64 %30
  store %struct.lance_rx_desc* %31, %struct.lance_rx_desc** %7, align 8
  br label %32

32:                                               ; preds = %223, %1
  %33 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %7, align 8
  %34 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %33, i32 0, i32 0
  %35 = load volatile i8, i8* %34, align 4
  store i8 %35, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @LE_R1_OWN, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %232

42:                                               ; preds = %32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @LE_R1_POK, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = load i8, i8* @LE_R1_POK, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %223

62:                                               ; preds = %42
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @LE_R1_ERR, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %62
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @LE_R1_BUF, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @LE_R1_CRC, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %82
  %96 = load i8, i8* %8, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @LE_R1_OFL, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load i8, i8* %8, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @LE_R1_FRA, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %108
  %122 = load i8, i8* %8, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @LE_R1_EOP, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %121
  br label %206

135:                                              ; preds = %62
  %136 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %7, align 8
  %137 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %136, i32 0, i32 1
  %138 = load volatile i32, i32* %137, align 4
  %139 = and i32 %138, 4095
  %140 = sub nsw i32 %139, 4
  store i32 %140, i32* %9, align 4
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 2
  %144 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %141, i32 %143)
  store %struct.sk_buff* %144, %struct.sk_buff** %10, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = icmp ne %struct.sk_buff* %145, null
  br i1 %146, label %168, label %147

147:                                              ; preds = %135
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %7, align 8
  %154 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %153, i32 0, i32 1
  store volatile i32 0, i32* %154, align 4
  %155 = load i8, i8* @LE_R1_OWN, align 1
  %156 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %7, align 8
  %157 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %156, i32 0, i32 0
  store volatile i8 %155, i8* %157, align 4
  %158 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %159 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  %162 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %163 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %161, %164
  %166 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %167 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  store i32 0, i32* %2, align 4
  br label %233

168:                                              ; preds = %135
  %169 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %170 = call i32 @skb_reserve(%struct.sk_buff* %169, i32 2)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @skb_put(%struct.sk_buff* %171, i32 %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %175 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %176 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %175, i32 0, i32 0
  %177 = load volatile i32**, i32*** %176, align 8
  %178 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %179 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %177, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = bitcast i32* %184 to i8*
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %174, i8* %185, i32 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %189 = load %struct.net_device*, %struct.net_device** %3, align 8
  %190 = call i32 @eth_type_trans(%struct.sk_buff* %188, %struct.net_device* %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %194 = call i32 @netif_rx(%struct.sk_buff* %193)
  %195 = load %struct.net_device*, %struct.net_device** %3, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.net_device*, %struct.net_device** %3, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %200
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %168, %134
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %7, align 8
  %209 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %208, i32 0, i32 1
  store volatile i32 0, i32* %209, align 4
  %210 = load i8, i8* @LE_R1_OWN, align 1
  %211 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %7, align 8
  %212 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %211, i32 0, i32 0
  store volatile i8 %210, i8* %212, align 4
  %213 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %214 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  %217 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %218 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %216, %219
  %221 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %222 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %207, %51
  %224 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %225 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %224, i32 0, i32 1
  %226 = load volatile %struct.lance_rx_desc*, %struct.lance_rx_desc** %225, align 8
  %227 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %228 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %226, i64 %230
  store %struct.lance_rx_desc* %231, %struct.lance_rx_desc** %7, align 8
  br label %32

232:                                              ; preds = %32
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %232, %147
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
