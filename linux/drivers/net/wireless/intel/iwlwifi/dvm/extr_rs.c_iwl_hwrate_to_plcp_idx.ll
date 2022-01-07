; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_iwl_hwrate_to_plcp_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_iwl_hwrate_to_plcp_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@IWL_RATE_MIMO3_6M_PLCP = common dso_local global i32 0, align 4
@IWL_RATE_MIMO2_6M_PLCP = common dso_local global i32 0, align 4
@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IWL_RATE_9M_INDEX = common dso_local global i32 0, align 4
@IWL_LAST_OFDM_RATE = common dso_local global i32 0, align 4
@iwl_rates = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iwl_hwrate_to_plcp_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_hwrate_to_plcp_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @rs_extract_rate(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IWL_RATE_MIMO3_6M_PLCP, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IWL_RATE_MIMO3_6M_PLCP, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IWL_RATE_MIMO2_6M_PLCP, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IWL_RATE_MIMO2_6M_PLCP, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IWL_RATE_9M_INDEX, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IWL_LAST_OFDM_RATE, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %73

48:                                               ; preds = %42, %38
  br label %72

49:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @iwl_rates, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @iwl_rates, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @rs_extract_rate(i32 %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %73

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %50

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %48
  store i32 -1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %65, %46
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @rs_extract_rate(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
