; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32, i64, i64 }
%struct.wbsd_host = type { i64, i64, i32, i32, i32, i64 }

@MMC_POWER_OFF = common dso_local global i64 0, align 8
@WBSD_CLK_24M = common dso_local global i64 0, align 8
@WBSD_CLK_16M = common dso_local global i64 0, align 8
@WBSD_CLK_12M = common dso_local global i64 0, align 8
@WBSD_CLK_375K = common dso_local global i64 0, align 8
@WBSD_IDX_CLK = common dso_local global i32 0, align 4
@WBSD_CSR = common dso_local global i64 0, align 8
@WBSD_POWER_N = common dso_local global i64 0, align 8
@WBSD_IDX_SETUP = common dso_local global i32 0, align 4
@MMC_CS_HIGH = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@WBSD_DAT3_H = common dso_local global i64 0, align 8
@WBSD_FIGNORE_DETECT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @wbsd_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.wbsd_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.wbsd_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.wbsd_host* %10, %struct.wbsd_host** %5, align 8
  %11 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %12 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMC_POWER_OFF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %21 = call i32 @wbsd_init_device(%struct.wbsd_host* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 24000000
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @WBSD_CLK_24M, align 8
  store i64 %28, i64* %6, align 8
  br label %47

29:                                               ; preds = %22
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 16000000
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @WBSD_CLK_16M, align 8
  store i64 %35, i64* %6, align 8
  br label %46

36:                                               ; preds = %29
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 12000000
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @WBSD_CLK_12M, align 8
  store i64 %42, i64* %6, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @WBSD_CLK_375K, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %34
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %50 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %55 = load i32, i32* @WBSD_IDX_CLK, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @wbsd_write_index(%struct.wbsd_host* %54, i32 %55, i64 %56)
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %60 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MMC_POWER_OFF, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %69 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WBSD_CSR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i64 @inb(i64 %72)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* @WBSD_POWER_N, align 8
  %75 = xor i64 %74, -1
  %76 = load i64, i64* %8, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %80 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @WBSD_CSR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outb(i64 %78, i64 %83)
  br label %85

85:                                               ; preds = %67, %61
  %86 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %87 = load i32, i32* @WBSD_IDX_SETUP, align 4
  %88 = call i64 @wbsd_read_index(%struct.wbsd_host* %86, i32 %87)
  store i64 %88, i64* %7, align 8
  %89 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MMC_CS_HIGH, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %85
  %95 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load i64, i64* @WBSD_DAT3_H, align 8
  %103 = load i64, i64* %7, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = load i32, i32* @WBSD_FIGNORE_DETECT, align 4
  %106 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %107 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %129

110:                                              ; preds = %85
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @WBSD_DAT3_H, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load i64, i64* @WBSD_DAT3_H, align 8
  %117 = xor i64 %116, -1
  %118 = load i64, i64* %7, align 8
  %119 = and i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %121 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %120, i32 0, i32 3
  %122 = load i64, i64* @jiffies, align 8
  %123 = load i32, i32* @HZ, align 4
  %124 = sdiv i32 %123, 100
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %122, %125
  %127 = call i32 @mod_timer(i32* %121, i64 %126)
  br label %128

128:                                              ; preds = %115, %110
  br label %129

129:                                              ; preds = %128, %94
  %130 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %131 = load i32, i32* @WBSD_IDX_SETUP, align 4
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @wbsd_write_index(%struct.wbsd_host* %130, i32 %131, i64 %132)
  %134 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %135 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %138 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.wbsd_host*, %struct.wbsd_host** %5, align 8
  %140 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %139, i32 0, i32 2
  %141 = call i32 @spin_unlock_bh(i32* %140)
  ret void
}

declare dso_local %struct.wbsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @wbsd_init_device(%struct.wbsd_host*) #1

declare dso_local i32 @wbsd_write_index(%struct.wbsd_host*, i32, i64) #1

declare dso_local i64 @inb(i64) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i64 @wbsd_read_index(%struct.wbsd_host*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
