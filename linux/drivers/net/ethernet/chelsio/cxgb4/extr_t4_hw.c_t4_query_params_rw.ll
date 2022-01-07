; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_query_params_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_query_params_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_params_cmd = type { %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@FW_PARAMS_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_query_params_rw(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.fw_params_cmd, align 8
  %23 = alloca i8**, align 8
  store %struct.adapter* %0, %struct.adapter** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %22, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8** %27, i8*** %23, align 8
  %28 = load i32, i32* %15, align 4
  %29 = icmp ugt i32 %28, 7
  br i1 %29, label %30, label %33

30:                                               ; preds = %9
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %109

33:                                               ; preds = %9
  %34 = call i32 @memset(%struct.fw_params_cmd* %22, i32 0, i32 24)
  %35 = load i32, i32* @FW_PARAMS_CMD, align 4
  %36 = call i32 @FW_CMD_OP_V(i32 %35)
  %37 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FW_CMD_READ_F, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @FW_PARAMS_CMD_PFN_V(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @FW_PARAMS_CMD_VFN_V(i32 %44)
  %46 = or i32 %43, %45
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %22, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = call i32 @FW_LEN16(%struct.fw_params_cmd* byval(%struct.fw_params_cmd) align 8 %22)
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %22, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %76, %33
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32*, i32** %16, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %16, align 8
  %59 = load i32, i32* %57, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load i8**, i8*** %23, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %23, align 8
  store i8* %60, i8** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = load i8**, i8*** %23, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %65, %56
  %74 = load i8**, i8*** %23, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %23, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %20, align 4
  br label %52

79:                                               ; preds = %52
  %80 = load %struct.adapter*, %struct.adapter** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @t4_wr_mbox_meat(%struct.adapter* %80, i32 %81, %struct.fw_params_cmd* %22, i32 24, %struct.fw_params_cmd* %22, i32 %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %79
  store i32 0, i32* %20, align 4
  %87 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %22, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i8** %90, i8*** %23, align 8
  br label %91

91:                                               ; preds = %101, %86
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i8**, i8*** %23, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @be32_to_cpu(i8* %97)
  %99 = load i32*, i32** %17, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %17, align 8
  store i32 %98, i32* %99, align 4
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %20, align 4
  %104 = load i8**, i8*** %23, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 2
  store i8** %105, i8*** %23, align 8
  br label %91

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %79
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %107, %30
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

declare dso_local i32 @memset(%struct.fw_params_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_params_cmd* byval(%struct.fw_params_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_params_cmd*, i32, %struct.fw_params_cmd*, i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
