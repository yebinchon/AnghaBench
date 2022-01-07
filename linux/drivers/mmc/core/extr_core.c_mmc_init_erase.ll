; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_init_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_init_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_init_erase(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @is_power_of_2(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @ffs(i32 %12)
  %14 = getelementptr i8, i8* %13, i64 -1
  %15 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 4
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %17, %9
  %21 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %22 = call i64 @mmc_card_sd(%struct.mmc_card* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %32 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %38 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @ffs(i32 %40)
  %42 = getelementptr i8, i8* %41, i64 -1
  %43 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %44 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  br label %124

45:                                               ; preds = %24, %20
  %46 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %120

50:                                               ; preds = %45
  %51 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %52 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %56 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 9
  %60 = shl i32 %54, %59
  %61 = ashr i32 %60, 11
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ult i32 %62, 128
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %65, i32 0, i32 1
  store i32 1024, i32* %66, align 4
  br label %84

67:                                               ; preds = %50
  %68 = load i32, i32* %3, align 4
  %69 = icmp ult i32 %68, 512
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %72 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %71, i32 0, i32 1
  store i32 2048, i32* %72, align 4
  br label %83

73:                                               ; preds = %67
  %74 = load i32, i32* %3, align 4
  %75 = icmp ult i32 %74, 1024
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %78 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %77, i32 0, i32 1
  store i32 4096, i32* %78, align 4
  br label %82

79:                                               ; preds = %73
  %80 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %81 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %80, i32 0, i32 1
  store i32 8192, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %70
  br label %84

84:                                               ; preds = %83, %64
  %85 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %86 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %89 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %94 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %97 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %119

98:                                               ; preds = %84
  %99 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %100 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %103 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = srem i32 %101, %104
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %110 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sub i32 %111, %112
  %114 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %115 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %108, %98
  br label %119

119:                                              ; preds = %118, %92
  br label %123

120:                                              ; preds = %45
  %121 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %122 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %119
  br label %124

124:                                              ; preds = %123, %30
  ret void
}

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
