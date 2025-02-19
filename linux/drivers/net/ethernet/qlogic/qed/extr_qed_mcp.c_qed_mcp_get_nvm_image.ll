; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_nvm_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_nvm_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_nvm_image_att = type { i32, i32 }

@QED_MSG_STORAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Image [%d] is too small - only %d bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Image [%d] is too big - %08x bytes where only %08x are available\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_get_nvm_image(%struct.qed_hwfn* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_nvm_image_att, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @memset(i32* %12, i32 0, i32 %13)
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @qed_mcp_get_nvm_image_att(%struct.qed_hwfn* %15, i32 %16, %struct.qed_nvm_image_att* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 4
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %28 = load i32, i32* @QED_MSG_STORAGE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %27, i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %60

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %42 = load i32, i32* @QED_MSG_STORAGE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %41, i32 %42, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %60

50:                                               ; preds = %35
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %52 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qed_mcp_nvm_read(i32 %53, i32 %55, i32* %56, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %50, %40, %26, %20
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qed_mcp_get_nvm_image_att(%struct.qed_hwfn*, i32, %struct.qed_nvm_image_att*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @qed_mcp_nvm_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
