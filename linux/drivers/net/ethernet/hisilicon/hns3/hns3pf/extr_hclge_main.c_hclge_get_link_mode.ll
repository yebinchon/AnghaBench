; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i64* }

@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i64*, i64*)* @hclge_get_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_link_mode(%struct.hnae3_handle* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclge_vport*, align 8
  %9 = alloca %struct.hclge_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %12 = call i32 @BITS_TO_LONGS(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %14 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %13)
  store %struct.hclge_vport* %14, %struct.hclge_vport** %8, align 8
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 0
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %16, align 8
  store %struct.hclge_dev* %17, %struct.hclge_dev** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %49, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %22
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %18

52:                                               ; preds = %18
  ret void
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
