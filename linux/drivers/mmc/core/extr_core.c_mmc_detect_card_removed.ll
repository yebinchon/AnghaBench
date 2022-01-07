; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_detect_card_removed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_detect_card_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i64, i32, %struct.mmc_card* }
%struct.mmc_card = type { i32 }

@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_detect_card_removed(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 4
  %8 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  store %struct.mmc_card* %8, %struct.mmc_card** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %17 = icmp ne %struct.mmc_card* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %66

19:                                               ; preds = %1
  %20 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %21 = call i32 @mmc_card_is_removable(%struct.mmc_host* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %66

24:                                               ; preds = %19
  %25 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %26 = call i32 @mmc_card_removed(%struct.mmc_card* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %31, %24
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %40
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = call i32 @_mmc_detect_card_removed(%struct.mmc_host* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 1
  %60 = call i32 @cancel_delayed_work(i32* %59)
  %61 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %62 = call i32 @_mmc_detect_change(%struct.mmc_host* %61, i32 0, i32 0)
  br label %63

63:                                               ; preds = %57, %50, %45
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %38, %23, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_card_is_removable(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_removed(%struct.mmc_card*) #1

declare dso_local i32 @_mmc_detect_card_removed(%struct.mmc_host*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @_mmc_detect_change(%struct.mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
