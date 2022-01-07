; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_free_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_free_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc35815_local = type { i32*, i32, i32, %struct.TYPE_8__*, i32*, i32*, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@TX_FD_NUM = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@RX_BUF_NUM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FD_PAGE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tc35815_free_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc35815_free_queues(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tc35815_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tc35815_local* @netdev_priv(%struct.net_device* %7)
  store %struct.tc35815_local* %8, %struct.tc35815_local** %3, align 8
  %9 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %10 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %9, i32 0, i32 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %104

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %100, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TX_FD_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %103

18:                                               ; preds = %14
  %19 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %20 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %19, i32 0, i32 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %33 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %32, i32 0, i32 9
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  br label %41

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40, %31
  %42 = phi %struct.sk_buff* [ %39, %31 ], [ null, %40 ]
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %44 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %43, i32 0, i32 9
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = icmp ne %struct.sk_buff* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %57, label %90

57:                                               ; preds = %41
  %58 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %59 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %62 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %61, i32 0, i32 9
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %73 = call i32 @pci_unmap_single(i32 %60, i64 %68, i32 %71, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @dev_kfree_skb(%struct.sk_buff* %74)
  %76 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %77 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %76, i32 0, i32 9
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %82, align 8
  %83 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %84 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %83, i32 0, i32 9
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %57, %41
  %91 = call i32 @cpu_to_le32(i32 -1)
  %92 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %93 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %92, i32 0, i32 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %91, i32* %99, align 4
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %14

103:                                              ; preds = %14
  br label %104

104:                                              ; preds = %103, %1
  %105 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %106 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %105, i32 0, i32 7
  store i32* null, i32** %106, align 8
  %107 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %108 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %107, i32 0, i32 6
  store i32* null, i32** %108, align 8
  %109 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %110 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %109, i32 0, i32 5
  store i32* null, i32** %110, align 8
  %111 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %112 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %111, i32 0, i32 4
  store i32* null, i32** %112, align 8
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %156, %104
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @RX_BUF_NUM, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %159

117:                                              ; preds = %113
  %118 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %119 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %118, i32 0, i32 3
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %155

127:                                              ; preds = %117
  %128 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %129 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %132 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %131, i32 0, i32 3
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %140 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %139, i32 0, i32 3
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @free_rxbuf_skb(i32 %130, i32* %138, i32 %146)
  %148 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %149 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %148, i32 0, i32 3
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32* null, i32** %154, align 8
  br label %155

155:                                              ; preds = %127, %117
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %113

159:                                              ; preds = %113
  %160 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %161 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  %165 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %166 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = load i32, i32* @FD_PAGE_NUM, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %172 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %175 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @pci_free_consistent(i32 %167, i32 %170, i32* %173, i32 %176)
  %178 = load %struct.tc35815_local*, %struct.tc35815_local** %3, align 8
  %179 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %164, %159
  ret void
}

declare dso_local %struct.tc35815_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @free_rxbuf_skb(i32, i32*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
