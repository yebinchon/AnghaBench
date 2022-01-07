; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_cmd_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.init_write_op = type { %union.init_write_args, i32 }
%union.init_write_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@INIT_WRITE_OP_WIDE_BUS = common dso_local global i32 0, align 4
@INIT_WRITE_OP_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Need to write to %08x for Wide-bus but DMAE isn't allowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INIT_WRITE_OP_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.init_write_op*, i32)* @qed_init_cmd_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_init_cmd_wr(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.init_write_op* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.init_write_op*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.init_write_args*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store %struct.init_write_op* %2, %struct.init_write_op** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %16 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @INIT_WRITE_OP_WIDE_BUS, align 4
  %21 = call i32 @GET_FIELD(i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @INIT_WRITE_OP_ADDRESS, align 4
  %24 = call i32 @GET_FIELD(i32 %22, i32 %23)
  %25 = shl i32 %24, 2
  store i32 %25, i32* %12, align 4
  %26 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %27 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %26, i32 0, i32 0
  store %union.init_write_args* %27, %union.init_write_args** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @DP_NOTICE(%struct.qed_hwfn* %34, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %106

39:                                               ; preds = %30, %4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @INIT_WRITE_OP_SOURCE, align 4
  %42 = call i32 @GET_FIELD(i32 %40, i32 %41)
  switch i32 %42, label %104 [
    i32 130, label %43
    i32 128, label %54
    i32 131, label %81
    i32 129, label %88
  ]

43:                                               ; preds = %39
  %44 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %45 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %44, i32 0, i32 0
  %46 = bitcast %union.init_write_args* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %50 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @qed_wr(%struct.qed_hwfn* %49, %struct.qed_ptt* %50, i32 %51, i32 %52)
  br label %104

54:                                               ; preds = %39
  %55 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %56 = getelementptr inbounds %struct.init_write_op, %struct.init_write_op* %55, i32 0, i32 0
  %57 = bitcast %union.init_write_args* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp sge i32 %66, 64
  br i1 %67, label %68, label %74

68:                                               ; preds = %65, %54
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %70 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @qed_init_fill_dmae(%struct.qed_hwfn* %69, %struct.qed_ptt* %70, i32 %71, i32 0, i32 %72)
  store i32 %73, i32* %14, align 4
  br label %80

74:                                               ; preds = %65, %62
  %75 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %76 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @qed_init_fill(%struct.qed_hwfn* %75, %struct.qed_ptt* %76, i32 %77, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %74, %68
  br label %104

81:                                               ; preds = %39
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %83 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %84 = load %struct.init_write_op*, %struct.init_write_op** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @qed_init_cmd_array(%struct.qed_hwfn* %82, %struct.qed_ptt* %83, %struct.init_write_op* %84, i32 %85, i32 %86)
  store i32 %87, i32* %14, align 4
  br label %104

88:                                               ; preds = %39
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %90 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %union.init_write_args*, %union.init_write_args** %13, align 8
  %93 = bitcast %union.init_write_args* %92 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load %union.init_write_args*, %union.init_write_args** %13, align 8
  %98 = bitcast %union.init_write_args* %97 to %struct.TYPE_2__*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @qed_init_rt(%struct.qed_hwfn* %89, %struct.qed_ptt* %90, i32 %91, i32 %96, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %39, %88, %81, %80, %43
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %33
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_init_fill_dmae(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

declare dso_local i32 @qed_init_fill(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

declare dso_local i32 @qed_init_cmd_array(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.init_write_op*, i32, i32) #1

declare dso_local i32 @qed_init_rt(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
