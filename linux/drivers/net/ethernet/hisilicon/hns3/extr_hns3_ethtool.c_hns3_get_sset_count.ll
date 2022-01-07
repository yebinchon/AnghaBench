; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_handle*, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HNS3_TQP_STATS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hns3_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca %struct.hnae3_ae_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %8)
  store %struct.hnae3_handle* %9, %struct.hnae3_handle** %6, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %11 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %13, align 8
  store %struct.hnae3_ae_ops* %14, %struct.hnae3_ae_ops** %7, align 8
  %15 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %16 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.hnae3_handle*, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %45 [
    i32 129, label %24
    i32 128, label %38
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @HNS3_TQP_STATS_COUNT, align 4
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %27 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %25, %29
  %31 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %32 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %32, align 8
  %34 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 %33(%struct.hnae3_handle* %34, i32 %35)
  %37 = add nsw i32 %30, %36
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %22
  %39 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %7, align 8
  %40 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %40, align 8
  %42 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 %41(%struct.hnae3_handle* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %22
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %38, %24, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
