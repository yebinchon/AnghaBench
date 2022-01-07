; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32*)* @hclge_get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_mac_addr(%struct.hnae3_handle* %0, i32* %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %8 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %7)
  store %struct.hclge_vport* %8, %struct.hclge_vport** %5, align 8
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 0
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  store %struct.hclge_dev* %11, %struct.hclge_dev** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ether_addr_copy(i32* %12, i32 %17)
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
