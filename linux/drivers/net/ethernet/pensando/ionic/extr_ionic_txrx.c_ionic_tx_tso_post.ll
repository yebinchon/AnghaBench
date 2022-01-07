; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_tso_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_tso_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32 }
%struct.ionic_txq_desc = type { i8*, i8*, i8*, i8*, i32 }
%struct.sk_buff = type { i32 }

@IONIC_TXQ_DESC_FLAG_VLAN = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_FLAG_ENCAP = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_FLAG_TSO_SOT = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_FLAG_TSO_EOT = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_OPCODE_TSO = common dso_local global i32 0, align 4
@ionic_tx_clean = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_queue*, %struct.ionic_txq_desc*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @ionic_tx_tso_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_tx_tso_post(%struct.ionic_queue* %0, %struct.ionic_txq_desc* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.ionic_queue*, align 8
  %15 = alloca %struct.ionic_txq_desc*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %14, align 8
  store %struct.ionic_txq_desc* %1, %struct.ionic_txq_desc** %15, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %29 = load i32, i32* %24, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %13
  %32 = load i32, i32* @IONIC_TXQ_DESC_FLAG_VLAN, align 4
  br label %34

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %27, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %27, align 4
  %38 = load i32, i32* %22, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @IONIC_TXQ_DESC_FLAG_ENCAP, align 4
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load i32, i32* %27, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %27, align 4
  %47 = load i32, i32* %25, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @IONIC_TXQ_DESC_FLAG_TSO_SOT, align 4
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load i32, i32* %27, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %27, align 4
  %56 = load i32, i32* %26, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @IONIC_TXQ_DESC_FLAG_TSO_EOT, align 4
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load i32, i32* %27, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %27, align 4
  %65 = load i32, i32* @IONIC_TXQ_DESC_OPCODE_TSO, align 4
  %66 = load i32, i32* %27, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @encode_txq_desc_cmd(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %28, align 4
  %70 = load i32, i32* %28, align 4
  %71 = call i32 @cpu_to_le64(i32 %70)
  %72 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %15, align 8
  %73 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %15, align 8
  %77 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %23, align 4
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %15, align 8
  %81 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %20, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %15, align 8
  %85 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %21, align 4
  %87 = call i8* @cpu_to_le16(i32 %86)
  %88 = load %struct.ionic_txq_desc*, %struct.ionic_txq_desc** %15, align 8
  %89 = getelementptr inbounds %struct.ionic_txq_desc, %struct.ionic_txq_desc* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %26, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %61
  %93 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %94 = call i32 @skb_tx_timestamp(%struct.sk_buff* %93)
  %95 = load %struct.ionic_queue*, %struct.ionic_queue** %14, align 8
  %96 = call i32 @q_to_ndq(%struct.ionic_queue* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @netdev_tx_sent_queue(i32 %96, i32 %99)
  %101 = load %struct.ionic_queue*, %struct.ionic_queue** %14, align 8
  %102 = call i32 (...) @netdev_xmit_more()
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* @ionic_tx_clean, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %108 = call i32 @ionic_txq_post(%struct.ionic_queue* %101, i32 %105, i32 %106, %struct.sk_buff* %107)
  br label %113

109:                                              ; preds = %61
  %110 = load %struct.ionic_queue*, %struct.ionic_queue** %14, align 8
  %111 = load i32, i32* @ionic_tx_clean, align 4
  %112 = call i32 @ionic_txq_post(%struct.ionic_queue* %110, i32 0, i32 %111, %struct.sk_buff* null)
  br label %113

113:                                              ; preds = %109, %92
  ret void
}

declare dso_local i32 @encode_txq_desc_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @q_to_ndq(%struct.ionic_queue*) #1

declare dso_local i32 @ionic_txq_post(%struct.ionic_queue*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @netdev_xmit_more(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
