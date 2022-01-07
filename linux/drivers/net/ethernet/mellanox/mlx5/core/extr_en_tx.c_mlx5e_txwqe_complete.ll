; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_txwqe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tx.c_mlx5e_txwqe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, %struct.mlx5_wq_cyc }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_wq_cyc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mlx5e_tx_wqe_info = type { i32, i32, %struct.sk_buff*, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*, %struct.sk_buff*, i32, i32, i32, i32, i32, %struct.mlx5e_tx_wqe_info*, %struct.mlx5_wqe_ctrl_seg*, i32)* @mlx5e_txwqe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_txwqe_complete(%struct.mlx5e_txqsq* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.mlx5e_tx_wqe_info* %7, %struct.mlx5_wqe_ctrl_seg* %8, i32 %9) #0 {
  %11 = alloca %struct.mlx5e_txqsq*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5e_tx_wqe_info*, align 8
  %19 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.mlx5_wq_cyc*, align 8
  %22 = alloca i32, align 4
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.mlx5e_tx_wqe_info* %7, %struct.mlx5e_tx_wqe_info** %18, align 8
  store %struct.mlx5_wqe_ctrl_seg* %8, %struct.mlx5_wqe_ctrl_seg** %19, align 8
  store i32 %9, i32* %20, align 4
  %23 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %24 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %23, i32 0, i32 7
  store %struct.mlx5_wq_cyc* %24, %struct.mlx5_wq_cyc** %21, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %18, align 8
  %27 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %18, align 8
  %30 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %18, align 8
  %33 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %18, align 8
  %36 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %35, i32 0, i32 2
  store %struct.sk_buff* %34, %struct.sk_buff** %36, align 8
  %37 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %38 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 8
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %19, align 8
  %45 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %47 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %14, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %19, align 8
  %54 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %60 = and i32 %58, %59
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %10
  %64 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %63, %10
  %71 = load %struct.mlx5e_tx_wqe_info*, %struct.mlx5e_tx_wqe_info** %18, align 8
  %72 = getelementptr inbounds %struct.mlx5e_tx_wqe_info, %struct.mlx5e_tx_wqe_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %75 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %21, align 8
  %79 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %80 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %83 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %86 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @mlx5e_wqc_has_room_for(%struct.mlx5_wq_cyc* %78, i32 %81, i32 %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %70
  %95 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %96 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @netif_tx_stop_queue(i32 %97)
  %99 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %100 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %99, i32 0, i32 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %94, %70
  %106 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %107 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @__netdev_tx_sent_queue(i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %22, align 4
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %105
  %115 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %21, align 8
  %116 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %117 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %11, align 8
  %120 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %19, align 8
  %123 = call i32 @mlx5e_notify_hw(%struct.mlx5_wq_cyc* %115, i32 %118, i32 %121, %struct.mlx5_wqe_ctrl_seg* %122)
  br label %124

124:                                              ; preds = %114, %105
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @mlx5e_wqc_has_room_for(%struct.mlx5_wq_cyc*, i32, i32, i32) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @__netdev_tx_sent_queue(i32, i32, i32) #1

declare dso_local i32 @mlx5e_notify_hw(%struct.mlx5_wq_cyc*, i32, i32, %struct.mlx5_wqe_ctrl_seg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
