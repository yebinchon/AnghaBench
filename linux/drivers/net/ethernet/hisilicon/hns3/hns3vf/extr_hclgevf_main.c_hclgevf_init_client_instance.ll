; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_client = type { i32 }
%struct.hnae3_ae_dev = type { %struct.hclgevf_dev* }
%struct.hclgevf_dev = type { %struct.TYPE_4__, %struct.hnae3_client*, %struct.TYPE_3__, %struct.hnae3_client* }
%struct.TYPE_4__ = type { %struct.hnae3_client* }
%struct.TYPE_3__ = type { %struct.hnae3_client* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_client*, %struct.hnae3_ae_dev*)* @hclgevf_init_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_init_client_instance(%struct.hnae3_client* %0, %struct.hnae3_ae_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_client*, align 8
  %5 = alloca %struct.hnae3_ae_dev*, align 8
  %6 = alloca %struct.hclgevf_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae3_client* %0, %struct.hnae3_client** %4, align 8
  store %struct.hnae3_ae_dev* %1, %struct.hnae3_ae_dev** %5, align 8
  %8 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %9 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %8, i32 0, i32 0
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %9, align 8
  store %struct.hclgevf_dev* %10, %struct.hclgevf_dev** %6, align 8
  %11 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %12 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %58 [
    i32 129, label %14
    i32 128, label %38
  ]

14:                                               ; preds = %2
  %15 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 3
  store %struct.hnae3_client* %15, %struct.hnae3_client** %17, align 8
  %18 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %19 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.hnae3_client* %18, %struct.hnae3_client** %21, align 8
  %22 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %23 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %24 = call i32 @hclgevf_init_nic_client_instance(%struct.hnae3_ae_dev* %22, %struct.hnae3_client* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %62

28:                                               ; preds = %14
  %29 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %30 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %31 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %30, i32 0, i32 1
  %32 = load %struct.hnae3_client*, %struct.hnae3_client** %31, align 8
  %33 = call i32 @hclgevf_init_roce_client_instance(%struct.hnae3_ae_dev* %29, %struct.hnae3_client* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %69

37:                                               ; preds = %28
  br label %61

38:                                               ; preds = %2
  %39 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %40 = call i32 @hnae3_dev_roce_supported(%struct.hclgevf_dev* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %44 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %44, i32 0, i32 1
  store %struct.hnae3_client* %43, %struct.hnae3_client** %45, align 8
  %46 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %47 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %48 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.hnae3_client* %46, %struct.hnae3_client** %49, align 8
  br label %50

50:                                               ; preds = %42, %38
  %51 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %52 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %53 = call i32 @hclgevf_init_roce_client_instance(%struct.hnae3_ae_dev* %51, %struct.hnae3_client* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %69

57:                                               ; preds = %50
  br label %61

58:                                               ; preds = %2
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %76

61:                                               ; preds = %57, %37
  store i32 0, i32* %3, align 4
  br label %76

62:                                               ; preds = %27
  %63 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %64 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %63, i32 0, i32 3
  store %struct.hnae3_client* null, %struct.hnae3_client** %64, align 8
  %65 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %66 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store %struct.hnae3_client* null, %struct.hnae3_client** %67, align 8
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %56, %36
  %70 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %71 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %70, i32 0, i32 1
  store %struct.hnae3_client* null, %struct.hnae3_client** %71, align 8
  %72 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %73 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.hnae3_client* null, %struct.hnae3_client** %74, align 8
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %62, %61, %58
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @hclgevf_init_nic_client_instance(%struct.hnae3_ae_dev*, %struct.hnae3_client*) #1

declare dso_local i32 @hclgevf_init_roce_client_instance(%struct.hnae3_ae_dev*, %struct.hnae3_client*) #1

declare dso_local i32 @hnae3_dev_roce_supported(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
