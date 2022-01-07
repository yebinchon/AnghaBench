; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_info_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_info_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.qed_nvm_image_info = type { i64, %struct.TYPE_6__* }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"failed to acquire ptt\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"DRV_MSG_CODE_BIST_TEST is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed getting number of images\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed getting image index %d attributes\0A\00", align 1
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"image index %d, size %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_nvm_info_populate(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_nvm_image_info, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

14:                                               ; preds = %1
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %15)
  store %struct.qed_ptt* %16, %struct.qed_ptt** %5, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %18 = icmp ne %struct.qed_ptt* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_ERR(%struct.qed_hwfn* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %132

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %28 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 0
  %29 = call i32 @qed_mcp_bist_nvm_get_num_images(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i64* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %36 = call i32 @DP_INFO(%struct.qed_hwfn* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %96

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %46 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_ERR(%struct.qed_hwfn* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %127

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.TYPE_6__* @kmalloc_array(i64 %50, i32 4, i32 %51)
  %53 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 1
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %53, align 8
  %54 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %127

60:                                               ; preds = %48
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %92, %60
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %61
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %68 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %69 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @qed_mcp_bist_nvm_get_image_att(%struct.qed_hwfn* %67, %struct.qed_ptt* %68, %struct.TYPE_6__* %72, i64 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_ERR(%struct.qed_hwfn* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  br label %123

81:                                               ; preds = %66
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %83 = load i32, i32* @QED_MSG_SP, align 4
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %82, i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %84, i32 %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %61

95:                                               ; preds = %61
  br label %96

96:                                               ; preds = %95, %34
  %97 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %104 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %107 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @kfree(%struct.TYPE_6__* %109)
  %111 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %114 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %115, align 8
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %117 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %100, %96
  %120 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %121 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %122 = call i32 @qed_ptt_release(%struct.qed_hwfn* %120, %struct.qed_ptt* %121)
  store i32 0, i32* %2, align 4
  br label %132

123:                                              ; preds = %77
  %124 = getelementptr inbounds %struct.qed_nvm_image_info, %struct.qed_nvm_image_info* %4, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = call i32 @kfree(%struct.TYPE_6__* %125)
  br label %127

127:                                              ; preds = %123, %57, %44
  %128 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %129 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %130 = call i32 @qed_ptt_release(%struct.qed_hwfn* %128, %struct.qed_ptt* %129)
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %127, %119, %19, %13
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local i32 @qed_mcp_bist_nvm_get_num_images(%struct.qed_hwfn*, %struct.qed_ptt*, i64*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

declare dso_local %struct.TYPE_6__* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @qed_mcp_bist_nvm_get_image_att(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
