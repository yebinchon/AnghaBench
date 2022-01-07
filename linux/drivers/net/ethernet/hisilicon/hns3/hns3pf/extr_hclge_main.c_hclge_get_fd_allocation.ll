; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_fd_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_fd_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_get_fd_allocation_cmd = type { i32, i32, i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_FD_GET_ALLOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"query fd allocation fail, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32*, i32*, i32*, i32*)* @hclge_get_fd_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_fd_allocation(%struct.hclge_dev* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hclge_get_fd_allocation_cmd*, align 8
  %13 = alloca %struct.hclge_desc, align 8
  %14 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @HCLGE_OPC_FD_GET_ALLOCATION, align 4
  %16 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %13, i32 %15, i32 1)
  %17 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %13, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.hclge_get_fd_allocation_cmd*
  store %struct.hclge_get_fd_allocation_cmd* %19, %struct.hclge_get_fd_allocation_cmd** %12, align 8
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 1
  %22 = call i32 @hclge_cmd_send(i32* %21, %struct.hclge_desc* %13, i32 1)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %6, align 4
  br label %55

33:                                               ; preds = %5
  %34 = load %struct.hclge_get_fd_allocation_cmd*, %struct.hclge_get_fd_allocation_cmd** %12, align 8
  %35 = getelementptr inbounds %struct.hclge_get_fd_allocation_cmd, %struct.hclge_get_fd_allocation_cmd* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.hclge_get_fd_allocation_cmd*, %struct.hclge_get_fd_allocation_cmd** %12, align 8
  %40 = getelementptr inbounds %struct.hclge_get_fd_allocation_cmd, %struct.hclge_get_fd_allocation_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.hclge_get_fd_allocation_cmd*, %struct.hclge_get_fd_allocation_cmd** %12, align 8
  %45 = getelementptr inbounds %struct.hclge_get_fd_allocation_cmd, %struct.hclge_get_fd_allocation_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.hclge_get_fd_allocation_cmd*, %struct.hclge_get_fd_allocation_cmd** %12, align 8
  %50 = getelementptr inbounds %struct.hclge_get_fd_allocation_cmd, %struct.hclge_get_fd_allocation_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %33, %25
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
