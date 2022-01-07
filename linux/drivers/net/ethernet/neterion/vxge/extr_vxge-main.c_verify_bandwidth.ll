; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_verify_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_verify_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VXGE_HW_MAX_VIRTUAL_PATHS = common dso_local global i32 0, align 4
@bw_percentage = common dso_local global i32* null, align 8
@VXGE_HW_VPATH_BANDWIDTH_MAX = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: Assigning equal bandwidth to all the vpaths\00", align 1
@VXGE_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @verify_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_bandwidth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %18, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32*, i32** @bw_percentage, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %5

21:                                               ; preds = %16, %5
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i32*, i32** @bw_percentage, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %53

37:                                               ; preds = %29
  %38 = load i32*, i32** @bw_percentage, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @VXGE_HW_VPATH_BANDWIDTH_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %25

53:                                               ; preds = %48, %36, %25
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %100, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @VXGE_HW_VPATH_BANDWIDTH_MAX, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load i32, i32* @VXGE_HW_VPATH_BANDWIDTH_MAX, align 4
  %67 = load i32, i32* %3, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %70 = load i32, i32* %1, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sdiv i32 %68, %71
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %91

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* %2, align 4
  %83 = load i32*, i32** @bw_percentage, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %77

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %61
  br label %99

93:                                               ; preds = %57
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %93
  br label %99

99:                                               ; preds = %98, %92
  br label %100

100:                                              ; preds = %99, %54
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %100
  %104 = load i32, i32* @VXGE_ERR, align 4
  %105 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %106 = call i32 @vxge_debug_init(i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @VXGE_HW_VPATH_BANDWIDTH_MAX, align 4
  %108 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %109 = sdiv i32 %107, %108
  %110 = load i32*, i32** @bw_percentage, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  store i32 1, i32* %1, align 4
  br label %112

112:                                              ; preds = %124, %103
  %113 = load i32, i32* %1, align 4
  %114 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i32*, i32** @bw_percentage, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @bw_percentage, align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %1, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %1, align 4
  br label %112

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %100
  ret void
}

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
