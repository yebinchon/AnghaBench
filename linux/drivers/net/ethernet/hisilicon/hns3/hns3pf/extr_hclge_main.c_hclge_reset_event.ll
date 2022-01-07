; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hnae3_handle = type { i32 }
%struct.hnae3_ae_dev = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i64, i32, %struct.TYPE_4__*, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hnae3_handle }

@jiffies = common dso_local global i64 0, align 8
@HCLGE_RESET_INTERVAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@HNAE3_FUNC_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"received reset event, reset type is %d\0A\00", align 1
@HNAE3_GLOBAL_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hnae3_handle*)* @hclge_reset_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_reset_event(%struct.pci_dev* %0, %struct.hnae3_handle* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_ae_dev*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hnae3_handle* %1, %struct.hnae3_handle** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.hnae3_ae_dev* %8, %struct.hnae3_ae_dev** %5, align 8
  %9 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %10 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %9, i32 0, i32 0
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  store %struct.hclge_dev* %11, %struct.hclge_dev** %6, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %13 = icmp ne %struct.hnae3_handle* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.hnae3_handle* %19, %struct.hnae3_handle** %4, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCLGE_RESET_INTERVAL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @time_before(i64 %21, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %31 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %30, i32 0, i32 5
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @HCLGE_RESET_INTERVAL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @mod_timer(i32* %31, i64 %34)
  br label %92

36:                                               ; preds = %20
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %5, align 8
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %44 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %43, i32 0, i32 4
  %45 = call i64 @hclge_get_reset_level(%struct.hnae3_ae_dev* %42, i64* %44)
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %64

48:                                               ; preds = %36
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %51 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 20, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = call i64 @time_after(i64 %49, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i64, i64* @HNAE3_FUNC_RESET, align 8
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %48
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %67 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @dev_info(i32* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %75 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %78 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %77, i32 0, i32 1
  %79 = call i32 @set_bit(i64 %76, i32* %78)
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %81 = call i32 @hclge_reset_task_schedule(%struct.hclge_dev* %80)
  %82 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %83 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HNAE3_GLOBAL_RESET, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %65
  %88 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %89 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %29, %87, %65
  ret void
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @hclge_get_reset_level(%struct.hnae3_ae_dev*, i64*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @hclge_reset_task_schedule(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
