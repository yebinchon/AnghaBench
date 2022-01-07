; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_roce_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_roce_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.hclgevf_dev* }
%struct.hclgevf_dev = type { i32, i32, i32 }
%struct.hnae3_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*, %struct.hnae3_client*)* @hclgevf_init_roce_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_init_roce_client_instance(%struct.hnae3_ae_dev* %0, %struct.hnae3_client* %1) #0 {
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
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %12 = call i32 @hnae3_dev_roce_supported(%struct.hclgevf_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %21 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14, %2
  store i32 0, i32* %3, align 4
  br label %49

25:                                               ; preds = %19
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %27 = call i32 @hclgevf_init_roce_base_info(%struct.hclgevf_dev* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %25
  %33 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %34 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %39 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %38, i32 0, i32 0
  %40 = call i32 %37(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %32
  %46 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %47 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %48 = call i32 @hnae3_set_client_init_flag(%struct.hnae3_client* %46, %struct.hnae3_ae_dev* %47, i32 1)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %43, %30, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @hnae3_dev_roce_supported(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_init_roce_base_info(%struct.hclgevf_dev*) #1

declare dso_local i32 @hnae3_set_client_init_flag(%struct.hnae3_client*, %struct.hnae3_ae_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
