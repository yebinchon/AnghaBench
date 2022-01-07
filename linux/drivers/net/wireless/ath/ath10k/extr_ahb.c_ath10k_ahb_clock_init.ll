; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_clock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_clock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ahb = type { i8*, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"wifi_wcss_cmd\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get cmd clk: %ld\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"wifi_wcss_ref\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get ref clk: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wifi_wcss_rtc\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to get rtc clk: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_ahb_clock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_clock_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ahb*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %6)
  store %struct.ath10k_ahb* %7, %struct.ath10k_ahb** %4, align 8
  %8 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i8* @devm_clk_get(%struct.device* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR_OR_NULL(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  %27 = call i32 @ath10k_err(%struct.ath10k* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  br label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ %36, %32 ], [ %39, %37 ]
  store i32 %41, i32* %2, align 4
  br label %105

42:                                               ; preds = %1
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i8* @devm_clk_get(%struct.device* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %46 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %48 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR_OR_NULL(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %42
  %53 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %54 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %55 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  %58 = call i32 @ath10k_err(%struct.ath10k* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %60 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %65 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  br label %71

68:                                               ; preds = %52
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %67, %63 ], [ %70, %68 ]
  store i32 %72, i32* %2, align 4
  br label %105

73:                                               ; preds = %42
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i8* @devm_clk_get(%struct.device* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %77 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %79 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @IS_ERR_OR_NULL(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %73
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %86 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  %89 = call i32 @ath10k_err(%struct.ath10k* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %91 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %96 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @PTR_ERR(i8* %97)
  br label %102

99:                                               ; preds = %83
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi i32 [ %98, %94 ], [ %101, %99 ]
  store i32 %103, i32* %2, align 4
  br label %105

104:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %102, %71, %40
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
