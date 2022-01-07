; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_try_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_try_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw_antcomb_conf = type { i32, i32 }
%struct.ath_ant_comb = type { i32 }

@ATH_ANT_DIV_COMB_LNA2 = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32, i32, i32, i32, i32)* @ath_ant_try_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_ant_try_switch(%struct.ath_hw_antcomb_conf* %0, %struct.ath_ant_comb* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %9 = alloca %struct.ath_ant_comb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath_hw_antcomb_conf* %0, %struct.ath_hw_antcomb_conf** %8, align 8
  store %struct.ath_ant_comb* %1, %struct.ath_ant_comb** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %8, align 8
  %17 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @ath_ant_div_comb_alt_check(%struct.ath_hw_antcomb_conf* %16, %struct.ath_ant_comb* %17, i32 %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %29 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %8, align 8
  %30 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %32 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %8, align 8
  %33 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %46

34:                                               ; preds = %23
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %40 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %8, align 8
  %41 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %43 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %8, align 8
  %44 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %34
  br label %46

46:                                               ; preds = %45, %27
  store i32 1, i32* %15, align 4
  br label %74

47:                                               ; preds = %7
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %61 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %8, align 8
  %62 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %72

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %69 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %8, align 8
  %70 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %59
  store i32 1, i32* %15, align 4
  br label %73

73:                                               ; preds = %72, %51, %47
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* %15, align 4
  ret i32 %75
}

declare dso_local i64 @ath_ant_div_comb_alt_check(%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
