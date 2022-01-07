; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_knic_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_knic_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev*, %struct.hnae3_handle }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hnae3_handle = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fail to assign TQPs %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, i8*, i8*, i8*)* @hclge_knic_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_knic_setup(%struct.hclge_vport* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hnae3_handle*, align 8
  %11 = alloca %struct.hnae3_knic_private_info*, align 8
  %12 = alloca %struct.hclge_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 1
  store %struct.hnae3_handle* %15, %struct.hnae3_handle** %10, align 8
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %17, %struct.hnae3_knic_private_info** %11, align 8
  %18 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %19 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %18, i32 0, i32 0
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %19, align 8
  store %struct.hclge_dev* %20, %struct.hclge_dev** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %11, align 8
  %23 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %11, align 8
  %26 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %11, align 8
  %31 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @devm_kcalloc(i32* %35, i8* %36, i32 8, i32 %37)
  %39 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %11, align 8
  %40 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %11, align 8
  %42 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %63

48:                                               ; preds = %4
  %49 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @hclge_assign_tqp(%struct.hclge_vport* %49, i8* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %45
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @devm_kcalloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @hclge_assign_tqp(%struct.hclge_vport*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
