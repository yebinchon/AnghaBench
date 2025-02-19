; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_cxgb4_pktgl_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_cxgb4_pktgl_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.pkt_gl = type { i32, i32 }

@RX_COPY_THRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @cxgb4_pktgl_to_skb(%struct.pkt_gl* %0, i32 %1, i32 %2) #0 {
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
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %15 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sk_buff* @dev_alloc_skb(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %83

25:                                               ; preds = %13
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %28 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__skb_put(%struct.sk_buff* %26, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %33 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %36 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %31, i32 %34, i32 %37)
  br label %82

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.sk_buff* @dev_alloc_skb(i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %83

49:                                               ; preds = %39
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @__skb_put(%struct.sk_buff* %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %55 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %53, i32 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @copy_frags(%struct.sk_buff* %59, %struct.pkt_gl* %60, i32 %61)
  %63 = load %struct.pkt_gl*, %struct.pkt_gl** %4, align 8
  %64 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub i32 %70, %71
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %49, %25
  br label %83

83:                                               ; preds = %82, %48, %24
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %84
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

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
