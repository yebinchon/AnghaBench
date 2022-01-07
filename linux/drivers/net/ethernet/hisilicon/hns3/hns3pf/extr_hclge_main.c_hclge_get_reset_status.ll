; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_reset_tqp_queue_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_RESET_TQP_QUEUE = common dso_local global i32 0, align 4
@HCLGE_RING_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Get reset status error, status =%d\0A\00", align 1
@HCLGE_TQP_RESET_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_get_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_reset_status(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_reset_tqp_queue_cmd*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @HCLGE_OPC_RESET_TQP_QUEUE, align 4
  %10 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %9, i32 1)
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_reset_tqp_queue_cmd*
  store %struct.hclge_reset_tqp_queue_cmd* %13, %struct.hclge_reset_tqp_queue_cmd** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HCLGE_RING_ID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = load %struct.hclge_reset_tqp_queue_cmd*, %struct.hclge_reset_tqp_queue_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.hclge_reset_tqp_queue_cmd, %struct.hclge_reset_tqp_queue_cmd* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 1
  %22 = call i32 @hclge_cmd_send(i32* %21, %struct.hclge_desc* %7, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.hclge_reset_tqp_queue_cmd*, %struct.hclge_reset_tqp_queue_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.hclge_reset_tqp_queue_cmd, %struct.hclge_reset_tqp_queue_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HCLGE_TQP_RESET_B, align 4
  %38 = call i32 @hnae3_get_bit(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hnae3_get_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
