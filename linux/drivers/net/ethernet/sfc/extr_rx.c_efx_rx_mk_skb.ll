; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_mk_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_mk_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.efx_channel = type { i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, i32, i32, i32, i32 }
%struct.efx_rx_buffer = type { i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.efx_channel*, %struct.efx_rx_buffer*, i32, i32*, i32)* @efx_rx_mk_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @efx_rx_mk_skb(%struct.efx_channel* %0, %struct.efx_rx_buffer* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.efx_channel*, align 8
  %8 = alloca %struct.efx_rx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_nic*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %7, align 8
  store %struct.efx_rx_buffer* %1, %struct.efx_rx_buffer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.efx_channel*, %struct.efx_channel** %7, align 8
  %15 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %14, i32 0, i32 2
  %16 = load %struct.efx_nic*, %struct.efx_nic** %15, align 8
  store %struct.efx_nic* %16, %struct.efx_nic** %12, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  %29 = call %struct.sk_buff* @netdev_alloc_skb(i32 %19, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %13, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %31 = icmp eq %struct.sk_buff* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 5
  %38 = call i32 @atomic_inc(i32* %37)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %172

39:                                               ; preds = %5
  %40 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %41 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @memcpy(i32 %53, i32* %60, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %68 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = call i32 @skb_reserve(%struct.sk_buff* %67, i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @__skb_put(%struct.sk_buff* %76, i32 %77)
  %79 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %80 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %140

84:                                               ; preds = %39
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %87 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %92 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %134, %84
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %102 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %105 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %108 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @skb_fill_page_desc(%struct.sk_buff* %96, i32 %100, i32* %103, i32 %106, i32 %109)
  %111 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %112 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %111, i32 0, i32 2
  store i32* null, i32** %112, align 8
  %113 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %114 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %121 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %95
  br label %139

134:                                              ; preds = %95
  %135 = load %struct.efx_channel*, %struct.efx_channel** %7, align 8
  %136 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %135, i32 0, i32 1
  %137 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %138 = call %struct.efx_rx_buffer* @efx_rx_buf_next(i32* %136, %struct.efx_rx_buffer* %137)
  store %struct.efx_rx_buffer* %138, %struct.efx_rx_buffer** %8, align 8
  br label %95

139:                                              ; preds = %133
  br label %150

140:                                              ; preds = %39
  %141 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %142 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %145 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @__free_pages(i32* %143, i32 %146)
  %148 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %8, align 8
  %149 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %140, %139
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %153 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = mul i32 %151, %154
  %156 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %161 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %162 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @eth_type_trans(%struct.sk_buff* %160, i32 %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %168 = load %struct.efx_channel*, %struct.efx_channel** %7, align 8
  %169 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %168, i32 0, i32 0
  %170 = call i32 @skb_mark_napi_id(%struct.sk_buff* %167, i32* %169)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %171, %struct.sk_buff** %6, align 8
  br label %172

172:                                              ; preds = %150, %35
  %173 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %173
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buf_next(i32*, %struct.efx_rx_buffer*) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_mark_napi_id(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
