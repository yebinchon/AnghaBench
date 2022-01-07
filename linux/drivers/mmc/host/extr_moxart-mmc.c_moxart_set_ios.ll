; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64, i64, i32 }
%struct.moxart_host = type { i32, i32, i32, i64 }

@CLK_DIV_MASK = common dso_local global i32 0, align 4
@CLK_SD = common dso_local global i32 0, align 4
@CLK_HISPD = common dso_local global i32 0, align 4
@REG_CLOCK_CONTROL = common dso_local global i64 0, align 8
@MMC_POWER_OFF = common dso_local global i64 0, align 8
@REG_POWER_CONTROL = common dso_local global i64 0, align 8
@SD_POWER_ON = common dso_local global i32 0, align 4
@MIN_POWER = common dso_local global i64 0, align 8
@BUS_WIDTH_4 = common dso_local global i32 0, align 4
@REG_BUS_WIDTH = common dso_local global i64 0, align 8
@BUS_WIDTH_8 = common dso_local global i32 0, align 4
@BUS_WIDTH_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @moxart_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.moxart_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.moxart_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.moxart_host* %11, %struct.moxart_host** %5, align 8
  %12 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %13 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %12, i32 0, i32 2
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CLK_DIV_MASK, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %30 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 2, %33
  %35 = sdiv i32 %31, %34
  %36 = icmp sge i32 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %21

42:                                               ; preds = %37, %21
  %43 = load i32, i32* @CLK_SD, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %47 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = mul nsw i32 2, %50
  %52 = sdiv i32 %48, %51
  %53 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %54 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %56 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %59 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %42
  %63 = load i32, i32* @CLK_HISPD, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %42
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %69 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @REG_CLOCK_CONTROL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  br label %74

74:                                               ; preds = %66, %2
  %75 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MMC_POWER_OFF, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %82 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @REG_POWER_CONTROL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  %87 = load i32, i32* @SD_POWER_ON, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %91 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @REG_POWER_CONTROL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  br label %120

96:                                               ; preds = %74
  %97 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %98 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MIN_POWER, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %110

103:                                              ; preds = %96
  %104 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MIN_POWER, align 8
  %108 = sub nsw i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %103, %102
  %111 = load i32, i32* @SD_POWER_ON, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %115 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @REG_POWER_CONTROL, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  br label %120

120:                                              ; preds = %110, %80
  %121 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %122 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %140 [
    i32 129, label %124
    i32 128, label %132
  ]

124:                                              ; preds = %120
  %125 = load i32, i32* @BUS_WIDTH_4, align 4
  %126 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %127 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @REG_BUS_WIDTH, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  br label %148

132:                                              ; preds = %120
  %133 = load i32, i32* @BUS_WIDTH_8, align 4
  %134 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %135 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @REG_BUS_WIDTH, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  br label %148

140:                                              ; preds = %120
  %141 = load i32, i32* @BUS_WIDTH_1, align 4
  %142 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %143 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @REG_BUS_WIDTH, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 %141, i64 %146)
  br label %148

148:                                              ; preds = %140, %132, %124
  %149 = load %struct.moxart_host*, %struct.moxart_host** %5, align 8
  %150 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %149, i32 0, i32 2
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  ret void
}

declare dso_local %struct.moxart_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
