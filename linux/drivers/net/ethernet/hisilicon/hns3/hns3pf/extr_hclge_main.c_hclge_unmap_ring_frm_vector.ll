; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_unmap_ring_frm_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_unmap_ring_frm_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hnae3_ring_chain_node = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32 }

@HCLGE_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Get vector index fail. ret =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Unmap ring from vector fail. vectorid=%d, ret =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)* @hclge_unmap_ring_frm_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_unmap_ring_frm_vector(%struct.hnae3_handle* %0, i32 %1, %struct.hnae3_ring_chain_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_ring_chain_node*, align 8
  %8 = alloca %struct.hclge_vport*, align 8
  %9 = alloca %struct.hclge_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hnae3_ring_chain_node* %2, %struct.hnae3_ring_chain_node** %7, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %13 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %12)
  store %struct.hclge_vport* %13, %struct.hclge_vport** %8, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 0
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %9, align 8
  %17 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @hclge_get_vector_index(%struct.hclge_dev* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %31 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %23
  %38 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %41 = call i32 @hclge_bind_ring_with_vector(%struct.hclge_vport* %38, i32 %39, i32 0, %struct.hnae3_ring_chain_node* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %46 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %29, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_get_vector_index(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @hclge_bind_ring_with_vector(%struct.hclge_vport*, i32, i32, %struct.hnae3_ring_chain_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
