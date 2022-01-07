; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_gen_resp_to_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_gen_resp_to_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32*, i32, i32 }
%struct.hclge_mbx_pf_to_vf_cmd = type { i32*, i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_MBX_MAX_RESP_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PF fail to gen resp to VF len %d exceeds max len %d\0A\00", align 1
@HCLGEVF_OPC_MBX_PF_TO_VF = common dso_local global i32 0, align 4
@HCLGE_MBX_PF_VF_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"PF failed(=%d) to send response to VF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32, i32*, i32)* @hclge_gen_resp_to_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_gen_resp_to_vf(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hclge_mbx_pf_to_vf_cmd*, align 8
  %12 = alloca %struct.hclge_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %6, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 0
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %16, align 8
  store %struct.hclge_dev* %17, %struct.hclge_dev** %12, align 8
  %18 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %14, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.hclge_mbx_pf_to_vf_cmd*
  store %struct.hclge_mbx_pf_to_vf_cmd* %20, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @HCLGE_MBX_MAX_RESP_DATA_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @HCLGE_MBX_MAX_RESP_DATA_SIZE, align 4
  %31 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @HCLGE_MBX_MAX_RESP_DATA_SIZE, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %24, %5
  %34 = load i32, i32* @HCLGEVF_OPC_MBX_PF_TO_VF, align 4
  %35 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %14, i32 %34, i32 0)
  %36 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %40 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %45 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @HCLGE_MBX_PF_VF_RESP, align 4
  %47 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %48 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %57 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %66 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 1
  %73 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %74 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %72, i32* %76, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %33
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %84 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @memcpy(i32* %86, i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %79, %33
  %91 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %92 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %91, i32 0, i32 1
  %93 = call i32 @hclge_cmd_send(i32* %92, %struct.hclge_desc* %14, i32 1)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %98 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96, %90
  %104 = load i32, i32* %13, align 4
  ret i32 %104
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
