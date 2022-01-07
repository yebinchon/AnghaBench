; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_t4vf_pktgl_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_t4vf_pktgl_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.pkt_gl = type { i32, i32 }

@RX_COPY_THRES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.pkt_gl*, i32, i32)* @t4vf_pktgl_to_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @t4vf_pktgl_to_skb(%struct.pkt_gl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pkt_gl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.pkt_gl* %0, %struct.pkt_gl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %9 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RX_COPY_THRES, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %15 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @alloc_skb(i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %85

26:                                               ; preds = %13
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %29 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__skb_put(%struct.sk_buff* %27, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %34 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %37 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %32, i32 %35, i32 %38)
  br label %84

40:                                               ; preds = %3
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @alloc_skb(i32 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %85

51:                                               ; preds = %40
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @__skb_put(%struct.sk_buff* %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %57 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %55, i32 %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @copy_frags(%struct.sk_buff* %61, %struct.pkt_gl* %62, i32 %63)
  %65 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %66 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub i32 %72, %73
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %51, %26
  br label %85

85:                                               ; preds = %84, %50, %25
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %86
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @copy_frags(%struct.sk_buff*, %struct.pkt_gl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
