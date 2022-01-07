; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_send_mbx_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_send_mbx_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i8**, i32 }
%struct.hclgevf_desc = type { i64 }

@HCLGE_MBX_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"VF send mbx msg fail, msg len %d exceeds max len %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HCLGEVF_OPC_MBX_VF_TO_PF = common dso_local global i32 0, align 4
@HCLGE_MBX_NEED_RESP_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"VF failed(=%d) to send mbx message to PF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclgevf_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %19 = alloca %struct.hclgevf_desc, align 8
  %20 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %21 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %19, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.hclge_mbx_vf_to_pf_cmd*
  store %struct.hclge_mbx_vf_to_pf_cmd* %23, %struct.hclge_mbx_vf_to_pf_cmd** %18, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @HCLGE_MBX_MAX_MSG_SIZE, align 4
  %26 = sub nsw i32 %25, 2
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %8
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @HCLGE_MBX_MAX_MSG_SIZE, align 4
  %35 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %129

38:                                               ; preds = %8
  %39 = load i32, i32* @HCLGEVF_OPC_MBX_VF_TO_PF, align 4
  %40 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %19, i32 %39, i32 0)
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @HCLGE_MBX_NEED_RESP_BIT, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @HCLGE_MBX_NEED_RESP_BIT, align 4
  %47 = xor i32 %46, -1
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  %50 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %18, align 8
  %51 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %18, align 8
  %56 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %54, i8** %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %18, align 8
  %61 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %59, i8** %63, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %48
  %67 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %18, align 8
  %68 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @memcpy(i8** %70, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %48
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %79 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %83 = call i32 @hclgevf_reset_mbx_resp_status(%struct.hclgevf_dev* %82)
  %84 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %85 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %84, i32 0, i32 1
  %86 = call i32 @hclgevf_cmd_send(i32* %85, %struct.hclgevf_desc* %19, i32 1)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %77
  %90 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %91 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %20, align 4
  %95 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %97 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %20, align 4
  store i32 %100, i32* %9, align 4
  br label %129

101:                                              ; preds = %77
  %102 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i32*, i32** %16, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = call i32 @hclgevf_get_mbx_resp(%struct.hclgevf_dev* %102, i8* %103, i8* %104, i32* %105, i8* %106)
  store i32 %107, i32* %20, align 4
  %108 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %109 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  br label %127

112:                                              ; preds = %74
  %113 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %114 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %113, i32 0, i32 1
  %115 = call i32 @hclgevf_cmd_send(i32* %114, %struct.hclgevf_desc* %19, i32 1)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %120 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %20, align 4
  %124 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %20, align 4
  store i32 %125, i32* %9, align 4
  br label %129

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126, %101
  %128 = load i32, i32* %20, align 4
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %127, %118, %89, %28
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hclgevf_reset_mbx_resp_status(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hclgevf_get_mbx_resp(%struct.hclgevf_dev*, i8*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
