; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_init2055_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_init2055_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32 }

@PCI_VENDOR_ID_BROADCOM = common dso_local global i64 0, align 8
@SSB_BOARD_CB2_4321 = common dso_local global i64 0, align 8
@B43_BFL2_RXBB_INT_REG_DIS = common dso_local global i32 0, align 4
@B2055_MASTER1 = common dso_local global i32 0, align 4
@B2055_C1_RX_BB_REG = common dso_local global i32 0, align 4
@B2055_C2_RX_BB_REG = common dso_local global i32 0, align 4
@B2055_RRCCAL_NOPTSEL = common dso_local global i32 0, align 4
@B2055_CAL_MISC = common dso_local global i32 0, align 4
@B2055_CAL_LPOCTL = common dso_local global i32 0, align 4
@B2055_CAL_COUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"radio post init timeout\0A\00", align 1
@B2055_C1_RX_BB_LPF = common dso_local global i32 0, align 4
@B2055_C2_RX_BB_LPF = common dso_local global i32 0, align 4
@B2055_C1_RX_BB_MIDACHP = common dso_local global i32 0, align 4
@B2055_C2_RX_BB_MIDACHP = common dso_local global i32 0, align 4
@B2055_C1_LNA_GAINBST = common dso_local global i32 0, align 4
@B2055_C2_LNA_GAINBST = common dso_local global i32 0, align 4
@B2055_C1_RX_RFSPC1 = common dso_local global i32 0, align 4
@B2055_C2_RX_RFSPC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_init2055_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_init2055_post(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  store %struct.b43_phy_n* %9, %struct.b43_phy_n** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %13, align 8
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %16 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_VENDOR_ID_BROADCOM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SSB_BOARD_CB2_4321, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 65
  br label %42

42:                                               ; preds = %35, %27, %19
  %43 = phi i1 [ false, %27 ], [ false, %19 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %54

45:                                               ; preds = %1
  %46 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %47 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @B43_BFL2_RXBB_INT_REG_DIS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %45, %42
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B2055_MASTER1, align 4
  %57 = call i32 @b43_radio_mask(%struct.b43_wldev* %55, i32 %56, i32 65523)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B2055_C1_RX_BB_REG, align 4
  %63 = call i32 @b43_radio_mask(%struct.b43_wldev* %61, i32 %62, i32 127)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B2055_C2_RX_BB_REG, align 4
  %66 = call i32 @b43_radio_mask(%struct.b43_wldev* %64, i32 %65, i32 127)
  br label %67

67:                                               ; preds = %60, %54
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = load i32, i32* @B2055_RRCCAL_NOPTSEL, align 4
  %70 = call i32 @b43_radio_maskset(%struct.b43_wldev* %68, i32 %69, i32 65472, i32 44)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B2055_CAL_MISC, align 4
  %73 = call i32 @b43_radio_write(%struct.b43_wldev* %71, i32 %72, i32 60)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @B2055_CAL_MISC, align 4
  %76 = call i32 @b43_radio_mask(%struct.b43_wldev* %74, i32 %75, i32 65470)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %79 = call i32 @b43_radio_set(%struct.b43_wldev* %77, i32 %78, i32 128)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = load i32, i32* @B2055_CAL_MISC, align 4
  %82 = call i32 @b43_radio_set(%struct.b43_wldev* %80, i32 %81, i32 1)
  %83 = call i32 @msleep(i32 1)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* @B2055_CAL_MISC, align 4
  %86 = call i32 @b43_radio_set(%struct.b43_wldev* %84, i32 %85, i32 64)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B2055_CAL_COUT2, align 4
  %89 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %87, i32 %88, i32 128, i32 128, i32 10, i32 2000)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %67
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @b43err(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %67
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %99 = call i32 @b43_radio_mask(%struct.b43_wldev* %97, i32 %98, i32 65407)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @b43_switch_channel(%struct.b43_wldev* %100, i32 %104)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* @B2055_C1_RX_BB_LPF, align 4
  %108 = call i32 @b43_radio_write(%struct.b43_wldev* %106, i32 %107, i32 9)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = load i32, i32* @B2055_C2_RX_BB_LPF, align 4
  %111 = call i32 @b43_radio_write(%struct.b43_wldev* %109, i32 %110, i32 9)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = load i32, i32* @B2055_C1_RX_BB_MIDACHP, align 4
  %114 = call i32 @b43_radio_write(%struct.b43_wldev* %112, i32 %113, i32 131)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @B2055_C2_RX_BB_MIDACHP, align 4
  %117 = call i32 @b43_radio_write(%struct.b43_wldev* %115, i32 %116, i32 131)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @B2055_C1_LNA_GAINBST, align 4
  %120 = call i32 @b43_radio_maskset(%struct.b43_wldev* %118, i32 %119, i32 65528, i32 6)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B2055_C2_LNA_GAINBST, align 4
  %123 = call i32 @b43_radio_maskset(%struct.b43_wldev* %121, i32 %122, i32 65528, i32 6)
  %124 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %125 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %96
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = load i32, i32* @B2055_C1_RX_RFSPC1, align 4
  %131 = call i32 @b43_radio_set(%struct.b43_wldev* %129, i32 %130, i32 2)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = load i32, i32* @B2055_C2_RX_RFSPC1, align 4
  %134 = call i32 @b43_radio_set(%struct.b43_wldev* %132, i32 %133, i32 2)
  br label %142

135:                                              ; preds = %96
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = load i32, i32* @B2055_C1_RX_RFSPC1, align 4
  %138 = call i32 @b43_radio_mask(%struct.b43_wldev* %136, i32 %137, i32 65533)
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %140 = load i32, i32* @B2055_C2_RX_RFSPC1, align 4
  %141 = call i32 @b43_radio_mask(%struct.b43_wldev* %139, i32 %140, i32 65533)
  br label %142

142:                                              ; preds = %135, %128
  %143 = call i32 @udelay(i32 2)
  ret void
}

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43_radio_wait_value(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
