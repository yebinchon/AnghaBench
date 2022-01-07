; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c___ath10k_snoc_vreg_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c___ath10k_snoc_vreg_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vreg_info = type { i32, i32, i32 }

@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"snoc regulator %s being disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to disable regulator %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to set load %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to set voltage %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_vreg_info*)* @__ath10k_snoc_vreg_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_snoc_vreg_off(%struct.ath10k* %0, %struct.ath10k_vreg_info* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_vreg_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_vreg_info* %1, %struct.ath10k_vreg_info** %4, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %8 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ath10k_dbg(%struct.ath10k* %6, i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_disable(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ath10k_err(%struct.ath10k* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %26 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_set_load(i32 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ath10k_err(%struct.ath10k* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %39 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %42 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regulator_set_voltage(i32 %40, i32 0, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %49 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %4, align 8
  %50 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ath10k_err(%struct.ath10k* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %37
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @regulator_set_load(i32, i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
