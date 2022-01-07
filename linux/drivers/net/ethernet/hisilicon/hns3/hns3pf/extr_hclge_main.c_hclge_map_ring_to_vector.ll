; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_map_ring_to_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_map_ring_to_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hnae3_ring_chain_node = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Get vector index fail. vector_id =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)* @hclge_map_ring_to_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_map_ring_to_vector(%struct.hnae3_handle* %0, i32 %1, %struct.hnae3_ring_chain_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_ring_chain_node*, align 8
  %8 = alloca %struct.hclge_vport*, align 8
  %9 = alloca %struct.hclge_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hnae3_ring_chain_node* %2, %struct.hnae3_ring_chain_node** %7, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %12 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %11)
  store %struct.hclge_vport* %12, %struct.hclge_vport** %8, align 8
  %13 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %14 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %13, i32 0, i32 0
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %14, align 8
  store %struct.hclge_dev* %15, %struct.hclge_dev** %9, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @hclge_get_vector_index(%struct.hclge_dev* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %33 = call i32 @hclge_bind_ring_with_vector(%struct.hclge_vport* %30, i32 %31, i32 1, %struct.hnae3_ring_chain_node* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_get_vector_index(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_bind_ring_with_vector(%struct.hclge_vport*, i32, i32, %struct.hnae3_ring_chain_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
