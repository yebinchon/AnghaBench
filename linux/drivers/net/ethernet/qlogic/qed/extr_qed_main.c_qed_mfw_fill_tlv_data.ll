; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_mfw_fill_tlv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_mfw_fill_tlv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_dev* }
%struct.qed_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qed_common_cb_ops* }
%struct.qed_common_cb_ops = type { i32 (i32, i32*)*, i32 }
%union.qed_mfw_tlv_data = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Can't collect TLV management info\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mfw_fill_tlv_data(%struct.qed_hwfn* %0, i32 %1, %union.qed_mfw_tlv_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.qed_mfw_tlv_data*, align 8
  %8 = alloca %struct.qed_dev*, align 8
  %9 = alloca %struct.qed_common_cb_ops*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.qed_mfw_tlv_data* %2, %union.qed_mfw_tlv_data** %7, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 0
  %12 = load %struct.qed_dev*, %struct.qed_dev** %11, align 8
  store %struct.qed_dev* %12, %struct.qed_dev** %8, align 8
  %13 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %14 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %15, align 8
  store %struct.qed_common_cb_ops* %16, %struct.qed_common_cb_ops** %9, align 8
  %17 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %9, align 8
  %18 = icmp ne %struct.qed_common_cb_ops* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %9, align 8
  %21 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %20, i32 0, i32 0
  %22 = load i32 (i32, i32*)*, i32 (i32, i32*)** %21, align 8
  %23 = icmp ne i32 (i32, i32*)* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %9, align 8
  %26 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %19, %3
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %31 = call i32 @DP_NOTICE(%struct.qed_hwfn* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %75

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %73 [
    i32 129, label %36
    i32 131, label %43
    i32 130, label %53
    i32 128, label %63
  ]

36:                                               ; preds = %34
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 0
  %39 = load %struct.qed_dev*, %struct.qed_dev** %38, align 8
  %40 = load %union.qed_mfw_tlv_data*, %union.qed_mfw_tlv_data** %7, align 8
  %41 = bitcast %union.qed_mfw_tlv_data* %40 to i32*
  %42 = call i32 @qed_fill_generic_tlv_data(%struct.qed_dev* %39, i32* %41)
  br label %74

43:                                               ; preds = %34
  %44 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %9, align 8
  %45 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %44, i32 0, i32 0
  %46 = load i32 (i32, i32*)*, i32 (i32, i32*)** %45, align 8
  %47 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %48 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %union.qed_mfw_tlv_data*, %union.qed_mfw_tlv_data** %7, align 8
  %51 = bitcast %union.qed_mfw_tlv_data* %50 to i32*
  %52 = call i32 %46(i32 %49, i32* %51)
  br label %74

53:                                               ; preds = %34
  %54 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %9, align 8
  %55 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %54, i32 0, i32 0
  %56 = load i32 (i32, i32*)*, i32 (i32, i32*)** %55, align 8
  %57 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %58 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %union.qed_mfw_tlv_data*, %union.qed_mfw_tlv_data** %7, align 8
  %61 = bitcast %union.qed_mfw_tlv_data* %60 to i32*
  %62 = call i32 %56(i32 %59, i32* %61)
  br label %74

63:                                               ; preds = %34
  %64 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %9, align 8
  %65 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %64, i32 0, i32 0
  %66 = load i32 (i32, i32*)*, i32 (i32, i32*)** %65, align 8
  %67 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %68 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %union.qed_mfw_tlv_data*, %union.qed_mfw_tlv_data** %7, align 8
  %71 = bitcast %union.qed_mfw_tlv_data* %70 to i32*
  %72 = call i32 %66(i32 %69, i32* %71)
  br label %74

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %73, %63, %53, %43, %36
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_fill_generic_tlv_data(%struct.qed_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
