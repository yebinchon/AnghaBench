; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i64, i32, i64 }

@GREG_IMASK = common dso_local global i64 0, align 8
@GREG_SWRST_TXRST = common dso_local global i32 0, align 4
@GREG_SWRST_RXRST = common dso_local global i32 0, align 4
@GREG_SWRST = common dso_local global i64 0, align 8
@STOP_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SW reset is ghetto\0A\00", align 1
@phy_serialink = common dso_local global i64 0, align 8
@phy_serdes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_reset(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %5 = load %struct.gem*, %struct.gem** %2, align 8
  %6 = getelementptr inbounds %struct.gem, %struct.gem* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GREG_IMASK, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 -1, i64 %9)
  %11 = load %struct.gem*, %struct.gem** %2, align 8
  %12 = getelementptr inbounds %struct.gem, %struct.gem* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GREG_SWRST_TXRST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @GREG_SWRST_RXRST, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.gem*, %struct.gem** %2, align 8
  %19 = getelementptr inbounds %struct.gem, %struct.gem* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GREG_SWRST, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load i32, i32* @STOP_TRIES, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %38, %1
  %26 = call i32 @udelay(i32 20)
  %27 = load %struct.gem*, %struct.gem** %2, align 8
  %28 = getelementptr inbounds %struct.gem, %struct.gem* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GREG_SWRST, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  %35 = icmp sle i32 %33, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %45

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @GREG_SWRST_TXRST, align 4
  %41 = load i32, i32* @GREG_SWRST_RXRST, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %25, label %45

45:                                               ; preds = %38, %36
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.gem*, %struct.gem** %2, align 8
  %50 = getelementptr inbounds %struct.gem, %struct.gem* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netdev_err(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.gem*, %struct.gem** %2, align 8
  %55 = getelementptr inbounds %struct.gem, %struct.gem* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @phy_serialink, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.gem*, %struct.gem** %2, align 8
  %61 = getelementptr inbounds %struct.gem, %struct.gem* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @phy_serdes, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %53
  %66 = load %struct.gem*, %struct.gem** %2, align 8
  %67 = call i32 @gem_pcs_reinit_adv(%struct.gem* %66)
  br label %68

68:                                               ; preds = %65, %59
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @gem_pcs_reinit_adv(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
