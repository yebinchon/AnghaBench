; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_bind_ring_with_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_bind_ring_with_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hnae3_ring_chain_node = type { i32, i32, i32, %struct.hnae3_ring_chain_node* }
%struct.hclge_desc = type { i64 }
%struct.hclge_ctrl_vector_chain_cmd = type { i32, i32, i32, i32* }

@HCLGE_OPC_ADD_RING_TO_VECTOR = common dso_local global i32 0, align 4
@HCLGE_OPC_DEL_RING_TO_VECTOR = common dso_local global i32 0, align 4
@HCLGE_INT_TYPE_M = common dso_local global i32 0, align 4
@HCLGE_INT_TYPE_S = common dso_local global i32 0, align 4
@HNAE3_RING_TYPE_B = common dso_local global i32 0, align 4
@HCLGE_TQP_ID_M = common dso_local global i32 0, align 4
@HCLGE_TQP_ID_S = common dso_local global i32 0, align 4
@HCLGE_INT_GL_IDX_M = common dso_local global i32 0, align 4
@HCLGE_INT_GL_IDX_S = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_M = common dso_local global i32 0, align 4
@HNAE3_RING_GL_IDX_S = common dso_local global i32 0, align 4
@HCLGE_VECTOR_ELEMENTS_PER_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Map TQP fail, status is %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_bind_ring_with_vector(%struct.hclge_vport* %0, i32 %1, i32 %2, %struct.hnae3_ring_chain_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hnae3_ring_chain_node*, align 8
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca %struct.hnae3_ring_chain_node*, align 8
  %12 = alloca %struct.hclge_desc, align 8
  %13 = alloca %struct.hclge_ctrl_vector_chain_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.hnae3_ring_chain_node* %3, %struct.hnae3_ring_chain_node** %9, align 8
  %18 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %19 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %18, i32 0, i32 1
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %19, align 8
  store %struct.hclge_dev* %20, %struct.hclge_dev** %10, align 8
  %21 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %12, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.hclge_ctrl_vector_chain_cmd*
  store %struct.hclge_ctrl_vector_chain_cmd* %23, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @HCLGE_OPC_ADD_RING_TO_VECTOR, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @HCLGE_OPC_DEL_RING_TO_VECTOR, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %12, i32 %32, i32 0)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %36 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %17, align 4
  %37 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %9, align 8
  store %struct.hnae3_ring_chain_node* %37, %struct.hnae3_ring_chain_node** %11, align 8
  br label %38

38:                                               ; preds = %118, %30
  %39 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %40 = icmp ne %struct.hnae3_ring_chain_node* %39, null
  br i1 %40, label %41, label %122

41:                                               ; preds = %38
  %42 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %43 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @HCLGE_INT_TYPE_M, align 4
  %52 = load i32, i32* @HCLGE_INT_TYPE_S, align 4
  %53 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %54 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @HNAE3_RING_TYPE_B, align 4
  %57 = call i32 @hnae3_get_bit(i32 %55, i32 %56)
  %58 = call i32 @hnae3_set_field(i32 %50, i32 %51, i32 %52, i32 %57)
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @HCLGE_TQP_ID_M, align 4
  %61 = load i32, i32* @HCLGE_TQP_ID_S, align 4
  %62 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %63 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hnae3_set_field(i32 %59, i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @HCLGE_INT_GL_IDX_M, align 4
  %68 = load i32, i32* @HCLGE_INT_GL_IDX_S, align 4
  %69 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %70 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HNAE3_RING_GL_IDX_M, align 4
  %73 = load i32, i32* @HNAE3_RING_GL_IDX_S, align 4
  %74 = call i32 @hnae3_get_field(i32 %71, i32 %72, i32 %73)
  %75 = call i32 @hnae3_set_field(i32 %66, i32 %67, i32 %68, i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @cpu_to_le16(i32 %76)
  %78 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %79 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* @HCLGE_VECTOR_ELEMENTS_PER_CMD, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %41
  %89 = load i32, i32* @HCLGE_VECTOR_ELEMENTS_PER_CMD, align 4
  %90 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %91 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %93 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %96 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %98 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %97, i32 0, i32 1
  %99 = call i32 @hclge_cmd_send(i32* %98, %struct.hclge_desc* %12, i32 1)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %88
  %103 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %104 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %150

111:                                              ; preds = %88
  store i32 0, i32* %17, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %12, i32 %112, i32 0)
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %116 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %111, %41
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %11, align 8
  %120 = getelementptr inbounds %struct.hnae3_ring_chain_node, %struct.hnae3_ring_chain_node* %119, i32 0, i32 3
  %121 = load %struct.hnae3_ring_chain_node*, %struct.hnae3_ring_chain_node** %120, align 8
  store %struct.hnae3_ring_chain_node* %121, %struct.hnae3_ring_chain_node** %11, align 8
  br label %38

122:                                              ; preds = %38
  %123 = load i32, i32* %17, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %122
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %128 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %130 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.hclge_ctrl_vector_chain_cmd*, %struct.hclge_ctrl_vector_chain_cmd** %13, align 8
  %133 = getelementptr inbounds %struct.hclge_ctrl_vector_chain_cmd, %struct.hclge_ctrl_vector_chain_cmd* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %135 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %134, i32 0, i32 1
  %136 = call i32 @hclge_cmd_send(i32* %135, %struct.hclge_desc* %12, i32 1)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %125
  %140 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %141 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %150

148:                                              ; preds = %125
  br label %149

149:                                              ; preds = %148, %122
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %149, %139, %102
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hnae3_get_bit(i32, i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
