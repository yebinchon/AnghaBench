; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stmmac_extra_stats = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_test_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_eee(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.stmmac_extra_stats*, align 8
  %5 = alloca %struct.stmmac_extra_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store i32 10, i32* %6, align 4
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %103

21:                                               ; preds = %13
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.stmmac_extra_stats* @kzalloc(i32 16, i32 %22)
  store %struct.stmmac_extra_stats* %23, %struct.stmmac_extra_stats** %4, align 8
  %24 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %4, align 8
  %25 = icmp ne %struct.stmmac_extra_stats* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %21
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.stmmac_extra_stats* @kzalloc(i32 16, i32 %30)
  store %struct.stmmac_extra_stats* %31, %struct.stmmac_extra_stats** %5, align 8
  %32 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %33 = icmp ne %struct.stmmac_extra_stats* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %99

37:                                               ; preds = %29
  %38 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %4, align 8
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 0
  %41 = call i32 @memcpy(%struct.stmmac_extra_stats* %38, i32* %40, i32 16)
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %43 = call i32 @stmmac_test_mac_loopback(%struct.stmmac_priv* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %96

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 0
  %56 = call i32 @memcpy(%struct.stmmac_extra_stats* %53, i32* %55, i32 16)
  %57 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %58 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %4, align 8
  %61 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %67

65:                                               ; preds = %52
  %66 = call i32 @msleep(i32 100)
  br label %48

67:                                               ; preds = %64, %48
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %96

73:                                               ; preds = %67
  %74 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %75 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %4, align 8
  %78 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %96

84:                                               ; preds = %73
  %85 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %86 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %4, align 8
  %89 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %92, %81, %70, %46
  %97 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %5, align 8
  %98 = call i32 @kfree(%struct.stmmac_extra_stats* %97)
  br label %99

99:                                               ; preds = %96, %34
  %100 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %4, align 8
  %101 = call i32 @kfree(%struct.stmmac_extra_stats* %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %26, %18
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.stmmac_extra_stats* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.stmmac_extra_stats*, i32*, i32) #1

declare dso_local i32 @stmmac_test_mac_loopback(%struct.stmmac_priv*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(%struct.stmmac_extra_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
