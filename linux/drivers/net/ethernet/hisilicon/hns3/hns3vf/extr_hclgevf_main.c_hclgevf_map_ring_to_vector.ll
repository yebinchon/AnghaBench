; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_map_ring_to_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_map_ring_to_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hnae3_ring_chain_node = type { i32 }
%struct.hclgevf_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Get vector index fail. ret =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)* @hclgevf_map_ring_to_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_map_ring_to_vector(%struct.hnae3_handle* %0, i32 %1, %struct.hnae3_ring_chain_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_ring_chain_node*, align 8
  %8 = alloca %struct.hclgevf_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hnae3_ring_chain_node* %2, %struct.hnae3_ring_chain_node** %7, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %11 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %10)
  store %struct.hclgevf_dev* %11, %struct.hclgevf_dev** %8, align 8
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @hclgevf_get_vector_index(%struct.hclgevf_dev* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %19 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %29 = call i32 @hclgevf_bind_ring_to_vector(%struct.hnae3_handle* %26, i32 1, i32 %27, %struct.hnae3_ring_chain_node* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @hclgevf_get_vector_index(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclgevf_bind_ring_to_vector(%struct.hnae3_handle*, i32, i32, %struct.hnae3_ring_chain_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
