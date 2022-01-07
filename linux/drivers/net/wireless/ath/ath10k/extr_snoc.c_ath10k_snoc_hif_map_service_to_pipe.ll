; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_hif_map_service_to_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_hif_map_service_to_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_to_pipe = type { i32, i32, i32 }
%struct.ath10k = type { i32 }

@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"snoc hif map service\0A\00", align 1
@target_service_to_ce_map_wlan = common dso_local global %struct.service_to_pipe* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32*, i32*)* @ath10k_snoc_hif_map_service_to_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_hif_map_service_to_pipe(%struct.ath10k* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.service_to_pipe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %16 = call i32 @ath10k_dbg(%struct.ath10k* %14, i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %72, %4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.service_to_pipe*, %struct.service_to_pipe** @target_service_to_ce_map_wlan, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.service_to_pipe* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  %23 = load %struct.service_to_pipe*, %struct.service_to_pipe** @target_service_to_ce_map_wlan, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.service_to_pipe, %struct.service_to_pipe* %23, i64 %25
  store %struct.service_to_pipe* %26, %struct.service_to_pipe** %10, align 8
  %27 = load %struct.service_to_pipe*, %struct.service_to_pipe** %10, align 8
  %28 = getelementptr inbounds %struct.service_to_pipe, %struct.service_to_pipe* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__le32_to_cpu(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %72

34:                                               ; preds = %22
  %35 = load %struct.service_to_pipe*, %struct.service_to_pipe** %10, align 8
  %36 = getelementptr inbounds %struct.service_to_pipe, %struct.service_to_pipe* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__le32_to_cpu(i32 %37)
  switch i32 %38, label %71 [
    i32 129, label %39
    i32 131, label %40
    i32 128, label %48
    i32 130, label %56
  ]

39:                                               ; preds = %34
  br label %71

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.service_to_pipe*, %struct.service_to_pipe** %10, align 8
  %44 = getelementptr inbounds %struct.service_to_pipe, %struct.service_to_pipe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__le32_to_cpu(i32 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  store i32 1, i32* %12, align 4
  br label %71

48:                                               ; preds = %34
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.service_to_pipe*, %struct.service_to_pipe** %10, align 8
  %52 = getelementptr inbounds %struct.service_to_pipe, %struct.service_to_pipe* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__le32_to_cpu(i32 %53)
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  store i32 1, i32* %11, align 4
  br label %71

56:                                               ; preds = %34
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.service_to_pipe*, %struct.service_to_pipe** %10, align 8
  %62 = getelementptr inbounds %struct.service_to_pipe, %struct.service_to_pipe* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__le32_to_cpu(i32 %63)
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.service_to_pipe*, %struct.service_to_pipe** %10, align 8
  %67 = getelementptr inbounds %struct.service_to_pipe, %struct.service_to_pipe* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__le32_to_cpu(i32 %68)
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %34, %56, %48, %40, %39
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.service_to_pipe*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
