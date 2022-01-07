; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_prepare_structs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_prepare_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_9__* }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, %struct.TYPE_8__*, %struct.ssb_sprom* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ssb_sprom = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@B43_SPUR_AVOID_AUTO = common dso_local global i32 0, align 4
@B43_SPUR_AVOID_DISABLE = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@B43_BFL2_TXPWRCTRL_EN = common dso_local global i32 0, align 4
@B43_BFL2_5G_PWRGAIN = common dso_local global i32 0, align 4
@B43_BUS_SSB = common dso_local global i64 0, align 8
@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_op_prepare_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_op_prepare_structs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %3, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 1
  %10 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  store %struct.b43_phy_n* %10, %struct.b43_phy_n** %4, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load %struct.ssb_sprom*, %struct.ssb_sprom** %14, align 8
  store %struct.ssb_sprom* %15, %struct.ssb_sprom** %5, align 8
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %17 = call i32 @memset(%struct.b43_phy_n* %16, i32 0, i32 56)
  %18 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %24 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 4
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ true, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %31 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %33 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @B43_SPUR_AVOID_AUTO, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @B43_SPUR_AVOID_DISABLE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %43 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %45 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %47 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %46, i32 0, i32 2
  store i32 2, i32* %47, align 8
  %48 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %49 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %48, i32 0, i32 3
  store i32 3, i32* %49, align 4
  %50 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %51 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %50, i32 0, i32 4
  store i32 2, i32* %51, align 8
  %52 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %53 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 128, i32* %55, align 4
  %56 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %57 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 128, i32* %59, align 4
  %60 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %61 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %60, i32 0, i32 6
  store i32 0, i32* %61, align 8
  %62 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %63 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %62, i32 0, i32 7
  store i32 0, i32* %63, align 4
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 3
  br i1 %68, label %91, label %69

69:                                               ; preds = %40
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %69
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 11
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 12
  br i1 %90, label %91, label %96

91:                                               ; preds = %84, %77, %40
  %92 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %93 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %92, i32 0, i32 6
  store i32 1, i32* %93, align 8
  %94 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %95 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %94, i32 0, i32 7
  store i32 1, i32* %95, align 4
  br label %130

96:                                               ; preds = %84, %69
  %97 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %98 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 4
  br i1 %100, label %101, label %129

101:                                              ; preds = %96
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %105, 2
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %109 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @B43_BFL2_TXPWRCTRL_EN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %116 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %115, i32 0, i32 6
  store i32 1, i32* %116, align 8
  br label %128

117:                                              ; preds = %107, %101
  %118 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %119 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @B43_BFL2_5G_PWRGAIN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %126 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %125, i32 0, i32 7
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %117
  br label %128

128:                                              ; preds = %127, %114
  br label %129

129:                                              ; preds = %128, %96
  br label %130

130:                                              ; preds = %129, %91
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %132 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sge i32 %134, 3
  br i1 %135, label %136, label %155

136:                                              ; preds = %130
  %137 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %138 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i32
  %144 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %145 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %147 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i32
  %153 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %154 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %153, i32 0, i32 9
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %136, %130
  ret void
}

declare dso_local i32 @memset(%struct.b43_phy_n*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
