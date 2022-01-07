; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, i32 }

@NON_Q_VECTORS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_alloc_q_vectors(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %17 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NON_Q_VECTORS, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp sge i32 %31, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @DIV_ROUND_UP(i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ixgbevf_alloc_q_vector(%struct.ixgbevf_adapter* %46, i32 %47, i32 0, i32 0, i32 0, i32 0, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %118

54:                                               ; preds = %42
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  br label %39

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66, %1
  br label %68

68:                                               ; preds = %112, %67
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %117

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @DIV_ROUND_UP(i32 %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @DIV_ROUND_UP(i32 %75, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @DIV_ROUND_UP(i32 %78, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ixgbevf_alloc_q_vector(%struct.ixgbevf_adapter* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  br label %118

93:                                               ; preds = %71
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %93
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %4, align 4
  br label %68

117:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %131

118:                                              ; preds = %92, %53
  br label %119

119:                                              ; preds = %122, %118
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %11, align 4
  %125 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @ixgbevf_free_q_vector(%struct.ixgbevf_adapter* %125, i32 %126)
  br label %119

128:                                              ; preds = %119
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %128, %117
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ixgbevf_alloc_q_vector(%struct.ixgbevf_adapter*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbevf_free_q_vector(%struct.ixgbevf_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
