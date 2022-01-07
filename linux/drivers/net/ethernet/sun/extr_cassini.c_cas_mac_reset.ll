; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, i32 }

@REG_MAC_TX_RESET = common dso_local global i64 0, align 8
@REG_MAC_RX_RESET = common dso_local global i64 0, align 8
@STOP_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mac tx[%d]/rx[%d] reset failed [%08x]\0A\00", align 1
@REG_MAC_STATE_MACHINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_mac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_mac_reset(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %4 = load %struct.cas*, %struct.cas** %2, align 8
  %5 = getelementptr inbounds %struct.cas, %struct.cas* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @REG_MAC_TX_RESET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 1, i64 %8)
  %10 = load %struct.cas*, %struct.cas** %2, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_MAC_RX_RESET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 1, i64 %14)
  %16 = load i32, i32* @STOP_TRIES, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.cas*, %struct.cas** %2, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_MAC_TX_RESET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %32

30:                                               ; preds = %21
  %31 = call i32 @udelay(i32 10)
  br label %17

32:                                               ; preds = %29, %17
  %33 = load i32, i32* @STOP_TRIES, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %47, %32
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  %37 = icmp sgt i32 %35, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.cas*, %struct.cas** %2, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REG_MAC_RX_RESET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %49

47:                                               ; preds = %38
  %48 = call i32 @udelay(i32 10)
  br label %34

49:                                               ; preds = %46, %34
  %50 = load %struct.cas*, %struct.cas** %2, align 8
  %51 = getelementptr inbounds %struct.cas, %struct.cas* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @REG_MAC_TX_RESET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  %56 = load %struct.cas*, %struct.cas** %2, align 8
  %57 = getelementptr inbounds %struct.cas, %struct.cas* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REG_MAC_RX_RESET, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  %62 = or i32 %55, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %49
  %65 = load %struct.cas*, %struct.cas** %2, align 8
  %66 = getelementptr inbounds %struct.cas, %struct.cas* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cas*, %struct.cas** %2, align 8
  %69 = getelementptr inbounds %struct.cas, %struct.cas* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @REG_MAC_TX_RESET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  %74 = load %struct.cas*, %struct.cas** %2, align 8
  %75 = getelementptr inbounds %struct.cas, %struct.cas* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @REG_MAC_RX_RESET, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  %80 = load %struct.cas*, %struct.cas** %2, align 8
  %81 = getelementptr inbounds %struct.cas, %struct.cas* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @REG_MAC_STATE_MACHINE, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl(i64 %84)
  %86 = call i32 @netdev_err(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %79, i32 %85)
  br label %87

87:                                               ; preds = %64, %49
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
