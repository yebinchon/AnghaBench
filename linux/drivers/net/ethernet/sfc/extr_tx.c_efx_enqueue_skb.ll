; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_enqueue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_enqueue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32*)*, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFX_TX_CB_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@efx_piobuf_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_enqueue_skb(%struct.efx_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_tx_queue*, align 8
  %13 = alloca %struct.efx_tx_queue*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %15 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @netdev_xmit_more()
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @skb_is_gso(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %28, %24 ], [ 0, %29 ]
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %35
  %39 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %40 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %39, i32 0, i32 1
  %41 = load i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32*)*, i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32*)** %40, align 8
  %42 = icmp ne i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32*)* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %44)
  %46 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %47 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %46, i32 0, i32 1
  %48 = load i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32*)*, i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32*)** %47, align 8
  %49 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 %48(%struct.efx_tx_queue* %49, %struct.sk_buff* %50, i32* %8)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %38
  %57 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @efx_tx_tso_fallback(%struct.efx_tx_queue* %57, %struct.sk_buff* %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %61 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %180

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %157

72:                                               ; preds = %68
  br label %94

73:                                               ; preds = %35
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @EFX_TX_CB_SIZE, align 4
  %81 = icmp ule i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i64 @efx_enqueue_skb_copy(%struct.efx_tx_queue* %83, %struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %157

88:                                               ; preds = %82
  %89 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %90 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %88, %78, %73
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @efx_tx_map_data(%struct.efx_tx_queue* %98, %struct.sk_buff* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %157

104:                                              ; preds = %97, %94
  %105 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %106 = call i32 @efx_tx_maybe_stop_queue(%struct.efx_tx_queue* %105)
  %107 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %108 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @__netdev_tx_sent_queue(i32 %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %104
  %115 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %116 = call %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue* %115)
  store %struct.efx_tx_queue* %116, %struct.efx_tx_queue** %12, align 8
  %117 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %12, align 8
  %118 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %12, align 8
  %123 = call i32 @efx_nic_push_buffers(%struct.efx_tx_queue* %122)
  br label %124

124:                                              ; preds = %121, %114
  %125 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %126 = call i32 @efx_nic_push_buffers(%struct.efx_tx_queue* %125)
  br label %131

127:                                              ; preds = %104
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %130 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %131
  %135 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %136 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %141 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %147 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, %145
  store i64 %149, i64* %147, align 8
  br label %155

150:                                              ; preds = %131
  %151 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %152 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %150, %134
  %156 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %156, i32* %3, align 4
  br label %180

157:                                              ; preds = %103, %87, %71
  %158 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @efx_enqueue_unwind(%struct.efx_tx_queue* %158, i32 %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %161)
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %157
  %166 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %167 = call %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue* %166)
  store %struct.efx_tx_queue* %167, %struct.efx_tx_queue** %13, align 8
  %168 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %13, align 8
  %169 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %13, align 8
  %174 = call i32 @efx_nic_push_buffers(%struct.efx_tx_queue* %173)
  br label %175

175:                                              ; preds = %172, %165
  %176 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %177 = call i32 @efx_nic_push_buffers(%struct.efx_tx_queue* %176)
  br label %178

178:                                              ; preds = %175, %157
  %179 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %155, %66
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i32 @efx_tx_tso_fallback(%struct.efx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i64 @efx_enqueue_skb_copy(%struct.efx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i64 @efx_tx_map_data(%struct.efx_tx_queue*, %struct.sk_buff*, i32) #1

declare dso_local i32 @efx_tx_maybe_stop_queue(%struct.efx_tx_queue*) #1

declare dso_local i64 @__netdev_tx_sent_queue(i32, i32, i32) #1

declare dso_local %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_nic_push_buffers(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_enqueue_unwind(%struct.efx_tx_queue*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
