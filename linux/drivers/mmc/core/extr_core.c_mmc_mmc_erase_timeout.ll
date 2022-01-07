; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_mmc_erase_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_mmc_erase_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MMC_DISCARD_ARG = common dso_local global i32 0, align 4
@MMC_TRIM_ARG = common dso_local global i32 0, align 4
@MMC_SECURE_ARGS = common dso_local global i32 0, align 4
@MMC_SECURE_ERASE_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32, i32)* @mmc_mmc_erase_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_mmc_erase_timeout(%struct.mmc_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MMC_DISCARD_ARG, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MMC_TRIM_ARG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 6
  br i1 %23, label %24, label %29

24:                                               ; preds = %18, %3
  %25 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %106

29:                                               ; preds = %18, %14
  %30 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MMC_TRIM_ARG, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %40
  br label %105

51:                                               ; preds = %29
  %52 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 10, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 1000000
  br i1 %67, label %68, label %76

68:                                               ; preds = %51
  %69 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = mul i32 %72, %73
  %75 = udiv i32 %74, 1000
  store i32 %75, i32* %10, align 4
  br label %84

76:                                               ; preds = %51
  %77 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 1000
  %82 = load i32, i32* %8, align 4
  %83 = mul i32 %81, %82
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %76, %68
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = mul i32 %87, 1000
  %89 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 1000
  %96 = udiv i32 %88, %95
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = udiv i32 %99, 1000
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %84
  store i32 1, i32* %7, align 4
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %50
  br label %106

106:                                              ; preds = %105, %24
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @MMC_SECURE_ARGS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @MMC_SECURE_ERASE_ARG, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %117 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = mul i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %129

122:                                              ; preds = %111
  %123 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %124 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = mul i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %122, %115
  br label %130

130:                                              ; preds = %129, %106
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %135 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = call i64 @mmc_host_is_spi(%struct.TYPE_8__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32, i32* %7, align 4
  %141 = icmp ult i32 %140, 1000
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1000, i32* %7, align 4
  br label %143

143:                                              ; preds = %142, %139, %130
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i64 @mmc_host_is_spi(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
