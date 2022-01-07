; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_nvm_image_att.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_nvm_image_att.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qed_nvm_image_att = type { i32, i32 }

@NVM_TYPE_ISCSI_CFG = common dso_local global i32 0, align 4
@NVM_TYPE_FCOE_CFG = common dso_local global i32 0, align 4
@NVM_TYPE_NVM_CFG1 = common dso_local global i32 0, align 4
@NVM_TYPE_DEFAULT_CFG = common dso_local global i32 0, align 4
@NVM_TYPE_META = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown request of image_id %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_STORAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to find nvram image of type %08x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_get_nvm_image_att(%struct.qed_hwfn* %0, i32 %1, %struct.qed_nvm_image_att* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_nvm_image_att*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_nvm_image_att* %2, %struct.qed_nvm_image_att** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %21 [
    i32 130, label %11
    i32 131, label %13
    i32 129, label %15
    i32 132, label %17
    i32 128, label %19
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @NVM_TYPE_ISCSI_CFG, align 4
  store i32 %12, i32* %8, align 4
  br label %27

13:                                               ; preds = %3
  %14 = load i32, i32* @NVM_TYPE_FCOE_CFG, align 4
  store i32 %14, i32* %8, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load i32, i32* @NVM_TYPE_NVM_CFG1, align 4
  store i32 %16, i32* %8, align 4
  br label %27

17:                                               ; preds = %3
  %18 = load i32, i32* @NVM_TYPE_DEFAULT_CFG, align 4
  store i32 %18, i32* %8, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @NVM_TYPE_META, align 4
  store i32 %20, i32* %8, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @DP_NOTICE(%struct.qed_hwfn* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %88

27:                                               ; preds = %19, %17, %15, %13, %11
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %29 = call i32 @qed_mcp_nvm_info_populate(%struct.qed_hwfn* %28)
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %50, %27
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %33 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %40 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %38, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %30

53:                                               ; preds = %48, %30
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %56 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %62 = load i32, i32* @QED_MSG_STORAGE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %61, i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %88

67:                                               ; preds = %53
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %69 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qed_nvm_image_att*, %struct.qed_nvm_image_att** %7, align 8
  %77 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qed_nvm_image_att*, %struct.qed_nvm_image_att** %7, align 8
  %87 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %67, %60, %21
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_mcp_nvm_info_populate(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
