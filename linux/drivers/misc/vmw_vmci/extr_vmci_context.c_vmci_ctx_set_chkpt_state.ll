; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_set_chkpt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_context.c_vmci_ctx_set_chkpt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@VMCI_WELLKNOWN_CPT_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Attempt to restore checkpoint with obsolete wellknown handles\0A\00", align 1
@VMCI_ERROR_OBSOLETE = common dso_local global i32 0, align 4
@VMCI_NOTIFICATION_CPT_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid cpt state (type=%d)\0A\00", align 1
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to set cpt state (type=%d) (error=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_ctx_set_chkpt_state(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @VMCI_WELLKNOWN_CPT_STATE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @VMCI_ERROR_OBSOLETE, align 4
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %22, %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @VMCI_NOTIFICATION_CPT_STATE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %35, i32* %5, align 4
  br label %75

36:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @VMCI_SUCCESS, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %65

47:                                               ; preds = %45
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @vmci_ctx_add_notification(i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @VMCI_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %65

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %37

65:                                               ; preds = %60, %45
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @VMCI_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %32, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local i32 @vmci_ctx_add_notification(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
