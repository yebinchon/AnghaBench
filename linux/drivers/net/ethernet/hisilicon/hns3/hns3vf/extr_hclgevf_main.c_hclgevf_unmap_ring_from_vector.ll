; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_unmap_ring_from_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_unmap_ring_from_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hnae3_ring_chain_node = type { i32 }
%struct.hclgevf_dev = type { i32 }

@HCLGEVF_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Get vector index fail. ret =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unmap ring from vector fail. vector=%d, ret =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)* @hclgevf_unmap_ring_from_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_unmap_ring_from_vector(%struct.hnae3_handle* %0, i32 %1, %struct.hnae3_ring_chain_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hnae3_ring_chain_node*, align 8
  %8 = alloca %struct.hclgevf_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hnae3_ring_chain_node* %2, %struct.hnae3_ring_chain_node** %7, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %12 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %11)
  store %struct.hclgevf_dev* %12, %struct.hclgevf_dev** %8, align 8
  %13 = load i32, i32* @HCLGEVF_STATE_RST_HANDLING, align 4
  %14 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %15 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @hclgevf_get_vector_index(%struct.hclgevf_dev* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %27 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %19
  %34 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %7, align 8
  %37 = call i32 @hclgevf_bind_ring_to_vector(%struct.hnae3_handle* %34, i32 0, i32 %35, %struct.hnae3_ring_chain_node* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %42 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %25, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclgevf_get_vector_index(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @hclgevf_bind_ring_to_vector(%struct.hnae3_handle*, i32, i32, %struct.hnae3_ring_chain_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
