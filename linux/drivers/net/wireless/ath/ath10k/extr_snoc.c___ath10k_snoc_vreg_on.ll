; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c___ath10k_snoc_vreg_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c___ath10k_snoc_vreg_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_vreg_info = type { i32, i32, i64, i32, i64, i32 }

@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"snoc regulator %s being enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"failed to set regulator %s voltage-min: %d voltage-max: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to set regulator %s load: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to enable regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_vreg_info*)* @__ath10k_snoc_vreg_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_snoc_vreg_on(%struct.ath10k* %0, %struct.ath10k_vreg_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_vreg_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_vreg_info* %1, %struct.ath10k_vreg_info** %5, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %8 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %9 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %10 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ath10k_dbg(%struct.ath10k* %7, i32 %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %14 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %20 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @regulator_set_voltage(i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %27 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %28 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %31 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %34 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %101

38:                                               ; preds = %2
  %39 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %40 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %45 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %48 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @regulator_set_load(i32 %46, i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %55 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %56 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %59 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %60)
  br label %92

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %65 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regulator_enable(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %72 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %73 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %87

76:                                               ; preds = %63
  %77 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %78 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %83 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @udelay(i64 %84)
  br label %86

86:                                               ; preds = %81, %76
  store i32 0, i32* %3, align 4
  br label %101

87:                                               ; preds = %70
  %88 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %89 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @regulator_set_load(i32 %90, i64 0)
  br label %92

92:                                               ; preds = %87, %53
  %93 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %94 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ath10k_vreg_info*, %struct.ath10k_vreg_info** %5, align 8
  %97 = getelementptr inbounds %struct.ath10k_vreg_info, %struct.ath10k_vreg_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @regulator_set_voltage(i32 %95, i32 0, i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %92, %86, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @regulator_set_load(i32, i64) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
