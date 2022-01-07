; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bcma_drv_cc, %struct.bcma_chipinfo }
%struct.bcma_drv_cc = type { i32 }
%struct.bcma_chipinfo = type { i64, i32 }

@BCMA_CHIP_ID_BCM5356 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM5357 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM4749 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM53572 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bcma_mdio_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_mdio_phy_init(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca %struct.bcma_chipinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_drv_cc*, align 8
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  %6 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %7 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store %struct.bcma_chipinfo* %12, %struct.bcma_chipinfo** %3, align 8
  %13 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %3, align 8
  %14 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BCMA_CHIP_ID_BCM5356, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %23, i32 %24, i32 31, i32 139)
  %26 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %26, i32 %27, i32 21, i32 256)
  %29 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %29, i32 %30, i32 31, i32 15)
  %32 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %32, i32 %33, i32 18, i32 10922)
  %35 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %35, i32 %36, i32 31, i32 11)
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %19

41:                                               ; preds = %19
  br label %147

42:                                               ; preds = %1
  %43 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %3, align 8
  %44 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BCMA_CHIP_ID_BCM5357, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %3, align 8
  %50 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %75, label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %3, align 8
  %55 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BCMA_CHIP_ID_BCM4749, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %3, align 8
  %61 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 10
  br i1 %63, label %75, label %64

64:                                               ; preds = %59, %53
  %65 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %3, align 8
  %66 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BCMA_CHIP_ID_BCM53572, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %128

70:                                               ; preds = %64
  %71 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %3, align 8
  %72 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 9
  br i1 %74, label %75, label %128

75:                                               ; preds = %70, %59, %48
  %76 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %77 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store %struct.bcma_drv_cc* %82, %struct.bcma_drv_cc** %5, align 8
  %83 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %84 = call i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc* %83, i32 2, i32 1073741823, i32 0)
  %85 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %5, align 8
  %86 = call i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc* %85, i32 4, i32 2147483647, i32 0)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %124, %75
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %90, label %127

90:                                               ; preds = %87
  %91 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %91, i32 %92, i32 31, i32 15)
  %94 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %94, i32 %95, i32 22, i32 21124)
  %97 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %97, i32 %98, i32 31, i32 11)
  %100 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %100, i32 %101, i32 23, i32 16)
  %103 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %103, i32 %104, i32 31, i32 15)
  %106 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %106, i32 %107, i32 22, i32 21142)
  %109 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %109, i32 %110, i32 23, i32 4211)
  %112 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %112, i32 %113, i32 23, i32 36979)
  %115 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %115, i32 %116, i32 22, i32 21174)
  %118 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %118, i32 %119, i32 23, i32 37491)
  %121 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @bcma_mdio_phy_write(%struct.bgmac* %121, i32 %122, i32 31, i32 11)
  br label %124

124:                                              ; preds = %90
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %87

127:                                              ; preds = %87
  br label %147

128:                                              ; preds = %70, %64
  %129 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %130 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = icmp ne %struct.TYPE_8__* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %128
  %134 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %135 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %133
  %141 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %142 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @phy_init_hw(i64 %145)
  br label %147

147:                                              ; preds = %41, %127, %140, %133, %128
  ret void
}

declare dso_local i32 @bcma_mdio_phy_write(%struct.bgmac*, i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_chipctl_maskset(%struct.bcma_drv_cc*, i32, i32, i32) #1

declare dso_local i32 @phy_init_hw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
