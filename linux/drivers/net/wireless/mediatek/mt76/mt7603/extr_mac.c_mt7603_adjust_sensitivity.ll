; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_adjust_sensitivity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_adjust_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_adjust_sensitivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_adjust_sensitivity(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %6 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, -100
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %1
  %22 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  br label %101

24:                                               ; preds = %16
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, -84
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 92
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 7, %34
  store i32 %35, i32* %5, align 4
  store i32 1458571119, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 12
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  store i32 -2117020189, i32* %4, align 4
  br label %100

44:                                               ; preds = %24
  %45 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, -72
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %51 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 80
  %54 = sdiv i32 %53, 2
  %55 = add nsw i32 7, %54
  store i32 %55, i32* %5, align 4
  store i32 1794113647, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 12
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  store i32 -2122197533, i32* %4, align 4
  br label %99

68:                                               ; preds = %44
  %69 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %70 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, -54
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %75 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %74, i32 0, i32 2
  store i32 -54, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %78 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 80
  %81 = sdiv i32 %80, 2
  %82 = add nsw i32 7, %81
  store i32 %82, i32* %5, align 4
  store i32 2146435087, i32* %3, align 4
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %5, align 4
  %92 = shl i32 %91, 12
  %93 = load i32, i32* %3, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %3, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %3, align 4
  store i32 -2122219037, i32* %4, align 4
  br label %99

99:                                               ; preds = %76, %49
  br label %100

100:                                              ; preds = %99, %29
  br label %101

101:                                              ; preds = %100, %21
  %102 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %103 = call i32 @MT_AGC(i32 0)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @mt76_wr(%struct.mt7603_dev* %102, i32 %103, i32 %104)
  %106 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %107 = call i32 @MT_AGC1(i32 0)
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @mt76_wr(%struct.mt7603_dev* %106, i32 %107, i32 %108)
  %110 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %111 = call i32 @MT_AGC(i32 3)
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @mt76_wr(%struct.mt7603_dev* %110, i32 %111, i32 %112)
  %114 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %115 = call i32 @MT_AGC1(i32 3)
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @mt76_wr(%struct.mt7603_dev* %114, i32 %115, i32 %116)
  ret void
}

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @MT_AGC(i32) #1

declare dso_local i32 @MT_AGC1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
