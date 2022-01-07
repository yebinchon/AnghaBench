; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_tx_buffer_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_tx_buffer_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, i32, i64 }
%struct.hclge_pkt_buf_alloc = type { %struct.hclge_priv_buf* }
%struct.hclge_priv_buf = type { i64 }

@HCLGE_MAX_TC_NUM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*)* @hclge_tx_buffer_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tx_buffer_calc(%struct.hclge_dev* %0, %struct.hclge_pkt_buf_alloc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_pkt_buf_alloc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hclge_priv_buf*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.hclge_pkt_buf_alloc* %1, %struct.hclge_pkt_buf_alloc** %5, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @HCLGE_MAX_TC_NUM, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %5, align 8
  %18 = getelementptr inbounds %struct.hclge_pkt_buf_alloc, %struct.hclge_pkt_buf_alloc* %17, i32 0, i32 0
  %19 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %19, i64 %20
  store %struct.hclge_priv_buf* %21, %struct.hclge_priv_buf** %8, align 8
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @BIT(i64 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %16
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %29
  %39 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %40 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %8, align 8
  %43 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %47

44:                                               ; preds = %16
  %45 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %8, align 8
  %46 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.hclge_priv_buf*, %struct.hclge_priv_buf** %8, align 8
  %49 = getelementptr inbounds %struct.hclge_priv_buf, %struct.hclge_priv_buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %12

56:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
