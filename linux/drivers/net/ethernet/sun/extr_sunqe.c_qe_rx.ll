; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunqe = type { i32, %struct.net_device*, i32, %struct.sunqe_buffers*, %struct.TYPE_3__* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.sunqe_buffers = type { i8** }
%struct.TYPE_3__ = type { %struct.qe_rxd* }
%struct.qe_rxd = type { i32, i64 }
%struct.sk_buff = type { i32 }

@RXD_OWN = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@rx_buf = common dso_local global i32 0, align 4
@RX_RING_MAXSIZE = common dso_local global i32 0, align 4
@RXD_LENGTH = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunqe*)* @qe_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_rx(%struct.sunqe* %0) #0 {
  %2 = alloca %struct.sunqe*, align 8
  %3 = alloca %struct.qe_rxd*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.qe_rxd*, align 8
  %6 = alloca %struct.sunqe_buffers*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.qe_rxd*, align 8
  %14 = alloca i32, align 4
  store %struct.sunqe* %0, %struct.sunqe** %2, align 8
  %15 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %16 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.qe_rxd*, %struct.qe_rxd** %18, align 8
  %20 = getelementptr inbounds %struct.qe_rxd, %struct.qe_rxd* %19, i64 0
  store %struct.qe_rxd* %20, %struct.qe_rxd** %3, align 8
  %21 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %22 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %21, i32 0, i32 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %4, align 8
  %24 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %25 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %24, i32 0, i32 3
  %26 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %25, align 8
  store %struct.sunqe_buffers* %26, %struct.sunqe_buffers** %6, align 8
  %27 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %28 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %7, align 8
  %31 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %32 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.qe_rxd*, %struct.qe_rxd** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qe_rxd, %struct.qe_rxd* %34, i64 %36
  store %struct.qe_rxd* %37, %struct.qe_rxd** %5, align 8
  br label %38

38:                                               ; preds = %142, %1
  %39 = load %struct.qe_rxd*, %struct.qe_rxd** %5, align 8
  %40 = getelementptr inbounds %struct.qe_rxd, %struct.qe_rxd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @RXD_OWN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %156

46:                                               ; preds = %38
  %47 = load %struct.sunqe_buffers*, %struct.sunqe_buffers** %6, align 8
  %48 = getelementptr inbounds %struct.sunqe_buffers, %struct.sunqe_buffers* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @RX_RING_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %49, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8* %57, i8** %11, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @rx_buf, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @RX_RING_SIZE, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %60, %62
  %64 = call i64 @qebuf_offset(i32 %59, i32 %63)
  %65 = add nsw i64 %58, %64
  store i64 %65, i64* %12, align 8
  %66 = load %struct.qe_rxd*, %struct.qe_rxd** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @RX_RING_SIZE, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @RX_RING_MAXSIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.qe_rxd, %struct.qe_rxd* %66, i64 %73
  store %struct.qe_rxd* %74, %struct.qe_rxd** %13, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @RXD_LENGTH, align 4
  %77 = and i32 %75, %76
  %78 = sub nsw i32 %77, 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @ETH_ZLEN, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %46
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %142

98:                                               ; preds = %46
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 2
  %102 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %99, i32 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %10, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = icmp eq %struct.sk_buff* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %141

111:                                              ; preds = %98
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = call i32 @skb_reserve(%struct.sk_buff* %112, i32 2)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @skb_put(%struct.sk_buff* %114, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %117, i8* %118, i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %123 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %122, i32 0, i32 1
  %124 = load %struct.net_device*, %struct.net_device** %123, align 8
  %125 = call i32 @eth_type_trans(%struct.sk_buff* %121, %struct.net_device* %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %129 = call i32 @netif_rx(%struct.sk_buff* %128)
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %135
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %111, %105
  br label %142

142:                                              ; preds = %141, %82
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.qe_rxd*, %struct.qe_rxd** %13, align 8
  %145 = getelementptr inbounds %struct.qe_rxd, %struct.qe_rxd* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* @RXD_OWN, align 4
  %147 = or i32 %146, ptrtoint (i32* @RXD_LENGTH to i32)
  %148 = load %struct.qe_rxd*, %struct.qe_rxd** %13, align 8
  %149 = getelementptr inbounds %struct.qe_rxd, %struct.qe_rxd* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @NEXT_RX(i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load %struct.qe_rxd*, %struct.qe_rxd** %3, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.qe_rxd, %struct.qe_rxd* %152, i64 %154
  store %struct.qe_rxd* %155, %struct.qe_rxd** %5, align 8
  br label %38

156:                                              ; preds = %38
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %159 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  ret void
}

declare dso_local i64 @qebuf_offset(i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @NEXT_RX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
