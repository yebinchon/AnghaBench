; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_fill_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_fill_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.jme_ring* }
%struct.jme_ring = type { %struct.jme_buffer_info*, i64 }
%struct.jme_buffer_info = type { i64, i32, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }
%struct.txdesc = type { %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@TXFLAG_OWN = common dso_local global i32 0, align 4
@TXFLAG_INT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, %struct.sk_buff*, i32)* @jme_fill_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_fill_tx_desc(%struct.jme_adapter* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jme_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jme_ring*, align 8
  %9 = alloca %struct.txdesc*, align 8
  %10 = alloca %struct.jme_buffer_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %13, i32 0, i32 0
  %15 = load %struct.jme_ring*, %struct.jme_ring** %14, align 8
  %16 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %15, i64 0
  store %struct.jme_ring* %16, %struct.jme_ring** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.jme_ring*, %struct.jme_ring** %8, align 8
  %18 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.txdesc*
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %20, i64 %22
  store %struct.txdesc* %23, %struct.txdesc** %9, align 8
  %24 = load %struct.jme_ring*, %struct.jme_ring** %8, align 8
  %25 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %24, i32 0, i32 0
  %26 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %26, i64 %28
  store %struct.jme_buffer_info* %29, %struct.jme_buffer_info** %10, align 8
  %30 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %31 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %35 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %39 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %43 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %51 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = call i32 (...) @wmb()
  %54 = load i32, i32* @TXFLAG_OWN, align 4
  %55 = load i32, i32* @TXFLAG_INT, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %59 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = call i64 @jme_tx_tso(%struct.sk_buff* %57, i32* %60, i32* %11)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %3
  %64 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @jme_tx_csum(%struct.jme_adapter* %64, %struct.sk_buff* %65, i32* %11)
  br label %67

67:                                               ; preds = %63, %3
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %70 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = call i32 @jme_tx_vlan(%struct.sk_buff* %68, i32* %71, i32* %11)
  %73 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @jme_map_tx_skb(%struct.jme_adapter* %73, %struct.sk_buff* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %113

81:                                               ; preds = %67
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %84 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = call i32 (...) @wmb()
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 2
  %92 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %93 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %96 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %95, i32 0, i32 2
  store %struct.sk_buff* %94, %struct.sk_buff** %96, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %101 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i64, i64* @jiffies, align 8
  %103 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %104 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %106 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %81
  %110 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %111 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %110, i32 0, i32 0
  store i64 -1, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %81
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %79
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @jme_tx_tso(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @jme_tx_csum(%struct.jme_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @jme_tx_vlan(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @jme_map_tx_skb(%struct.jme_adapter*, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
