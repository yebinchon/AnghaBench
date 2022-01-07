; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-cns3xxx.c_sdhci_cns3xxx_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-cns3xxx.c_sdhci_cns3xxx_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"desired SD clock: %d, actual: %d\0A\00", align 1
@SDHCI_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_STABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"clock is unstable\00", align 1
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_cns3xxx_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_cns3xxx_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.device* @mmc_dev(%struct.TYPE_2__* %11)
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 1, i32* %6, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %19 = call i32 @sdhci_writew(%struct.sdhci_host* %17, i32 0, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %98

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %46, %23
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 256
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %6, align 4
  br label %45

44:                                               ; preds = %38
  br label %47

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %35
  br label %24

47:                                               ; preds = %44, %24
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %51 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 %52, %53
  %55 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 3
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SDHCI_DIVIDER_SHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %71 = call i32 @sdhci_writew(%struct.sdhci_host* %68, i32 %69, i32 %70)
  store i64 20, i64* %8, align 8
  br label %72

72:                                               ; preds = %86, %61
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %74 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %75 = call i32 @sdhci_readw(%struct.sdhci_host* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @dev_warn(%struct.device* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %90

86:                                               ; preds = %80
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %8, align 8
  %89 = call i32 @mdelay(i32 1)
  br label %72

90:                                               ; preds = %83, %72
  %91 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %97 = call i32 @sdhci_writew(%struct.sdhci_host* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %22
  ret void
}

declare dso_local %struct.device* @mmc_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
