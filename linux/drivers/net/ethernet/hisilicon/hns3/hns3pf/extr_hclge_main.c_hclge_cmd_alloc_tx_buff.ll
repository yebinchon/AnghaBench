; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cmd_alloc_tx_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cmd_alloc_tx_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hclge_pkt_buf_alloc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_tx_buff_alloc_cmd = type { i32* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_TX_BUFF_ALLOC = common dso_local global i32 0, align 4
@HCLGE_MAX_TC_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"tx buffer alloc cmd failed %d.\0A\00", align 1
@HCLGE_BUF_SIZE_UNIT_SHIFT = common dso_local global i32 0, align 4
@HCLGE_BUF_SIZE_UPDATE_EN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_pkt_buf_alloc*)* @hclge_cmd_alloc_tx_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_cmd_alloc_tx_buff(%struct.hclge_dev* %0, %struct.hclge_pkt_buf_alloc* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_pkt_buf_alloc*, align 8
  %5 = alloca %struct.hclge_tx_buff_alloc_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store %struct.hclge_pkt_buf_alloc* %1, %struct.hclge_pkt_buf_alloc** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hclge_tx_buff_alloc_cmd*
  store %struct.hclge_tx_buff_alloc_cmd* %12, %struct.hclge_tx_buff_alloc_cmd** %5, align 8
  %13 = load i32, i32* @HCLGE_OPC_TX_BUFF_ALLOC, align 4
  %14 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %13, i32 0)
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @HCLGE_MAX_TC_NUM, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.hclge_pkt_buf_alloc*, %struct.hclge_pkt_buf_alloc** %4, align 8
  %21 = getelementptr inbounds %struct.hclge_pkt_buf_alloc, %struct.hclge_pkt_buf_alloc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 7
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 15)
  %30 = or i32 %28, %29
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load %struct.hclge_tx_buff_alloc_cmd*, %struct.hclge_tx_buff_alloc_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.hclge_tx_buff_alloc_cmd, %struct.hclge_tx_buff_alloc_cmd* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %19
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 1
  %43 = call i32 @hclge_cmd_send(i32* %42, %struct.hclge_desc* %6, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BIT(...) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
