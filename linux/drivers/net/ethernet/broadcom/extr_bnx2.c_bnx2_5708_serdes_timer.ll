; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5708_serdes_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5708_serdes_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i64, i32, i32, i8*, i32 }

@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_2_5G_CAPABLE = common dso_local global i32 0, align 4
@AUTONEG_SPEED = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BNX2_SERDES_FORCED_TIMEOUT = common dso_local global i8* null, align 8
@BNX2_TIMER_INTERVAL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_5708_serdes_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_5708_serdes_timer(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %4 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BNX2_PHY_FLAG_2_5G_CAPABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %80

21:                                               ; preds = %11
  %22 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %22, i32 0, i32 4
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  br label %76

34:                                               ; preds = %21
  %35 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %34
  %40 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %41 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AUTONEG_SPEED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %48 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bnx2_read_phy(%struct.bnx2* %47, i32 %50, i32* %3)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @BMCR_ANENABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %58 = call i32 @bnx2_enable_forced_2g5(%struct.bnx2* %57)
  %59 = load i8*, i8** @BNX2_SERDES_FORCED_TIMEOUT, align 8
  %60 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  br label %70

62:                                               ; preds = %46
  %63 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %64 = call i32 @bnx2_disable_forced_2g5(%struct.bnx2* %63)
  %65 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %66 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %65, i32 0, i32 1
  store i32 2, i32* %66, align 4
  %67 = load i8*, i8** @BNX2_TIMER_INTERVAL, align 8
  %68 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %69 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %62, %56
  br label %75

71:                                               ; preds = %39, %34
  %72 = load i8*, i8** @BNX2_TIMER_INTERVAL, align 8
  %73 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %74 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %71, %70
  br label %76

76:                                               ; preds = %75, %29
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %77, i32 0, i32 4
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %76, %18, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

declare dso_local i32 @bnx2_enable_forced_2g5(%struct.bnx2*) #1

declare dso_local i32 @bnx2_disable_forced_2g5(%struct.bnx2*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
