; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, %struct.pci_dev*, %struct.TYPE_2__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.hnae3_handle }
%struct.hnae3_handle = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Hardware reset not finish\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"func_rst_reg:0x%x, global_rst_reg:0x%x\0A\00", align 1
@HCLGE_FUN_RST_ING = common dso_local global i32 0, align 4
@HCLGE_GLOBAL_RESET_REG = common dso_local global i32 0, align 4
@HCLGE_GLOBAL_RESET_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Global Reset requested\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"PF Reset requested\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"FLR requested\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unsupported reset type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_do_reset(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.hnae3_handle* %10, %struct.hnae3_handle** %3, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %15 = call i64 @hclge_get_hw_reset_stat(%struct.hnae3_handle* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_info(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 2
  %25 = load i32, i32* @HCLGE_FUN_RST_ING, align 4
  %26 = call i32 @hclge_read_dev(i32* %24, i32 %25)
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 2
  %29 = load i32, i32* @HCLGE_GLOBAL_RESET_REG, align 4
  %30 = call i32 @hclge_read_dev(i32* %28, i32 %29)
  %31 = call i32 (i32*, i8*, ...) @dev_info(i32* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %30)
  br label %77

32:                                               ; preds = %1
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %70 [
    i32 128, label %36
    i32 129, label %52
    i32 130, label %61
  ]

36:                                               ; preds = %32
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 2
  %39 = load i32, i32* @HCLGE_GLOBAL_RESET_REG, align 4
  %40 = call i32 @hclge_read_dev(i32* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @HCLGE_GLOBAL_RESET_BIT, align 4
  %43 = call i32 @hnae3_set_bit(i32 %41, i32 %42, i32 1)
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 2
  %46 = load i32, i32* @HCLGE_GLOBAL_RESET_REG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @hclge_write_dev(i32* %45, i32 %46, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_info(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %77

52:                                               ; preds = %32
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 1
  %58 = call i32 @set_bit(i32 129, i32* %57)
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %60 = call i32 @hclge_reset_task_schedule(%struct.hclge_dev* %59)
  br label %77

61:                                               ; preds = %32
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_info(i32* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %66 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 130, i32* %66)
  %68 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %69 = call i32 @hclge_reset_task_schedule(%struct.hclge_dev* %68)
  br label %77

70:                                               ; preds = %32
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %74 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_warn(i32* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %17, %70, %61, %52, %36
  ret void
}

declare dso_local i64 @hclge_get_hw_reset_stat(%struct.hnae3_handle*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @hclge_read_dev(i32*, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_write_dev(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclge_reset_task_schedule(%struct.hclge_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
