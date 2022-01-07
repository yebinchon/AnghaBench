; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_prepare_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_prepare_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@HCLGE_MBX_RESET = common dso_local global i32 0, align 4
@HNAE3_FLR_DOWN = common dso_local global i32 0, align 4
@HCLGEVF_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"prepare reset(%d) wait done, ret:%d\0A\00", align 1
@HCLGEVF_RESET_SYNC_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_reset_prepare_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_reset_prepare_wait(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %26 [
    i32 128, label %7
    i32 129, label %16
  ]

7:                                                ; preds = %1
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %9 = load i32, i32* @HCLGE_MBX_RESET, align 4
  %10 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %8, i32 %9, i32 0, i32* null, i32 0, i32 1, i32* null, i32 4)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @HNAE3_FLR_DOWN, align 4
  %18 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %18, i32 0, i32 4
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %16, %7
  %28 = load i32, i32* @HCLGEVF_STATE_CMD_DISABLE, align 4
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = call i32 @msleep(i32 100)
  %33 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %34 = call i32 @hclgevf_reset_handshake(%struct.hclgevf_dev* %33, i32 1)
  %35 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %36 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %40 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hclgevf_reset_handshake(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
