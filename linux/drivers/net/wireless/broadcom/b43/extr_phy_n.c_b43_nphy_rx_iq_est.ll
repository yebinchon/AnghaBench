; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rx_iq_est.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rx_iq_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.nphy_iq_est = type { i32, i32, i32, i32, i32, i32 }

@B43_NPHY_IQEST_SAMCNT = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_WT = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_WT_VAL = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_CMD = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_CMD_MODE = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_CMD_START = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IPACC_HI0 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IPACC_LO0 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_QPACC_HI0 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_QPACC_LO0 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IQACC_HI0 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IQACC_LO0 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IPACC_HI1 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IPACC_LO1 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_QPACC_HI1 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_QPACC_LO1 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IQACC_HI1 = common dso_local global i32 0, align 4
@B43_NPHY_IQEST_IQACC_LO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.nphy_iq_est*, i32, i32, i32)* @b43_nphy_rx_iq_est to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rx_iq_est(%struct.b43_wldev* %0, %struct.nphy_iq_est* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca %struct.nphy_iq_est*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store %struct.nphy_iq_est* %1, %struct.nphy_iq_est** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %14 = load i32, i32* @B43_NPHY_IQEST_SAMCNT, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @b43_phy_write(%struct.b43_wldev* %13, i32 %14, i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %18 = load i32, i32* @B43_NPHY_IQEST_WT, align 4
  %19 = load i32, i32* @B43_NPHY_IQEST_WT_VAL, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @b43_phy_maskset(%struct.b43_wldev* %17, i32 %18, i32 %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %27 = load i32, i32* @B43_NPHY_IQEST_CMD, align 4
  %28 = load i32, i32* @B43_NPHY_IQEST_CMD_MODE, align 4
  %29 = call i32 @b43_phy_set(%struct.b43_wldev* %26, i32 %27, i32 %28)
  br label %36

30:                                               ; preds = %5
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %32 = load i32, i32* @B43_NPHY_IQEST_CMD, align 4
  %33 = load i32, i32* @B43_NPHY_IQEST_CMD_MODE, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @b43_phy_mask(%struct.b43_wldev* %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %38 = load i32, i32* @B43_NPHY_IQEST_CMD, align 4
  %39 = load i32, i32* @B43_NPHY_IQEST_CMD_START, align 4
  %40 = call i32 @b43_phy_set(%struct.b43_wldev* %37, i32 %38, i32 %39)
  store i32 1000, i32* %11, align 4
  br label %41

41:                                               ; preds = %115, %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %118

44:                                               ; preds = %41
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %46 = load i32, i32* @B43_NPHY_IQEST_CMD, align 4
  %47 = call i32 @b43_phy_read(%struct.b43_wldev* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @B43_NPHY_IQEST_CMD_START, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %113, label %52

52:                                               ; preds = %44
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %54 = load i32, i32* @B43_NPHY_IQEST_IPACC_HI0, align 4
  %55 = call i32 @b43_phy_read(%struct.b43_wldev* %53, i32 %54)
  %56 = shl i32 %55, 16
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %58 = load i32, i32* @B43_NPHY_IQEST_IPACC_LO0, align 4
  %59 = call i32 @b43_phy_read(%struct.b43_wldev* %57, i32 %58)
  %60 = or i32 %56, %59
  %61 = load %struct.nphy_iq_est*, %struct.nphy_iq_est** %7, align 8
  %62 = getelementptr inbounds %struct.nphy_iq_est, %struct.nphy_iq_est* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %64 = load i32, i32* @B43_NPHY_IQEST_QPACC_HI0, align 4
  %65 = call i32 @b43_phy_read(%struct.b43_wldev* %63, i32 %64)
  %66 = shl i32 %65, 16
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %68 = load i32, i32* @B43_NPHY_IQEST_QPACC_LO0, align 4
  %69 = call i32 @b43_phy_read(%struct.b43_wldev* %67, i32 %68)
  %70 = or i32 %66, %69
  %71 = load %struct.nphy_iq_est*, %struct.nphy_iq_est** %7, align 8
  %72 = getelementptr inbounds %struct.nphy_iq_est, %struct.nphy_iq_est* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %74 = load i32, i32* @B43_NPHY_IQEST_IQACC_HI0, align 4
  %75 = call i32 @b43_phy_read(%struct.b43_wldev* %73, i32 %74)
  %76 = shl i32 %75, 16
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %78 = load i32, i32* @B43_NPHY_IQEST_IQACC_LO0, align 4
  %79 = call i32 @b43_phy_read(%struct.b43_wldev* %77, i32 %78)
  %80 = or i32 %76, %79
  %81 = load %struct.nphy_iq_est*, %struct.nphy_iq_est** %7, align 8
  %82 = getelementptr inbounds %struct.nphy_iq_est, %struct.nphy_iq_est* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %84 = load i32, i32* @B43_NPHY_IQEST_IPACC_HI1, align 4
  %85 = call i32 @b43_phy_read(%struct.b43_wldev* %83, i32 %84)
  %86 = shl i32 %85, 16
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %88 = load i32, i32* @B43_NPHY_IQEST_IPACC_LO1, align 4
  %89 = call i32 @b43_phy_read(%struct.b43_wldev* %87, i32 %88)
  %90 = or i32 %86, %89
  %91 = load %struct.nphy_iq_est*, %struct.nphy_iq_est** %7, align 8
  %92 = getelementptr inbounds %struct.nphy_iq_est, %struct.nphy_iq_est* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %94 = load i32, i32* @B43_NPHY_IQEST_QPACC_HI1, align 4
  %95 = call i32 @b43_phy_read(%struct.b43_wldev* %93, i32 %94)
  %96 = shl i32 %95, 16
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %98 = load i32, i32* @B43_NPHY_IQEST_QPACC_LO1, align 4
  %99 = call i32 @b43_phy_read(%struct.b43_wldev* %97, i32 %98)
  %100 = or i32 %96, %99
  %101 = load %struct.nphy_iq_est*, %struct.nphy_iq_est** %7, align 8
  %102 = getelementptr inbounds %struct.nphy_iq_est, %struct.nphy_iq_est* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %104 = load i32, i32* @B43_NPHY_IQEST_IQACC_HI1, align 4
  %105 = call i32 @b43_phy_read(%struct.b43_wldev* %103, i32 %104)
  %106 = shl i32 %105, 16
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %108 = load i32, i32* @B43_NPHY_IQEST_IQACC_LO1, align 4
  %109 = call i32 @b43_phy_read(%struct.b43_wldev* %107, i32 %108)
  %110 = or i32 %106, %109
  %111 = load %struct.nphy_iq_est*, %struct.nphy_iq_est** %7, align 8
  %112 = getelementptr inbounds %struct.nphy_iq_est, %struct.nphy_iq_est* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %121

113:                                              ; preds = %44
  %114 = call i32 @udelay(i32 10)
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %11, align 4
  br label %41

118:                                              ; preds = %41
  %119 = load %struct.nphy_iq_est*, %struct.nphy_iq_est** %7, align 8
  %120 = call i32 @memset(%struct.nphy_iq_est* %119, i32 0, i32 24)
  br label %121

121:                                              ; preds = %118, %52
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memset(%struct.nphy_iq_est*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
