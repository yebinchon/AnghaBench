; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }

@EXT_CSD_CARD_TYPE_HS400ES = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS200 = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_select_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_select_timing(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %6 = call i32 @mmc_can_ext_csd(%struct.mmc_card* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EXT_CSD_CARD_TYPE_HS400ES, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %18 = call i32 @mmc_select_hs400es(%struct.mmc_card* %17)
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %9
  %20 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EXT_CSD_CARD_TYPE_HS200, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %28 = call i32 @mmc_select_hs200(%struct.mmc_card* %27)
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXT_CSD_CARD_TYPE_HS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %38 = call i32 @mmc_select_hs(%struct.mmc_card* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EBADMSG, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %44, %41
  br label %52

52:                                               ; preds = %51, %8
  %53 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %54 = call i32 @mmc_set_bus_speed(%struct.mmc_card* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @mmc_can_ext_csd(%struct.mmc_card*) #1

declare dso_local i32 @mmc_select_hs400es(%struct.mmc_card*) #1

declare dso_local i32 @mmc_select_hs200(%struct.mmc_card*) #1

declare dso_local i32 @mmc_select_hs(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_bus_speed(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
