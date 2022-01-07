; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_82xx_dcb_query_cee_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_82xx_dcb_query_cee_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_82xx_dcb_param_mbx_le = type { i32*, i32*, i32*, i32*, i32* }
%struct.qlcnic_dcb_param = type { i8**, i8**, i8**, i8**, i8** }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"Invalid parameter type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_DCB_QUERY_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to query DCBX parameter, err %d\0A\00", align 1
@QLC_DCB_MAX_APP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_dcb*, i8*, i32)* @qlcnic_82xx_dcb_query_cee_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_82xx_dcb_query_cee_param(%struct.qlcnic_dcb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_dcb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_adapter*, align 8
  %10 = alloca %struct.qlcnic_82xx_dcb_param_mbx_le*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qlcnic_dcb_param, align 8
  %14 = alloca %struct.qlcnic_cmd_args, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 40, i32* %8, align 4
  %19 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %5, align 8
  %20 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %19, i32 0, i32 0
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %20, align 8
  store %struct.qlcnic_adapter* %21, %struct.qlcnic_adapter** %9, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %11, align 8
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %28 [
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %3, %3, %3
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.device*, %struct.device** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %195

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @dma_alloc_coherent(%struct.device* %35, i32 %36, i32* %12, i32 %37)
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %195

44:                                               ; preds = %34
  %45 = load i8*, i8** %16, align 8
  %46 = bitcast i8* %45 to %struct.qlcnic_82xx_dcb_param_mbx_le*
  store %struct.qlcnic_82xx_dcb_param_mbx_le* %46, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %48 = load i32, i32* @QLCNIC_CMD_DCB_QUERY_PARAM, align 4
  %49 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %14, %struct.qlcnic_adapter* %47, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %188

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %55, %57
  %59 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %14, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @MSD(i32 %63)
  %65 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %14, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @LSD(i32 %69)
  %71 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %14, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %70, i32* %74, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %76 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %75, %struct.qlcnic_cmd_args* %14)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %53
  %80 = load %struct.device*, %struct.device** %11, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %186

83:                                               ; preds = %53
  %84 = call i32 @memset(%struct.qlcnic_dcb_param* %13, i32 0, i32 40)
  %85 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %86 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 4
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %90, i8** %93, align 8
  %94 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %95 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 4
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* %99, i8** %102, align 8
  %103 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %104 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 3
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  store i8* %108, i8** %111, align 8
  %112 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %113 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le32_to_cpu(i32 %116)
  %118 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  store i8* %117, i8** %120, align 8
  %121 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %122 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @le32_to_cpu(i32 %125)
  %127 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 2
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  store i8* %126, i8** %129, align 8
  %130 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %131 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @le32_to_cpu(i32 %134)
  %136 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 2
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  store i8* %135, i8** %138, align 8
  %139 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %140 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @le32_to_cpu(i32 %143)
  %145 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 1
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  store i8* %144, i8** %147, align 8
  %148 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %149 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @le32_to_cpu(i32 %152)
  %154 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 1
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  store i8* %153, i8** %156, align 8
  store i32 0, i32* %18, align 4
  br label %157

157:                                              ; preds = %175, %83
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* @QLC_DCB_MAX_APP, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load %struct.qlcnic_82xx_dcb_param_mbx_le*, %struct.qlcnic_82xx_dcb_param_mbx_le** %10, align 8
  %163 = getelementptr inbounds %struct.qlcnic_82xx_dcb_param_mbx_le, %struct.qlcnic_82xx_dcb_param_mbx_le* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @le32_to_cpu(i32 %168)
  %170 = getelementptr inbounds %struct.qlcnic_dcb_param, %struct.qlcnic_dcb_param* %13, i32 0, i32 0
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %169, i8** %174, align 8
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %18, align 4
  br label %157

178:                                              ; preds = %157
  %179 = load i8*, i8** %6, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %6, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @memcpy(i8* %182, %struct.qlcnic_dcb_param* %13, i32 %183)
  br label %185

185:                                              ; preds = %181, %178
  br label %186

186:                                              ; preds = %185, %79
  %187 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %14)
  br label %188

188:                                              ; preds = %186, %52
  %189 = load %struct.device*, %struct.device** %11, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i8*, i8** %16, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @dma_free_coherent(%struct.device* %189, i32 %190, i8* %191, i32 %192)
  %194 = load i32, i32* %17, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %188, %41, %28
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @LSD(i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @memset(%struct.qlcnic_dcb_param*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.qlcnic_dcb_param*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
