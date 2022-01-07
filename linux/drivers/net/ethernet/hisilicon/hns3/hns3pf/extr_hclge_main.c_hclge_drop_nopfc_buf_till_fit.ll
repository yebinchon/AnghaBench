; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_drop_nopfc_buf_till_fit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_drop_nopfc_buf_till_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_pkt_buf_alloc = type { %struct.hclge_priv_buf* }
%struct.hclge_priv_buf = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@HCLGE_MAX_TC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*)* @hclge_drop_nopfc_buf_till_fit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_drop_nopfc_buf_till_fit(%struct.hclge_dev* %0, %struct.hclge_pkt_buf_alloc* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_pkt_buf_alloc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclge_priv_buf*, align 8
  %9 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store %struct.hclge_pkt_buf_alloc* %1, %struct.hclge_pkt_buf_alloc** %4, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %14 = call i64 @hclge_get_tx_buff_alloced(%struct.hclge_pkt_buf_alloc* %13)
  %15 = sub nsw i64 %12, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %17 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %18 = call i32 @hclge_get_no_pfc_priv_num(%struct.hclge_dev* %16, %struct.hclge_pkt_buf_alloc* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @HCLGE_MAX_TC_NUM, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %71, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %21
  %25 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %26 = getelementptr inbounds %struct.hclge_pkt_buf_alloc, %struct.hclge_pkt_buf_alloc* %25, i32 0, i32 0
  %27 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %27, i64 %29
  store %struct.hclge_priv_buf* %30, %struct.hclge_priv_buf** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %24
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %39
  %48 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %8, align 8
  %49 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %8, align 8
  %52 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %8, align 8
  %55 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %8, align 8
  %57 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %47, %39, %24
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %62 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @hclge_is_rx_buf_ok(%struct.hclge_dev* %61, %struct.hclge_pkt_buf_alloc* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %60
  br label %74

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %21

74:                                               ; preds = %69, %21
  %75 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %76 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @hclge_is_rx_buf_ok(%struct.hclge_dev* %75, %struct.hclge_pkt_buf_alloc* %76, i64 %77)
  ret i32 %78
}

declare dso_local i64 @hclge_get_tx_buff_alloced(%struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @hclge_get_no_pfc_priv_num(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hclge_is_rx_buf_ok(%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
