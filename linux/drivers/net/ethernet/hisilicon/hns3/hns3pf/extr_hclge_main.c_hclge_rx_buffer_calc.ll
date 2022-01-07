; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rx_buffer_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_rx_buffer_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_pkt_buf_alloc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*)* @hclge_rx_buffer_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_rx_buffer_calc(%struct.hclge_dev* %0, %struct.hclge_pkt_buf_alloc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_pkt_buf_alloc*, align 8
  %6 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.hclge_pkt_buf_alloc* %1, %struct.hclge_pkt_buf_alloc** %5, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %8 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %15 = call i64 @hclge_get_tx_buff_alloced(%struct.hclge_pkt_buf_alloc* %14)
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %21 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @hclge_is_rx_buf_ok(%struct.hclge_dev* %20, %struct.hclge_pkt_buf_alloc* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %10
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %62

29:                                               ; preds = %2
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %31 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %32 = call i64 @hclge_only_alloc_priv_buff(%struct.hclge_dev* %30, %struct.hclge_pkt_buf_alloc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %62

35:                                               ; preds = %29
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %37 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %38 = call i64 @hclge_rx_buf_calc_all(%struct.hclge_dev* %36, i32 1, %struct.hclge_pkt_buf_alloc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %62

41:                                               ; preds = %35
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %43 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %44 = call i64 @hclge_rx_buf_calc_all(%struct.hclge_dev* %42, i32 0, %struct.hclge_pkt_buf_alloc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %62

47:                                               ; preds = %41
  %48 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %49 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %50 = call i64 @hclge_drop_nopfc_buf_till_fit(%struct.hclge_dev* %48, %struct.hclge_pkt_buf_alloc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %62

53:                                               ; preds = %47
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %55 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %56 = call i64 @hclge_drop_pfc_buf_till_fit(%struct.hclge_dev* %54, %struct.hclge_pkt_buf_alloc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %58, %52, %46, %40, %34, %28, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

declare dso_local i64 @hclge_get_tx_buff_alloced(%struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @hclge_is_rx_buf_ok(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*, i32) #1

declare dso_local i64 @hclge_only_alloc_priv_buff(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i64 @hclge_rx_buf_calc_all(%struct.hclge_dev*, i32, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i64 @hclge_drop_nopfc_buf_till_fit(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i64 @hclge_drop_pfc_buf_till_fit(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
