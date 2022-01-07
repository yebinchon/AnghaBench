; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c__mmc_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c__mmc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32 }

@EXT_CSD_POWER_OFF_SHORT = common dso_local global i32 0, align 4
@EXT_CSD_POWER_OFF_LONG = common dso_local global i32 0, align 4
@MMC_CAP2_FULL_PWR_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @_mmc_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mmc_suspend(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EXT_CSD_POWER_OFF_SHORT, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EXT_CSD_POWER_OFF_LONG, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = call i32 @mmc_claim_host(%struct.mmc_host* %15)
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mmc_card_suspended(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %82

23:                                               ; preds = %13
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_flush_cache(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %82

31:                                               ; preds = %23
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @mmc_can_poweroff_notify(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MMC_CAP2_FULL_PWR_CYCLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @mmc_poweroff_notify(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %71

53:                                               ; preds = %44, %31
  %54 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @mmc_can_sleep(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %61 = call i32 @mmc_sleep(%struct.mmc_host* %60)
  store i32 %61, i32* %5, align 4
  br label %70

62:                                               ; preds = %53
  %63 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %64 = call i32 @mmc_host_is_spi(%struct.mmc_host* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %68 = call i32 @mmc_deselect_cards(%struct.mmc_host* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %76 = call i32 @mmc_power_off(%struct.mmc_host* %75)
  %77 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mmc_card_set_suspended(i32 %79)
  br label %81

81:                                               ; preds = %74, %71
  br label %82

82:                                               ; preds = %81, %30, %22
  %83 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %84 = call i32 @mmc_release_host(%struct.mmc_host* %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i64 @mmc_card_suspended(i32) #1

declare dso_local i32 @mmc_flush_cache(i32) #1

declare dso_local i64 @mmc_can_poweroff_notify(i32) #1

declare dso_local i32 @mmc_poweroff_notify(i32, i32) #1

declare dso_local i64 @mmc_can_sleep(i32) #1

declare dso_local i32 @mmc_sleep(%struct.mmc_host*) #1

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_deselect_cards(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_set_suspended(i32) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
