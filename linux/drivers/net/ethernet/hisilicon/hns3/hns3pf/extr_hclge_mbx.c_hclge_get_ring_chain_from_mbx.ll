; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_ring_chain_from_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_ring_chain_from_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_mbx_vf_to_pf_cmd = type { i32* }
%struct.hnae3_ring_chain_node = type { %struct.hnae3_ring_chain_node*, i32, i8*, i32 }
%struct.hclge_vport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@HCLGE_MBX_VF_MSG_DATA_NUM = common dso_local global i32 0, align 4
@HCLGE_MBX_RING_MAP_BASIC_MSG_NUM = common dso_local global i32 0, align 4
@HCLGE_MBX_RING_NODE_VARIABLE_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNAE3_RING_TYPE_B = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_M = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_S = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_mbx_vf_to_pf_cmd*, %struct.hnae3_ring_chain_node*, %struct.hclge_vport*)* @hclge_get_ring_chain_from_mbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_ring_chain_from_mbx(%struct.hclge_mbx_vf_to_pf_cmd* %0, %struct.hnae3_ring_chain_node* %1, %struct.hclge_vport* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %6 = alloca %struct.hnae3_ring_chain_node*, align 8
  %7 = alloca %struct.hclge_vport*, align 8
  %8 = alloca %struct.hnae3_ring_chain_node*, align 8
  %9 = alloca %struct.hnae3_ring_chain_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hclge_mbx_vf_to_pf_cmd* %0, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  store %struct.hnae3_ring_chain_node* %1, %struct.hnae3_ring_chain_node** %6, align 8
  store %struct.hclge_vport* %2, %struct.hclge_vport** %7, align 8
  %12 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @HCLGE_MBX_VF_MSG_DATA_NUM, align 4
  %19 = load i32, i32* @HCLGE_MBX_RING_MAP_BASIC_MSG_NUM, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @HCLGE_MBX_RING_NODE_VARIABLE_NUM, align 4
  %22 = sdiv i32 %20, %21
  %23 = icmp sgt i32 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %149

27:                                               ; preds = %3
  %28 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %6, align 8
  %29 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %32 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hnae3_set_bit(i32 %30, i32 %31, i32 %36)
  %38 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %39 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @hclge_get_queue_id(i32 %50)
  %52 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %6, align 8
  %53 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %6, align 8
  %55 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %58 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %59 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @hnae3_set_field(i32 %56, i32 %57, i32 %58, i64 %64)
  %66 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %6, align 8
  store %struct.hnae3_ring_chain_node* %66, %struct.hnae3_ring_chain_node** %8, align 8
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %140, %27
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %143

71:                                               ; preds = %67
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.hnae3_ring_chain_node* @kzalloc(i32 32, i32 %72)
  store %struct.hnae3_ring_chain_node* %73, %struct.hnae3_ring_chain_node** %9, align 8
  %74 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  %75 = icmp ne %struct.hnae3_ring_chain_node* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %144

77:                                               ; preds = %71
  %78 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  %79 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %82 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %83 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @HCLGE_MBX_RING_NODE_VARIABLE_NUM, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* @HCLGE_MBX_RING_MAP_BASIC_MSG_NUM, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @hnae3_set_bit(i32 %80, i32 %81, i32 %92)
  %94 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %95 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @HCLGE_MBX_RING_NODE_VARIABLE_NUM, align 4
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* @HCLGE_MBX_RING_MAP_BASIC_MSG_NUM, align 4
  %106 = add nsw i32 %104, %105
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %101, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %98, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @hclge_get_queue_id(i32 %113)
  %115 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  %116 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  %118 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %121 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %122 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %123 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @HCLGE_MBX_RING_NODE_VARIABLE_NUM, align 4
  %126 = load i32, i32* %11, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* @HCLGE_MBX_RING_MAP_BASIC_MSG_NUM, align 4
  %129 = add nsw i32 %127, %128
  %130 = add nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %124, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = call i32 @hnae3_set_field(i32 %119, i32 %120, i32 %121, i64 %134)
  %136 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  %137 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %8, align 8
  %138 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %137, i32 0, i32 0
  store %struct.hnae3_ring_chain_node* %136, %struct.hnae3_ring_chain_node** %138, align 8
  %139 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  store %struct.hnae3_ring_chain_node* %139, %struct.hnae3_ring_chain_node** %8, align 8
  br label %140

140:                                              ; preds = %77
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %67

143:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %149

144:                                              ; preds = %76
  %145 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %6, align 8
  %146 = call i32 @hclge_free_vector_ring_chain(%struct.hnae3_ring_chain_node* %145)
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %143, %24
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i8* @hclge_get_queue_id(i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i64) #1

declare dso_local %struct.hnae3_ring_chain_node* @kzalloc(i32, i32) #1

declare dso_local i32 @hclge_free_vector_ring_chain(%struct.hnae3_ring_chain_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
