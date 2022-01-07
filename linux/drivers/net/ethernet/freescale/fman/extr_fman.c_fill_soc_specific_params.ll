; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fill_soc_specific_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fill_soc_specific_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_state_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported FManv3 version\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported FMan version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman_state_struct*)* @fill_soc_specific_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_soc_specific_params(%struct.fman_state_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_state_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.fman_state_struct* %0, %struct.fman_state_struct** %3, align 8
  %5 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %6 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %5, i32 0, i32 11
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %10 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %123 [
    i32 3, label %13
    i32 2, label %36
    i32 6, label %59
  ]

13:                                               ; preds = %1
  %14 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %15 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %14, i32 0, i32 0
  store i32 163840, i32* %15, align 4
  %16 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %17 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %16, i32 0, i32 1
  store i32 65536, i32* %17, align 4
  %18 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %19 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %18, i32 0, i32 2
  store i32 31, i32* %19, align 4
  %20 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %21 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %20, i32 0, i32 3
  store i32 127, i32* %21, align 4
  %22 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %23 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %22, i32 0, i32 4
  store i32 64, i32* %23, align 4
  %24 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %25 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %24, i32 0, i32 5
  store i32 48, i32* %25, align 4
  %26 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %27 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %26, i32 0, i32 6
  store i32 128, i32* %27, align 4
  %28 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %29 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %28, i32 0, i32 7
  store i32 32, i32* %29, align 4
  %30 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %31 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %30, i32 0, i32 8
  store i32 256, i32* %31, align 4
  %32 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %33 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %32, i32 0, i32 9
  store i32 6, i32* %33, align 4
  %34 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %35 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %34, i32 0, i32 10
  store i32 139264, i32* %35, align 4
  br label %127

36:                                               ; preds = %1
  %37 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %38 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %37, i32 0, i32 0
  store i32 163840, i32* %38, align 4
  %39 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %40 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %39, i32 0, i32 1
  store i32 65536, i32* %40, align 4
  %41 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %42 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %41, i32 0, i32 2
  store i32 31, i32* %42, align 4
  %43 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %44 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %43, i32 0, i32 3
  store i32 127, i32* %44, align 4
  %45 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %46 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %45, i32 0, i32 4
  store i32 64, i32* %46, align 4
  %47 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %48 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %47, i32 0, i32 5
  store i32 48, i32* %48, align 4
  %49 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %50 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %49, i32 0, i32 6
  store i32 128, i32* %50, align 4
  %51 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %52 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %51, i32 0, i32 7
  store i32 32, i32* %52, align 4
  %53 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %54 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %53, i32 0, i32 8
  store i32 256, i32* %54, align 4
  %55 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %56 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %55, i32 0, i32 9
  store i32 5, i32* %56, align 4
  %57 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %58 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %57, i32 0, i32 10
  store i32 102400, i32* %58, align 4
  br label %127

59:                                               ; preds = %1
  %60 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %61 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %60, i32 0, i32 2
  store i32 83, i32* %61, align 4
  %62 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %63 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %62, i32 0, i32 3
  store i32 127, i32* %63, align 4
  %64 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %65 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %64, i32 0, i32 4
  store i32 64, i32* %65, align 4
  %66 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %67 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %66, i32 0, i32 5
  store i32 32, i32* %67, align 4
  %68 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %69 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %68, i32 0, i32 8
  store i32 256, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %95

75:                                               ; preds = %72, %59
  %76 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %77 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %76, i32 0, i32 0
  store i32 196608, i32* %77, align 4
  %78 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %79 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %78, i32 0, i32 6
  store i32 64, i32* %79, align 4
  %80 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %81 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %80, i32 0, i32 7
  store i32 32, i32* %81, align 4
  %82 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %83 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %82, i32 0, i32 9
  store i32 5, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %88 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %87, i32 0, i32 1
  store i32 32768, i32* %88, align 4
  br label %92

89:                                               ; preds = %75
  %90 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %91 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %90, i32 0, i32 1
  store i32 65536, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %94 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %93, i32 0, i32 10
  store i32 159744, i32* %94, align 4
  br label %122

95:                                               ; preds = %72
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %117

104:                                              ; preds = %101, %98, %95
  %105 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %106 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %105, i32 0, i32 0
  store i32 393216, i32* %106, align 4
  %107 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %108 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %107, i32 0, i32 1
  store i32 65536, i32* %108, align 4
  %109 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %110 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %109, i32 0, i32 6
  store i32 128, i32* %110, align 4
  %111 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %112 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %111, i32 0, i32 7
  store i32 84, i32* %112, align 4
  %113 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %114 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %113, i32 0, i32 9
  store i32 8, i32* %114, align 4
  %115 = load %struct.fman_state_struct*, %struct.fman_state_struct** %3, align 8
  %116 = getelementptr inbounds %struct.fman_state_struct, %struct.fman_state_struct* %115, i32 0, i32 10
  store i32 302080, i32* %116, align 4
  br label %121

117:                                              ; preds = %101
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %128

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121, %92
  br label %127

123:                                              ; preds = %1
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %128

127:                                              ; preds = %122, %36, %13
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %123, %117
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
