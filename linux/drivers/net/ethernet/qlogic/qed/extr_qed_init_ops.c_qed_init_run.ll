; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32*, %struct.qed_dev* }
%struct.qed_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %union.init_op* }
%union.init_op = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_ZIPPED_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INIT_CALLBACK_OP_OP = common dso_local global i32 0, align 4
@INIT_IF_PHASE_OP_DMAE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_init_run(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.init_op*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.init_op*, align 8
  %19 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 1
  %22 = load %struct.qed_dev*, %struct.qed_dev** %21, align 8
  store %struct.qed_dev* %22, %struct.qed_dev** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.qed_dev*, %struct.qed_dev** %12, align 8
  %24 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load %struct.qed_dev*, %struct.qed_dev** %12, align 8
  %29 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %union.init_op*, %union.init_op** %31, align 8
  store %union.init_op* %32, %union.init_op** %15, align 8
  %33 = load i32, i32* @MAX_ZIPPED_SIZE, align 4
  %34 = mul nsw i32 %33, 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32* @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %40 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %5
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %125

46:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %47

47:                                               ; preds = %114, %46
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %47
  %52 = load %union.init_op*, %union.init_op** %15, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds %union.init_op, %union.init_op* %52, i64 %53
  store %union.init_op* %54, %union.init_op** %18, align 8
  %55 = load %union.init_op*, %union.init_op** %18, align 8
  %56 = bitcast %union.init_op* %55 to %struct.TYPE_5__*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %19, align 8
  %61 = load i32, i32* @INIT_CALLBACK_OP_OP, align 4
  %62 = call i32 @GET_FIELD(i64 %60, i32 %61)
  switch i32 %62, label %109 [
    i32 128, label %63
    i32 129, label %70
    i32 131, label %76
    i32 130, label %84
    i32 132, label %96
    i32 133, label %103
  ]

63:                                               ; preds = %51
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %65 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %66 = load %union.init_op*, %union.init_op** %18, align 8
  %67 = bitcast %union.init_op* %66 to i32*
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @qed_init_cmd_wr(%struct.qed_hwfn* %64, %struct.qed_ptt* %65, i32* %67, i32 %68)
  store i32 %69, i32* %17, align 4
  br label %109

70:                                               ; preds = %51
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %72 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %73 = load %union.init_op*, %union.init_op** %18, align 8
  %74 = bitcast %union.init_op* %73 to i32*
  %75 = call i32 @qed_init_cmd_rd(%struct.qed_hwfn* %71, %struct.qed_ptt* %72, i32* %74)
  br label %109

76:                                               ; preds = %51
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %78 = load %union.init_op*, %union.init_op** %18, align 8
  %79 = bitcast %union.init_op* %78 to i32*
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @qed_init_cmd_mode(%struct.qed_hwfn* %77, i32* %79, i32 %80)
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %13, align 8
  br label %109

84:                                               ; preds = %51
  %85 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %86 = load %union.init_op*, %union.init_op** %18, align 8
  %87 = bitcast %union.init_op* %86 to i32*
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @qed_init_cmd_phase(%struct.qed_hwfn* %85, i32* %87, i32 %88, i32 %89)
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %19, align 8
  %94 = load i32, i32* @INIT_IF_PHASE_OP_DMAE_ENABLE, align 4
  %95 = call i32 @GET_FIELD(i64 %93, i32 %94)
  store i32 %95, i32* %16, align 4
  br label %109

96:                                               ; preds = %51
  %97 = load %union.init_op*, %union.init_op** %18, align 8
  %98 = bitcast %union.init_op* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  %102 = call i32 @udelay(i64 %101)
  br label %109

103:                                              ; preds = %51
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %105 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %106 = load %union.init_op*, %union.init_op** %18, align 8
  %107 = bitcast %union.init_op* %106 to i32*
  %108 = call i32 @qed_init_cmd_cb(%struct.qed_hwfn* %104, %struct.qed_ptt* %105, i32* %107)
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %51, %103, %96, %84, %76, %70, %63
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %117

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %13, align 8
  br label %47

117:                                              ; preds = %112, %47
  %118 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %119 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @kfree(i32* %120)
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %123 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %117, %43
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @GET_FIELD(i64, i32) #1

declare dso_local i32 @qed_init_cmd_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_init_cmd_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i64 @qed_init_cmd_mode(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i64 @qed_init_cmd_phase(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @qed_init_cmd_cb(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
