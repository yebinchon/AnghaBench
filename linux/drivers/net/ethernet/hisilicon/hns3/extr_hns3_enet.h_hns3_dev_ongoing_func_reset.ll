; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.h_hns3_dev_ongoing_func_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.h_hns3_dev_ongoing_func_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { i64 }

@HNAE3_FUNC_RESET = common dso_local global i64 0, align 8
@HNAE3_FLR_RESET = common dso_local global i64 0, align 8
@HNAE3_VF_FUNC_RESET = common dso_local global i64 0, align 8
@HNAE3_VF_FULL_RESET = common dso_local global i64 0, align 8
@HNAE3_VF_PF_FUNC_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*)* @hns3_dev_ongoing_func_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_dev_ongoing_func_reset(%struct.hnae3_ae_dev* %0) #0 {
  %2 = alloca %struct.hnae3_ae_dev*, align 8
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %2, align 8
  %3 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %4 = icmp ne %struct.hnae3_ae_dev* %3, null
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HNAE3_FUNC_RESET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %5
  %12 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HNAE3_FLR_RESET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HNAE3_VF_FUNC_RESET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HNAE3_VF_FULL_RESET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %31 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HNAE3_VF_PF_FUNC_RESET, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %23, %17, %11, %5
  %36 = phi i1 [ true, %23 ], [ true, %17 ], [ true, %11 ], [ true, %5 ], [ %34, %29 ]
  br label %37

37:                                               ; preds = %35, %1
  %38 = phi i1 [ false, %1 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
