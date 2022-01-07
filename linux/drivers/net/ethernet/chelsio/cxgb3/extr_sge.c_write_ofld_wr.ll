; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_write_ofld_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_write_ofld_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.sge_txq = type { %struct.TYPE_2__*, %struct.tx_desc* }
%struct.TYPE_2__ = type { i32* }
%struct.tx_desc = type { i32* }
%struct.work_request_hdr = type { i32, i32 }
%struct.sg_ent = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@deferred_unmap_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sk_buff*, %struct.sge_txq*, i32, i32, i32, i32*)* @write_ofld_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ofld_wr(%struct.adapter* %0, %struct.sk_buff* %1, %struct.sge_txq* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sge_txq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.work_request_hdr*, align 8
  %18 = alloca %struct.sg_ent*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.tx_desc*, align 8
  %22 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.sge_txq* %2, %struct.sge_txq** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %23 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %24 = sdiv i32 %23, 2
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %19, align 8
  %28 = alloca %struct.sg_ent, i64 %26, align 16
  store i64 %26, i64* %20, align 8
  %29 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %30 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %29, i32 0, i32 1
  %31 = load %struct.tx_desc*, %struct.tx_desc** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %31, i64 %33
  store %struct.tx_desc* %34, %struct.tx_desc** %21, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call i64 @immediate(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %7
  %39 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %40 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.tx_desc*, %struct.tx_desc** %21, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @write_imm(%struct.tx_desc* %46, %struct.sk_buff* %47, i32 %50, i32 %51)
  store i32 1, i32* %22, align 4
  br label %126

53:                                               ; preds = %7
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.work_request_hdr*
  store %struct.work_request_hdr* %57, %struct.work_request_hdr** %17, align 8
  %58 = load %struct.tx_desc*, %struct.tx_desc** %21, align 8
  %59 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load %struct.work_request_hdr*, %struct.work_request_hdr** %17, align 8
  %63 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %62, i64 1
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = call i32 @skb_transport_offset(%struct.sk_buff* %64)
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i32* %61, %struct.work_request_hdr* %63, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = call i32 @skb_transport_offset(%struct.sk_buff* %70)
  %72 = sdiv i32 %71, 8
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %83

75:                                               ; preds = %53
  %76 = load %struct.tx_desc*, %struct.tx_desc** %21, align 8
  %77 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = bitcast i32* %81 to %struct.sg_ent*
  br label %84

83:                                               ; preds = %53
  br label %84

84:                                               ; preds = %83, %75
  %85 = phi %struct.sg_ent* [ %82, %75 ], [ %28, %83 ]
  store %struct.sg_ent* %85, %struct.sg_ent** %18, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load %struct.sg_ent*, %struct.sg_ent** %18, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = call i64 @skb_transport_header(%struct.sk_buff* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = call i64 @skb_tail_pointer(%struct.sk_buff* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = call i64 @skb_transport_header(%struct.sk_buff* %92)
  %94 = sub nsw i64 %91, %93
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @write_sgl(%struct.sk_buff* %86, %struct.sg_ent* %87, i64 %89, i64 %94, i32* %95)
  store i32 %96, i32* %15, align 4
  %97 = call i64 (...) @need_skb_unmap()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %84
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = load %struct.adapter*, %struct.adapter** %8, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sg_ent*, %struct.sg_ent** %18, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @setup_deferred_unmapping(%struct.sk_buff* %100, i32 %103, %struct.sg_ent* %104, i32 %105)
  %107 = load i32, i32* @deferred_unmap_destructor, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %99, %84
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = load %struct.tx_desc*, %struct.tx_desc** %21, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.sge_txq*, %struct.sge_txq** %10, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.work_request_hdr*, %struct.work_request_hdr** %17, align 8
  %120 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.work_request_hdr*, %struct.work_request_hdr** %17, align 8
  %123 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @write_wr_hdr_sgl(i32 %111, %struct.sk_buff* %112, %struct.tx_desc* %113, i32 %114, %struct.sge_txq* %115, %struct.sg_ent* %28, i32 %116, i32 %117, i32 %118, i32 %121, i32 %124)
  store i32 0, i32* %22, align 4
  br label %126

126:                                              ; preds = %110, %38
  %127 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %22, align 4
  switch i32 %128, label %130 [
    i32 0, label %129
    i32 1, label %129
  ]

129:                                              ; preds = %126, %126
  ret void

130:                                              ; preds = %126
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @immediate(%struct.sk_buff*) #2

declare dso_local i32 @write_imm(%struct.tx_desc*, %struct.sk_buff*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.work_request_hdr*, i32) #2

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #2

declare dso_local i32 @write_sgl(%struct.sk_buff*, %struct.sg_ent*, i64, i64, i32*) #2

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #2

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #2

declare dso_local i64 @need_skb_unmap(...) #2

declare dso_local i32 @setup_deferred_unmapping(%struct.sk_buff*, i32, %struct.sg_ent*, i32) #2

declare dso_local i32 @write_wr_hdr_sgl(i32, %struct.sk_buff*, %struct.tx_desc*, i32, %struct.sge_txq*, %struct.sg_ent*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
