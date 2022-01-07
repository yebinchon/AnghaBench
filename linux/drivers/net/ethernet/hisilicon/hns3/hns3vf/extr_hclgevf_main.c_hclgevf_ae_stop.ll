; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_ae_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_ae_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_dev = type { i64, i32 }

@HCLGEVF_STATE_DOWN = common dso_local global i32 0, align 4
@HNAE3_VF_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*)* @hclgevf_ae_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_ae_stop(%struct.hnae3_handle* %0) #0 {
  %2 = alloca %struct.hnae3_handle*, align 8
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %2, align 8
  %5 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %6 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %5)
  store %struct.hclgevf_dev* %6, %struct.hclgevf_dev** %3, align 8
  %7 = load i32, i32* @HCLGEVF_STATE_DOWN, align 4
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %8, i32 0, i32 1
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HNAE3_VF_RESET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %20 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @hclgevf_reset_tqp(%struct.hnae3_handle* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %34

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %17

34:                                               ; preds = %29, %17
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %37 = call i32 @hclgevf_reset_tqp_stats(%struct.hnae3_handle* %36)
  %38 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %39 = call i32 @hclgevf_update_link_status(%struct.hclgevf_dev* %38, i32 0)
  ret void
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hclgevf_reset_tqp(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hclgevf_reset_tqp_stats(%struct.hnae3_handle*) #1

declare dso_local i32 @hclgevf_update_link_status(%struct.hclgevf_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
