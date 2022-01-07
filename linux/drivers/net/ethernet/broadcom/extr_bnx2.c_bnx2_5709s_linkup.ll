; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5709s_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5709s_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32, i32, i32 }

@MII_BNX2_BLK_ADDR = common dso_local global i32 0, align 4
@MII_BNX2_BLK_ADDR_GP_STATUS = common dso_local global i32 0, align 4
@MII_BNX2_GP_TOP_AN_STATUS1 = common dso_local global i32 0, align 4
@MII_BNX2_BLK_ADDR_COMBO_IEEEB0 = common dso_local global i32 0, align 4
@AUTONEG_SPEED = common dso_local global i32 0, align 4
@MII_BNX2_GP_TOP_AN_SPEED_MSK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@MII_BNX2_GP_TOP_AN_FD = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_5709s_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_5709s_linkup(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %9 = load i32, i32* @MII_BNX2_BLK_ADDR, align 4
  %10 = load i32, i32* @MII_BNX2_BLK_ADDR_GP_STATUS, align 4
  %11 = call i32 @bnx2_write_phy(%struct.bnx2* %8, i32 %9, i32 %10)
  %12 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %13 = load i32, i32* @MII_BNX2_GP_TOP_AN_STATUS1, align 4
  %14 = call i32 @bnx2_read_phy(%struct.bnx2* %12, i32 %13, i32* %4)
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = load i32, i32* @MII_BNX2_BLK_ADDR, align 4
  %17 = load i32, i32* @MII_BNX2_BLK_ADDR_COMBO_IEEEB0, align 4
  %18 = call i32 @bnx2_write_phy(%struct.bnx2* %15, i32 %16, i32 %17)
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AUTONEG_SPEED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %71

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MII_BNX2_GP_TOP_AN_SPEED_MSK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %57 [
    i32 132, label %41
    i32 131, label %45
    i32 130, label %49
    i32 129, label %49
    i32 128, label %53
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* @SPEED_10, align 4
  %43 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %57

45:                                               ; preds = %36
  %46 = load i32, i32* @SPEED_100, align 4
  %47 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %48 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  br label %57

49:                                               ; preds = %36, %36
  %50 = load i32, i32* @SPEED_1000, align 4
  %51 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %36
  %54 = load i32, i32* @SPEED_2500, align 4
  %55 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %56 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %36, %53, %49, %45, %41
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @MII_BNX2_GP_TOP_AN_FD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @DUPLEX_FULL, align 4
  %64 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %65 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @DUPLEX_HALF, align 4
  %68 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %69 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
