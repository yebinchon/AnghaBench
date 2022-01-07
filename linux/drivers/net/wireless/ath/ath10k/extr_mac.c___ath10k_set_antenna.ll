; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c___ath10k_set_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c___ath10k_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, %struct.TYPE_4__, i8*, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@ATH10K_STATE_ON = common dso_local global i64 0, align 8
@ATH10K_STATE_RESTARTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to set tx-chainmask: %d, req 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to set rx-chainmask: %d, req 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i8*)* @__ath10k_set_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_set_antenna(%struct.ath10k* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 4
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @ath10k_check_chain_mask(%struct.ath10k* %12, i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @ath10k_check_chain_mask(%struct.ath10k* %15, i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ATH10K_STATE_ON, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ATH10K_STATE_RESTARTED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %75

36:                                               ; preds = %29, %3
  %37 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %38 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %37, i32 %43, i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @ath10k_warn(%struct.ath10k* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %75

54:                                               ; preds = %36
  %55 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %56 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @ath10k_wmi_pdev_set_param(%struct.ath10k* %55, i32 %61, i8* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @ath10k_warn(%struct.ath10k* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %68, i8* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %75

72:                                               ; preds = %54
  %73 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %74 = call i32 @ath10k_mac_setup_ht_vht_cap(%struct.ath10k* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %66, %48, %35
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_check_chain_mask(%struct.ath10k*, i8*, i8*) #1

declare dso_local i32 @ath10k_wmi_pdev_set_param(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i8*) #1

declare dso_local i32 @ath10k_mac_setup_ht_vht_cap(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
