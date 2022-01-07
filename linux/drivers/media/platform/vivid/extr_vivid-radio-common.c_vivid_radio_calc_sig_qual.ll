; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-common.c_vivid_radio_calc_sig_qual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-common.c_vivid_radio_calc_sig_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@AM_FREQ_RANGE_HIGH = common dso_local global i32 0, align 4
@FM_FREQ_RANGE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*)* @vivid_radio_calc_sig_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_radio_calc_sig_qual(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  store i32 16000, i32* %3, align 4
  store i32 800, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AM_FREQ_RANGE_HIGH, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 10
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sdiv i32 %16, 10
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = srem i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %29 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %37 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %18
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @abs(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @abs(i32 %43)
  %45 = icmp sle i64 %42, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %49 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %46
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %54 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memset(i32 %61, i32 0, i32 4)
  br label %63

63:                                               ; preds = %57, %52, %46
  %64 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %65 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FM_FREQ_RANGE_LOW, align 4
  %68 = icmp sge i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %75

72:                                               ; preds = %40
  %73 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %74 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %63
  %76 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %77 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AM_FREQ_RANGE_HIGH, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 10
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %87 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
