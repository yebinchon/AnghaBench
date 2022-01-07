; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_spifi = type { i32, i64 }

@SPIFI_STAT_RESET = common dso_local global i32 0, align 4
@SPIFI_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"state reset timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_spifi*)* @nxp_spifi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_spifi_reset(%struct.nxp_spifi* %0) #0 {
  %2 = alloca %struct.nxp_spifi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nxp_spifi* %0, %struct.nxp_spifi** %2, align 8
  %5 = load i32, i32* @SPIFI_STAT_RESET, align 4
  %6 = load %struct.nxp_spifi*, %struct.nxp_spifi** %2, align 8
  %7 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPIFI_STAT, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load %struct.nxp_spifi*, %struct.nxp_spifi** %2, align 8
  %13 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPIFI_STAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SPIFI_STAT_RESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @readb_poll_timeout(i64 %16, i32 %17, i32 %23, i32 10, i32 30)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.nxp_spifi*, %struct.nxp_spifi** %2, align 8
  %29 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
