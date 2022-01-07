; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_set_memory_mode_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_set_memory_mode_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_spifi = type { i32, i32, i64, i32 }

@SPIFI_MCMD = common dso_local global i64 0, align 8
@SPIFI_STAT = common dso_local global i64 0, align 8
@SPIFI_STAT_MCINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to enter memory mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_spifi*)* @nxp_spifi_set_memory_mode_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_spifi_set_memory_mode_on(%struct.nxp_spifi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxp_spifi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nxp_spifi* %0, %struct.nxp_spifi** %3, align 8
  %6 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %7 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %13 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %16 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPIFI_MCMD, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %22 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPIFI_STAT, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SPIFI_STAT_MCINIT, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @readb_poll_timeout(i64 %25, i32 %26, i32 %29, i32 10, i32 30)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %11
  %34 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %35 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %41

38:                                               ; preds = %11
  %39 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %40 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
