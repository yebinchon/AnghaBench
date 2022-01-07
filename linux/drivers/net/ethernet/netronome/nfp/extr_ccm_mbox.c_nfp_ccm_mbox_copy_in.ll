; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_copy_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_copy_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }

@NFP_NET_CFG_MBOX_SIMPLE_VAL = common dso_local global i32 0, align 4
@NFP_NET_MBOX_TLV_TYPE_MSG = common dso_local global i32 0, align 4
@NFP_NET_MBOX_TLV_TYPE_RESV = common dso_local global i32 0, align 4
@NFP_NET_MBOX_TLV_TYPE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, %struct.sk_buff*)* @nfp_ccm_mbox_copy_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_ccm_mbox_copy_in(%struct.nfp_net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFP_NET_CFG_MBOX_SIMPLE_VAL, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call %struct.sk_buff* @__skb_peek(i32* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  br label %23

23:                                               ; preds = %2, %109
  %24 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @NFP_NET_MBOX_TLV_TYPE_MSG, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nfp_ccm_mbox_write_tlv(%struct.nfp_net* %24, i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 4
  store i32 %40, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %57, %23
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = call i32 @nn_writel(%struct.nfp_net* %46, i32 %47, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 3
  %75 = call i32 @memcpy(i32* %12, i32* %70, i32 %74)
  %76 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @be32_to_cpu(i32 %78)
  %80 = call i32 @nn_writel(%struct.nfp_net* %76, i32 %77, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %66, %60
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @round_up(i32 %86, i32 4)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call i32 @nfp_ccm_mbox_maxlen(%struct.sk_buff* %88)
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %83
  %95 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @NFP_NET_MBOX_TLV_TYPE_RESV, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @nfp_ccm_mbox_write_tlv(%struct.nfp_net* %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 4, %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %94, %83
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = icmp eq %struct.sk_buff* %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %115

109:                                              ; preds = %104
  %110 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %111 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call %struct.sk_buff* @skb_queue_next(i32* %112, %struct.sk_buff* %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %5, align 8
  br label %23

115:                                              ; preds = %108
  %116 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @NFP_NET_MBOX_TLV_TYPE_END, align 4
  %119 = call i32 @nfp_ccm_mbox_write_tlv(%struct.nfp_net* %116, i32 %117, i32 %118, i32 0)
  ret void
}

declare dso_local %struct.sk_buff* @__skb_peek(i32*) #1

declare dso_local i32 @nfp_ccm_mbox_write_tlv(%struct.nfp_net*, i32, i32, i32) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @nfp_ccm_mbox_maxlen(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
