; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_client = type { i32 }
%struct.hnae3_ae_dev = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, %struct.hnae3_client*, %struct.hnae3_client*, %struct.hclge_vport* }
%struct.hclge_vport = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.hnae3_client* }
%struct.TYPE_3__ = type { %struct.hnae3_client* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_client*, %struct.hnae3_ae_dev*)* @hclge_init_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_client_instance(%struct.hnae3_client* %0, %struct.hnae3_ae_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_client*, align 8
  %5 = alloca %struct.hnae3_ae_dev*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.hclge_vport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hnae3_client* %0, %struct.hnae3_client** %4, align 8
  store %struct.hnae3_ae_dev* %1, %struct.hnae3_ae_dev** %5, align 8
  %10 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %10, i32 0, i32 0
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %76, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %13
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 3
  %23 = load %struct.hclge_vport*, %struct.hclge_vport** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %23, i64 %25
  store %struct.hclge_vport* %26, %struct.hclge_vport** %7, align 8
  %27 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %28 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %72 [
    i32 129, label %30
    i32 128, label %52
  ]

30:                                               ; preds = %20
  %31 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 2
  store %struct.hnae3_client* %31, %struct.hnae3_client** %33, align 8
  %34 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %35 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %36 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.hnae3_client* %34, %struct.hnae3_client** %37, align 8
  %38 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %39 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %40 = call i32 @hclge_init_nic_client_instance(%struct.hnae3_ae_dev* %38, %struct.hclge_vport* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %80

44:                                               ; preds = %30
  %45 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %46 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %47 = call i32 @hclge_init_roce_client_instance(%struct.hnae3_ae_dev* %45, %struct.hclge_vport* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %87

51:                                               ; preds = %44
  br label %75

52:                                               ; preds = %20
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %54 = call i32 @hnae3_dev_roce_supported(%struct.hclge_dev* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %59 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %58, i32 0, i32 1
  store %struct.hnae3_client* %57, %struct.hnae3_client** %59, align 8
  %60 = load %struct.hnae3_client*, %struct.hnae3_client** %4, align 8
  %61 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %62 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.hnae3_client* %60, %struct.hnae3_client** %63, align 8
  br label %64

64:                                               ; preds = %56, %52
  %65 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %66 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %67 = call i32 @hclge_init_roce_client_instance(%struct.hnae3_ae_dev* %65, %struct.hclge_vport* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %87

71:                                               ; preds = %64
  br label %75

72:                                               ; preds = %20
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %94

75:                                               ; preds = %71, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %13

79:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %94

80:                                               ; preds = %43
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 2
  store %struct.hnae3_client* null, %struct.hnae3_client** %82, align 8
  %83 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %84 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store %struct.hnae3_client* null, %struct.hnae3_client** %85, align 8
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %94

87:                                               ; preds = %70, %50
  %88 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %89 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %88, i32 0, i32 1
  store %struct.hnae3_client* null, %struct.hnae3_client** %89, align 8
  %90 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %91 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store %struct.hnae3_client* null, %struct.hnae3_client** %92, align 8
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %80, %79, %72
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @hclge_init_nic_client_instance(%struct.hnae3_ae_dev*, %struct.hclge_vport*) #1

declare dso_local i32 @hclge_init_roce_client_instance(%struct.hnae3_ae_dev*, %struct.hclge_vport*) #1

declare dso_local i32 @hnae3_dev_roce_supported(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
