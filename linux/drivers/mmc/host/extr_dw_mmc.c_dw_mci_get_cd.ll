; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_get_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32 }
%struct.dw_mci_slot = type { i32, i32, %struct.dw_mci* }
%struct.dw_mci = type { i32 }

@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@DW_MMC_CARD_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"card is polling.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"card is non-removable.\0A\00", align 1
@CDETECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"card is present\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"card is not present\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @dw_mci_get_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.dw_mci*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %8)
  store %struct.dw_mci_slot* %9, %struct.dw_mci_slot** %5, align 8
  %10 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %11 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %10, i32 0, i32 2
  %12 = load %struct.dw_mci*, %struct.dw_mci** %11, align 8
  store %struct.dw_mci* %12, %struct.dw_mci** %6, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = call i32 @mmc_gpio_get_cd(%struct.mmc_host* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %23 = call i32 @mmc_card_is_removable(%struct.mmc_host* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %21, %1
  store i32 1, i32* %4, align 4
  %26 = load i32, i32* @DW_MMC_CARD_PRESENT, align 4
  %27 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %28 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %25
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 1
  %41 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 1
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @DW_MMC_CARD_PRESENT, align 4
  %48 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %49 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %48, i32 0, i32 1
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %46, %25
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %108

53:                                               ; preds = %21
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %4, align 4
  br label %72

58:                                               ; preds = %53
  %59 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %60 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %59, i32 0, i32 2
  %61 = load %struct.dw_mci*, %struct.dw_mci** %60, align 8
  %62 = load i32, i32* @CDETECT, align 4
  %63 = call i32 @mci_readl(%struct.dw_mci* %61, i32 %62)
  %64 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %65 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 1, %66
  %68 = and i32 %63, %67
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %58, %56
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %75 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_bh(i32* %75)
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32, i32* @DW_MMC_CARD_PRESENT, align 4
  %81 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %82 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %81, i32 0, i32 1
  %83 = call i32 @test_and_set_bit(i32 %80, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %86, i32 0, i32 1
  %88 = call i32 @dev_dbg(i32* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %103

89:                                               ; preds = %79, %73
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @DW_MMC_CARD_PRESENT, align 4
  %94 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %95 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %94, i32 0, i32 1
  %96 = call i32 @test_and_clear_bit(i32 %93, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %100 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %99, i32 0, i32 1
  %101 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %92, %89
  br label %103

103:                                              ; preds = %102, %85
  %104 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %105 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_bh(i32* %105)
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %51
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_gpio_get_cd(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_is_removable(%struct.mmc_host*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
