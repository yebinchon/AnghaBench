; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_bind_ring_to_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_bind_ring_to_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hnae3_ring_chain_node = type { i32, %struct.hnae3_ring_chain_node*, i32, i32 }
%struct.hclgevf_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32* }
%struct.hclgevf_desc = type { i64 }

@HCLGE_MBX_MAP_RING_TO_VECTOR = common dso_local global i8* null, align 8
@HCLGE_MBX_UNMAP_RING_TO_VECTOR = common dso_local global i8* null, align 8
@HCLGE_MBX_RING_MAP_BASIC_MSG_NUM = common dso_local global i32 0, align 4
@HCLGE_MBX_RING_NODE_VARIABLE_NUM = common dso_local global i32 0, align 4
@HCLGEVF_OPC_MBX_VF_TO_PF = common dso_local global i32 0, align 4
@HNAE3_RING_TYPE_B = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_M = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_S = common dso_local global i32 0, align 4
@HCLGE_MBX_VF_MSG_DATA_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Map TQP fail, status is %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, i32, %struct.hnae3_ring_chain_node*)* @hclgevf_bind_ring_to_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_bind_ring_to_vector(%struct.hnae3_handle* %0, i32 %1, i32 %2, %struct.hnae3_ring_chain_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hnae3_ring_chain_node*, align 8
  %10 = alloca %struct.hclgevf_dev*, align 8
  %11 = alloca %struct.hnae3_ring_chain_node*, align 8
  %12 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %13 = alloca %struct.hclgevf_desc, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hnae3_ring_chain_node* %3, %struct.hnae3_ring_chain_node** %9, align 8
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %19 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %18)
  store %struct.hclgevf_dev* %19, %struct.hclgevf_dev** %10, align 8
  store i32 0, i32* %14, align 4
  %20 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %13, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.hclge_mbx_vf_to_pf_cmd*
  store %struct.hclge_mbx_vf_to_pf_cmd* %22, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i8*, i8** @HCLGE_MBX_MAP_RING_TO_VECTOR, align 8
  br label %29

27:                                               ; preds = %4
  %28 = load i8*, i8** @HCLGE_MBX_UNMAP_RING_TO_VECTOR, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i8* [ %26, %25 ], [ %28, %27 ]
  store i8* %30, i8** %16, align 8
  %31 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  store %struct.hnae3_ring_chain_node* %31, %struct.hnae3_ring_chain_node** %11, align 8
  br label %32

32:                                               ; preds = %140, %29
  %33 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %34 = icmp ne %struct.hnae3_ring_chain_node* %33, null
  br i1 %34, label %35, label %144

35:                                               ; preds = %32
  %36 = load i32, i32* @HCLGE_MBX_RING_MAP_BASIC_MSG_NUM, align 4
  %37 = load i32, i32* @HCLGE_MBX_RING_NODE_VARIABLE_NUM, align 4
  %38 = load i32, i32* %14, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i32, i32* @HCLGEVF_OPC_MBX_VF_TO_PF, align 4
  %45 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %13, i32 %44, i32 0)
  %46 = load i8*, i8** %16, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %49 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %54 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %43, %35
  %58 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %59 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %62 = call i32 @hnae3_get_bit(i32 %60, i32 %61)
  %63 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %64 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %70 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %73 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %71, i32* %78, align 4
  %79 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %80 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %83 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %84 = call i32 @hnae3_get_field(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %86 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %84, i32* %91, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @HCLGE_MBX_VF_MSG_DATA_NUM, align 4
  %96 = load i32, i32* @HCLGE_MBX_RING_MAP_BASIC_MSG_NUM, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* @HCLGE_MBX_RING_NODE_VARIABLE_NUM, align 4
  %99 = sdiv i32 %97, %98
  %100 = icmp eq i32 %94, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %57
  %102 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %103 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %102, i32 0, i32 1
  %104 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %103, align 8
  %105 = icmp ne %struct.hnae3_ring_chain_node* %104, null
  br i1 %105, label %139, label %106

106:                                              ; preds = %101, %57
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %109 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %107, i32* %111, align 4
  %112 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %113 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %112, i32 0, i32 1
  %114 = call i32 @hclgevf_cmd_send(i32* %113, %struct.hclgevf_desc* %13, i32 1)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %119 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %5, align 4
  br label %145

125:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  %126 = load i32, i32* @HCLGEVF_OPC_MBX_VF_TO_PF, align 4
  %127 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %13, i32 %126, i32 0)
  %128 = load i8*, i8** %16, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %131 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %12, align 8
  %136 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %125, %101
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %142 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %141, i32 0, i32 1
  %143 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %142, align 8
  store %struct.hnae3_ring_chain_node* %143, %struct.hnae3_ring_chain_node** %11, align 8
  br label %32

144:                                              ; preds = %32
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #1

declare dso_local i32 @hnae3_get_bit(i32, i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
