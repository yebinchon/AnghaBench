; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_sunlance.c_lance_rx_dvma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_sunlance.c_lance_rx_dvma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lance_private = type { i32, %struct.lance_init_block* }
%struct.lance_init_block = type { i32**, %struct.lance_rx_desc* }
%struct.lance_rx_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@LE_R1_OWN = common dso_local global i32 0, align 4
@LE_R1_POK = common dso_local global i32 0, align 4
@LE_R1_ERR = common dso_local global i32 0, align 4
@LE_R1_BUF = common dso_local global i32 0, align 4
@LE_R1_CRC = common dso_local global i32 0, align 4
@LE_R1_OFL = common dso_local global i32 0, align 4
@LE_R1_FRA = common dso_local global i32 0, align 4
@LE_R1_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_rx_dvma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_rx_dvma(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_init_block*, align 8
  %5 = alloca %struct.lance_rx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.lance_private* @netdev_priv(%struct.net_device* %10)
  store %struct.lance_private* %11, %struct.lance_private** %3, align 8
  %12 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %13 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %12, i32 0, i32 1
  %14 = load %struct.lance_init_block*, %struct.lance_init_block** %13, align 8
  store %struct.lance_init_block* %14, %struct.lance_init_block** %4, align 8
  %15 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %16 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %19 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %18, i32 0, i32 1
  %20 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %20, i64 %22
  store %struct.lance_rx_desc* %23, %struct.lance_rx_desc** %5, align 8
  br label %24

24:                                               ; preds = %184, %1
  %25 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %5, align 8
  %26 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @LE_R1_OWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %191

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LE_R1_POK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @LE_R1_POK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %175

49:                                               ; preds = %32
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @LE_R1_ERR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @LE_R1_BUF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @LE_R1_CRC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LE_R1_OFL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @LE_R1_FRA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @LE_R1_EOP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %98
  br label %174

110:                                              ; preds = %49
  %111 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %5, align 8
  %112 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 4095
  %115 = sub nsw i32 %114, 4
  store i32 %115, i32* %7, align 4
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 2
  %119 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %116, i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %9, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = icmp eq %struct.sk_buff* %120, null
  br i1 %121, label %122, label %138

122:                                              ; preds = %110
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %5, align 8
  %129 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* @LE_R1_OWN, align 4
  %131 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %5, align 8
  %132 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i8* @RX_NEXT(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %137 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %195

138:                                              ; preds = %110
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %139
  store i32 %144, i32* %142, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %146 = call i32 @skb_reserve(%struct.sk_buff* %145, i32 2)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @skb_put(%struct.sk_buff* %147, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %151 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %152 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = bitcast i32* %158 to i8*
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %150, i8* %159, i32 %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = call i32 @eth_type_trans(%struct.sk_buff* %162, %struct.net_device* %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %168 = call i32 @netif_rx(%struct.sk_buff* %167)
  %169 = load %struct.net_device*, %struct.net_device** %2, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %138, %109
  br label %175

175:                                              ; preds = %174, %38
  %176 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %5, align 8
  %177 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  %178 = load i32, i32* @LE_R1_OWN, align 4
  %179 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %5, align 8
  %180 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i8* @RX_NEXT(i32 %181)
  %183 = ptrtoint i8* %182 to i32
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %175
  %185 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %186 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %185, i32 0, i32 1
  %187 = load %struct.lance_rx_desc*, %struct.lance_rx_desc** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.lance_rx_desc, %struct.lance_rx_desc* %187, i64 %189
  store %struct.lance_rx_desc* %190, %struct.lance_rx_desc** %5, align 8
  br label %24

191:                                              ; preds = %24
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %194 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %122
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i8* @RX_NEXT(i32) #1

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
