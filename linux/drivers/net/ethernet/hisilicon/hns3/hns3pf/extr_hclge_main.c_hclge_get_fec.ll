; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hclge_mac }
%struct.hclge_mac = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32*, i32*)* @hclge_get_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_fec(%struct.hnae3_handle* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hclge_vport*, align 8
  %8 = alloca %struct.hclge_dev*, align 8
  %9 = alloca %struct.hclge_mac*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %11 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %10)
  store %struct.hclge_vport* %11, %struct.hclge_vport** %7, align 8
  %12 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %13 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %12, i32 0, i32 0
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  store %struct.hclge_dev* %14, %struct.hclge_dev** %8, align 8
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.hclge_mac* %17, %struct.hclge_mac** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.hclge_mac*, %struct.hclge_mac** %9, align 8
  %22 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.hclge_mac*, %struct.hclge_mac** %9, align 8
  %30 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
