; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_adjacent_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_adjacent_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mvm = type { i32 }

@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@iwl_rates = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32, i32)* @rs_get_adjacent_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_adjacent_rate(%struct.iwl_mvm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @IWL_RATE_INVALID, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @is_type_a_band(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @is_type_legacy(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @BIT(i32 %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %11, align 4
  br label %48

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %32

48:                                               ; preds = %40, %32
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %65, %48
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @IWL_RATE_COUNT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %10, align 4
  br label %70

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %53

70:                                               ; preds = %62, %53
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %5, align 4
  br label %130

75:                                               ; preds = %19
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %99, %75
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @IWL_RATE_INVALID, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @IWL_RATE_INVALID, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %100

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %11, align 4
  %95 = shl i32 1, %94
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %100

99:                                               ; preds = %92
  br label %77

100:                                              ; preds = %98, %91, %77
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %124, %100
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @IWL_RATE_INVALID, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %102
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @IWL_RATE_INVALID, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %125

117:                                              ; preds = %106
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %125

124:                                              ; preds = %117
  br label %102

125:                                              ; preds = %123, %116, %102
  %126 = load i32, i32* %10, align 4
  %127 = shl i32 %126, 8
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %125, %70
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64 @is_type_a_band(i32) #1

declare dso_local i32 @is_type_legacy(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
