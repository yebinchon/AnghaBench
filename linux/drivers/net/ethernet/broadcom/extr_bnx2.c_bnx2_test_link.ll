; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_test_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_test_link(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %5 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @netif_running(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %58

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %58

29:                                               ; preds = %13
  %30 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %34 = call i32 @bnx2_enable_bmsr1(%struct.bnx2* %33)
  %35 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %36 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bnx2_read_phy(%struct.bnx2* %35, i32 %38, i32* %4)
  %40 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %41 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bnx2_read_phy(%struct.bnx2* %40, i32 %43, i32* %4)
  %45 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %46 = call i32 @bnx2_disable_bmsr1(%struct.bnx2* %45)
  %47 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %48 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @BMSR_LSTATUS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %58

55:                                               ; preds = %29
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %54, %26, %25, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_enable_bmsr1(%struct.bnx2*) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

declare dso_local i32 @bnx2_disable_bmsr1(%struct.bnx2*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
