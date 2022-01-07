; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_queue_wq_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i64 }
%struct.vnic_wq = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.vnic_wq_buf* }
%struct.vnic_wq_buf = type { %struct.TYPE_5__*, %struct.vnic_wq_buf*, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*)* @enic_queue_wq_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_queue_wq_skb(%struct.enic* %0, %struct.vnic_wq* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.enic*, align 8
  %5 = alloca %struct.vnic_wq*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnic_wq_buf*, align 8
  store %struct.enic* %0, %struct.enic** %4, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %21)
  store i32 %22, i32* %8, align 4
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.enic*, %struct.enic** %4, align 8
  %25 = getelementptr inbounds %struct.enic, %struct.enic* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.enic*, %struct.enic** %4, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.enic*, %struct.enic** %4, align 8
  %38 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @enic_queue_wq_skb_tso(%struct.enic* %37, %struct.vnic_wq* %38, %struct.sk_buff* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  br label %82

45:                                               ; preds = %33
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.enic*, %struct.enic** %4, align 8
  %52 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @enic_queue_wq_skb_encap(%struct.enic* %51, %struct.vnic_wq* %52, %struct.sk_buff* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %81

58:                                               ; preds = %45
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.enic*, %struct.enic** %4, align 8
  %66 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @enic_queue_wq_skb_csum_l4(%struct.enic* %65, %struct.vnic_wq* %66, %struct.sk_buff* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  br label %80

72:                                               ; preds = %58
  %73 = load %struct.enic*, %struct.enic** %4, align 8
  %74 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @enic_queue_wq_skb_vlan(%struct.enic* %73, %struct.vnic_wq* %74, %struct.sk_buff* %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %72, %64
  br label %81

81:                                               ; preds = %80, %50
  br label %82

82:                                               ; preds = %81, %36
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %127

86:                                               ; preds = %82
  %87 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %88 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %90, align 8
  store %struct.vnic_wq_buf* %91, %struct.vnic_wq_buf** %12, align 8
  br label %92

92:                                               ; preds = %107, %86
  %93 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %12, align 8
  %94 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %12, align 8
  %99 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %102 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %101, i32 0, i32 2
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = icmp ne %struct.TYPE_5__* %100, %103
  br label %105

105:                                              ; preds = %97, %92
  %106 = phi i1 [ false, %92 ], [ %104, %97 ]
  br i1 %106, label %107, label %119

107:                                              ; preds = %105
  %108 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %109 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %12, align 8
  %110 = call i32 @enic_free_wq_buf(%struct.vnic_wq* %108, %struct.vnic_wq_buf* %109)
  %111 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %112 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %12, align 8
  %117 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %116, i32 0, i32 1
  %118 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %117, align 8
  store %struct.vnic_wq_buf* %118, %struct.vnic_wq_buf** %12, align 8
  br label %92

119:                                              ; preds = %105
  %120 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %12, align 8
  %121 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %124 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %123, i32 0, i32 0
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %124, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = call i32 @dev_kfree_skb(%struct.sk_buff* %125)
  br label %127

127:                                              ; preds = %119, %82
  ret void
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @enic_queue_wq_skb_tso(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @enic_queue_wq_skb_encap(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @enic_queue_wq_skb_csum_l4(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @enic_queue_wq_skb_vlan(%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @enic_free_wq_buf(%struct.vnic_wq*, %struct.vnic_wq_buf*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
