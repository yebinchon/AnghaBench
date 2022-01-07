; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_get_max_edge_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom.c_ath9k_hw_get_max_edge_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctl_edges = type { i64, i32 }

@MAX_RATE_POWER = common dso_local global i64 0, align 8
@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ath9k_hw_get_max_edge_power(i64 %0, %struct.cal_ctl_edges* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.cal_ctl_edges*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.cal_ctl_edges* %1, %struct.cal_ctl_edges** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @MAX_RATE_POWER, align 8
  store i64 %11, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %94, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.cal_ctl_edges*, %struct.cal_ctl_edges** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %17, i64 %19
  %21 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %24 = icmp ne i64 %22, %23
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi i1 [ false, %12 ], [ %24, %16 ]
  br i1 %26, label %27, label %97

27:                                               ; preds = %25
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.cal_ctl_edges*, %struct.cal_ctl_edges** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %29, i64 %31
  %33 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @ath9k_hw_fbin2freq(i64 %34, i32 %35)
  %37 = icmp eq i64 %28, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = load %struct.cal_ctl_edges*, %struct.cal_ctl_edges** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %39, i64 %41
  %43 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @CTL_EDGE_TPOWER(i32 %44)
  store i64 %45, i64* %9, align 8
  br label %97

46:                                               ; preds = %27
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.cal_ctl_edges*, %struct.cal_ctl_edges** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %51, i64 %53
  %55 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @ath9k_hw_fbin2freq(i64 %56, i32 %57)
  %59 = icmp slt i64 %50, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %49
  %61 = load %struct.cal_ctl_edges*, %struct.cal_ctl_edges** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %61, i64 %64
  %66 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @ath9k_hw_fbin2freq(i64 %67, i32 %68)
  %70 = load i64, i64* %5, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %60
  %73 = load %struct.cal_ctl_edges*, %struct.cal_ctl_edges** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %73, i64 %76
  %78 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @CTL_EDGE_FLAGS(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.cal_ctl_edges*, %struct.cal_ctl_edges** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %83, i64 %86
  %88 = getelementptr inbounds %struct.cal_ctl_edges, %struct.cal_ctl_edges* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @CTL_EDGE_TPOWER(i32 %89)
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %82, %72, %60
  br label %97

92:                                               ; preds = %49, %46
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %12

97:                                               ; preds = %91, %38, %25
  %98 = load i64, i64* %9, align 8
  ret i64 %98
}

declare dso_local i64 @ath9k_hw_fbin2freq(i64, i32) #1

declare dso_local i64 @CTL_EDGE_TPOWER(i32) #1

declare dso_local i64 @CTL_EDGE_FLAGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
