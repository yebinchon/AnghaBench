; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rx_priv_buff_alloced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rx_priv_buff_alloced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_pkt_buf_alloc = type { %struct.hclge_priv_buf* }
%struct.hclge_priv_buf = type { i64, i64 }

@HCLGE_MAX_TC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_pkt_buf_alloc*)* @hclge_get_rx_priv_buff_alloced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_rx_priv_buff_alloced(%struct.hclge_pkt_buf_alloc* %0) #0 {
  %2 = alloca %struct.hclge_pkt_buf_alloc*, align 8
  %3 = alloca %struct.hclge_priv_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hclge_pkt_buf_alloc* %0, %struct.hclge_pkt_buf_alloc** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HCLGE_MAX_TC_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_pkt_buf_alloc, %struct.hclge_pkt_buf_alloc* %11, i32 0, i32 0
  %13 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %13, i64 %15
  store %struct.hclge_priv_buf* %16, %struct.hclge_priv_buf** %3, align 8
  %17 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %3, align 8
  %18 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
