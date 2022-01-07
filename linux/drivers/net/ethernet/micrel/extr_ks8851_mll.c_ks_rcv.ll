; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, i32, %struct.type_frame_head* }
%struct.type_frame_head = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }

@KS_RXFCTR = common dso_local global i32 0, align 4
@KS_RXFHSR = common dso_local global i32 0, align 4
@KS_RXFHBCR = common dso_local global i32 0, align 4
@RXFSHR_RXFV = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@KS_RXQCR = common dso_local global i32 0, align 4
@RXQCR_RRXEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*, %struct.net_device*)* @ks_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_rcv(%struct.ks_net* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.ks_net*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.type_frame_head*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ks_net* %0, %struct.ks_net** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %9 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %8, i32 0, i32 2
  %10 = load %struct.type_frame_head*, %struct.type_frame_head** %9, align 8
  store %struct.type_frame_head* %10, %struct.type_frame_head** %6, align 8
  %11 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %12 = load i32, i32* @KS_RXFCTR, align 4
  %13 = call i32 @ks_rdreg16(%struct.ks_net* %11, i32 %12)
  %14 = ashr i32 %13, 8
  %15 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %16 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %20 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %26 = load i32, i32* @KS_RXFHSR, align 4
  %27 = call i32 @ks_rdreg16(%struct.ks_net* %25, i32 %26)
  %28 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %29 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %31 = load i32, i32* @KS_RXFHBCR, align 4
  %32 = call i32 @ks_rdreg16(%struct.ks_net* %30, i32 %31)
  %33 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %34 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %36 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %35, i32 1
  store %struct.type_frame_head* %36, %struct.type_frame_head** %6, align 8
  br label %37

37:                                               ; preds = %24
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %42 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %41, i32 0, i32 2
  %43 = load %struct.type_frame_head*, %struct.type_frame_head** %42, align 8
  store %struct.type_frame_head* %43, %struct.type_frame_head** %6, align 8
  br label %44

44:                                               ; preds = %171, %105, %40
  %45 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %46 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %174

50:                                               ; preds = %44
  %51 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %52 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RXFSHR_RXFV, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %59 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RX_BUF_SIZE, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %65 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 0
  br label %68

68:                                               ; preds = %63, %57, %50
  %69 = phi i1 [ true, %57 ], [ true, %50 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  %74 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %75 = load i32, i32* @KS_RXQCR, align 4
  %76 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %77 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RXQCR_RRXEF, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ks_wrreg16(%struct.ks_net* %74, i32 %75, i32 %80)
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %88 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RXFSHR_RXFV, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %73
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %105

99:                                               ; preds = %73
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %107 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %106, i32 1
  store %struct.type_frame_head* %107, %struct.type_frame_head** %6, align 8
  br label %44

108:                                              ; preds = %68
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %111 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 16
  %114 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %109, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %7, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = call i64 @likely(%struct.sk_buff* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %108
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = call i32 @skb_reserve(%struct.sk_buff* %119, i32 2)
  %121 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %127 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ks_read_qmu(%struct.ks_net* %121, i32* %125, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %132 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 4
  %135 = call i32 @skb_put(%struct.sk_buff* %130, i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = call i32 @eth_type_trans(%struct.sk_buff* %136, %struct.net_device* %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = call i32 @netif_rx(%struct.sk_buff* %141)
  %143 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %144 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 4
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %146
  store i32 %151, i32* %149, align 4
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %171

157:                                              ; preds = %108
  %158 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %159 = load i32, i32* @KS_RXQCR, align 4
  %160 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %161 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @RXQCR_RRXEF, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @ks_wrreg16(%struct.ks_net* %158, i32 %159, i32 %164)
  %166 = load %struct.net_device*, %struct.net_device** %4, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %157, %118
  %172 = load %struct.type_frame_head*, %struct.type_frame_head** %6, align 8
  %173 = getelementptr inbounds %struct.type_frame_head, %struct.type_frame_head* %172, i32 1
  store %struct.type_frame_head* %173, %struct.type_frame_head** %6, align 8
  br label %44

174:                                              ; preds = %44
  ret void
}

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @ks_read_qmu(%struct.ks_net*, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
