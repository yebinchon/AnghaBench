; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_num_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_get_num_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, i8*, i8*, i8*, %struct.qed_dev* }
%struct.qed_dev = type { i32 }
%struct.qed_ptt = type { i32 }

@MAX_NUM_PFS_K2 = common dso_local global i8* null, align 8
@MAX_NUM_PFS_BB = common dso_local global i8* null, align 8
@MISCS_REG_FUNCTION_HIDE = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"PF [rel_id %d, abs_id %d] occupies index %d within the %d enabled functions on the engine\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_get_num_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_get_num_funcs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_dev*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 4
  %17 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  store %struct.qed_dev* %17, %struct.qed_dev** %11, align 8
  %18 = load %struct.qed_dev*, %struct.qed_dev** %11, align 8
  %19 = call i64 @QED_IS_AH(%struct.qed_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @MAX_NUM_PFS_K2, align 8
  br label %25

23:                                               ; preds = %2
  %24 = load i8*, i8** @MAX_NUM_PFS_BB, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8* [ %22, %21 ], [ %24, %23 ]
  store i8* %26, i8** %5, align 8
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %29 = load i32, i32* @MISCS_REG_FUNCTION_HIDE, align 4
  %30 = call i32 @qed_rd(%struct.qed_hwfn* %27, %struct.qed_ptt* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %25
  %35 = load %struct.qed_dev*, %struct.qed_dev** %11, align 8
  %36 = call i64 @QED_IS_BB(%struct.qed_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %40 = call i64 @QED_PATH_ID(%struct.qed_hwfn* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.qed_dev*, %struct.qed_dev** %11, align 8
  %44 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i8* null, i8** %5, align 8
  store i32 43690, i32* %9, align 4
  br label %49

48:                                               ; preds = %42, %38
  store i8* inttoptr (i64 1 to i8*), i8** %5, align 8
  store i32 21844, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %51

50:                                               ; preds = %34
  store i8* inttoptr (i64 1 to i8*), i8** %5, align 8
  store i32 65534, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %7, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %66, %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %90, %69
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %80

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %25
  %95 = load i8*, i8** %5, align 8
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %97 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %100 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %102 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %104 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %107 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %110 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %113 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %101, i32 %102, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i8* %105, i32 %108, i8* %111, i8* %114)
  ret void
}

declare dso_local i64 @QED_IS_AH(%struct.qed_dev*) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i64 @QED_IS_BB(%struct.qed_dev*) #1

declare dso_local i64 @QED_PATH_ID(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
