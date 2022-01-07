; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, i32, i32, i32, i32 }
%struct.hnae3_ae_dev = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HNAE3_NONE_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_reset_subtask(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hnae3_ae_dev*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %4 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.hnae3_ae_dev* @pci_get_drvdata(i32 %6)
  store %struct.hnae3_ae_dev* %7, %struct.hnae3_ae_dev** %3, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 2
  %14 = call i8* @hclge_get_reset_level(%struct.hnae3_ae_dev* %11, i32* %13)
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HNAE3_NONE_RESET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %25 = call i32 @hclge_reset(%struct.hclge_dev* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 1
  %30 = call i8* @hclge_get_reset_level(%struct.hnae3_ae_dev* %27, i32* %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HNAE3_NONE_RESET, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %41 = call i32 @hclge_do_reset(%struct.hclge_dev* %40)
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i64, i64* @HNAE3_NONE_RESET, align 8
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  ret void
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(i32) #1

declare dso_local i8* @hclge_get_reset_level(%struct.hnae3_ae_dev*, i32*) #1

declare dso_local i32 @hclge_reset(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_do_reset(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
