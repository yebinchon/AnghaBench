; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_release_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_release_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ahb = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"rst ctrl(s) is/are not initialized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to deassert radio cold rst: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to deassert radio warm rst: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to deassert radio srif rst: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to deassert cpu init rst: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_ahb_release_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_release_reset(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ahb*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %6)
  store %struct.ath10k_ahb* %7, %struct.ath10k_ahb** %4, align 8
  %8 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IS_ERR_OR_NULL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %1
  %14 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_ERR_OR_NULL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR_OR_NULL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %27 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR_OR_NULL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %19, %13, %1
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %25
  %37 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %38 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @reset_control_deassert(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %36
  %49 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %50 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @reset_control_deassert(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %85

60:                                               ; preds = %48
  %61 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %62 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @reset_control_deassert(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %85

72:                                               ; preds = %60
  %73 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %74 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @reset_control_deassert(i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %85

84:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %79, %67, %55, %43, %31
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
