; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_oclk_onoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_oclk_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%sabling the clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@REG_CLKCR = common dso_local global i32 0, align 4
@SDXC_CARD_CLOCK_ON = common dso_local global i32 0, align 4
@SDXC_LOW_POWER_ON = common dso_local global i32 0, align 4
@SDXC_MASK_DATA0 = common dso_local global i32 0, align 4
@SDXC_START = common dso_local global i32 0, align 4
@SDXC_UPCLK_ONLY = common dso_local global i32 0, align 4
@SDXC_WAIT_PRE_OVER = common dso_local global i32 0, align 4
@REG_CMDR = common dso_local global i32 0, align 4
@REG_RINTR = common dso_local global i32 0, align 4
@SDXC_SDIO_INTERRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"fatal err update clk timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_mmc_host*, i32)* @sunxi_mmc_oclk_onoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_oclk_onoff(%struct.sunxi_mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sunxi_mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 750)
  %10 = add i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %12 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mmc_dev(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %21 = load i32, i32* @REG_CLKCR, align 4
  %22 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @SDXC_CARD_CLOCK_ON, align 4
  %24 = load i32, i32* @SDXC_LOW_POWER_ON, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SDXC_MASK_DATA0, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @SDXC_CARD_CLOCK_ON, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %39 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @SDXC_MASK_DATA0, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %50 = load i32, i32* @REG_CLKCR, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @SDXC_START, align 4
  %54 = load i32, i32* @SDXC_UPCLK_ONLY, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SDXC_WAIT_PRE_OVER, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %59 = load i32, i32* @REG_CMDR, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %76, %48
  %63 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %64 = load i32, i32* @REG_CMDR, align 4
  %65 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @time_before(i64 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @SDXC_START, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %62, label %78

78:                                               ; preds = %76
  %79 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %80 = load i32, i32* @REG_RINTR, align 4
  %81 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %82 = load i32, i32* @REG_RINTR, align 4
  %83 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %81, i32 %82)
  %84 = load i32, i32* @SDXC_SDIO_INTERRUPT, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %79, i32 %80, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SDXC_START, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %78
  %93 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %94 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @mmc_dev(i32 %95)
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %119

100:                                              ; preds = %78
  %101 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %102 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %109 = load i32, i32* @REG_CLKCR, align 4
  %110 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %112 = load i32, i32* @REG_CLKCR, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @SDXC_MASK_DATA0, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %111, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %107, %100
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %92
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
