; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_nic_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_nic_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.hclgevf_dev* }
%struct.hclgevf_dev = type { i32, i32 }
%struct.hnae3_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@HCLGEVF_STATE_NIC_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*, %struct.hnae3_client*)* @hclgevf_init_nic_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_init_nic_client_instance(%struct.hnae3_ae_dev* %0, %struct.hnae3_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca %struct.hnae3_client*, align 8
  %6 = alloca %struct.hclgevf_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %4, align 8
  store %struct.hnae3_client* %1, %struct.hnae3_client** %5, align 8
  %8 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %9 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %8, i32 0, i32 0
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %9, align 8
  store %struct.hclgevf_dev* %10, %struct.hclgevf_dev** %6, align 8
  %11 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %12 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 0
  %18 = call i32 %15(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load i32, i32* @HCLGEVF_STATE_NIC_REGISTERED, align 4
  %25 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %25, i32 0, i32 1
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %29 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %30 = call i32 @hnae3_set_client_init_flag(%struct.hnae3_client* %28, %struct.hnae3_ae_dev* %29, i32 1)
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 0
  %33 = call i64 @netif_msg_drv(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %37 = call i32 @hclgevf_info_show(%struct.hclgevf_dev* %36)
  br label %38

38:                                               ; preds = %35, %23
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hnae3_set_client_init_flag(%struct.hnae3_client*, %struct.hnae3_ae_dev*, i32) #1

declare dso_local i64 @netif_msg_drv(i32*) #1

declare dso_local i32 @hclgevf_info_show(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
