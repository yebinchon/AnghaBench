; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_link_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_link_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.phy_device* }
%struct.phy_device = type { i32, i64, i32 }

@AR7100 = common dso_local global i32 0, align 4
@AR9130 = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG2 = common dso_local global i32 0, align 4
@MAC_CFG2_IF_1000 = common dso_local global i32 0, align 4
@MAC_CFG2_IF_10_100 = common dso_local global i32 0, align 4
@MAC_CFG2_FDX = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_IFCTL = common dso_local global i32 0, align 4
@MAC_IFCTL_SPEED = common dso_local global i32 0, align 4
@AG71XX_REG_FIFO_CFG5 = common dso_local global i32 0, align 4
@FIFO_CFG5_BM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"not supported speed %i\0A\00", align 1
@AG71XX_REG_FIFO_CFG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*, i32)* @ag71xx_link_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_link_adjust(%struct.ag71xx* %0, i32 %1) #0 {
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %10 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %5, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %23 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %22)
  br label %154

24:                                               ; preds = %18, %2
  %25 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %26 = load i32, i32* @AR7100, align 4
  %27 = call i32 @ag71xx_is(%struct.ag71xx* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %31 = load i32, i32* @AR9130, align 4
  %32 = call i32 @ag71xx_is(%struct.ag71xx* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %36 = call i32 @ag71xx_fast_reset(%struct.ag71xx* %35)
  br label %37

37:                                               ; preds = %34, %29, %24
  %38 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %39 = load i32, i32* @AG71XX_REG_MAC_CFG2, align 4
  %40 = call i32 @ag71xx_rr(%struct.ag71xx* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @MAC_CFG2_IF_1000, align 4
  %42 = load i32, i32* @MAC_CFG2_IF_10_100, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MAC_CFG2_FDX, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* @MAC_CFG2_FDX, align 4
  br label %56

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %61 = load i32, i32* @AG71XX_REG_MAC_IFCTL, align 4
  %62 = call i32 @ag71xx_rr(%struct.ag71xx* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @MAC_IFCTL_SPEED, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %68 = load i32, i32* @AG71XX_REG_FIFO_CFG5, align 4
  %69 = call i32 @ag71xx_rr(%struct.ag71xx* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @FIFO_CFG5_BM, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %95 [
    i32 128, label %77
    i32 129, label %84
    i32 130, label %91
  ]

77:                                               ; preds = %56
  %78 = load i32, i32* @MAC_CFG2_IF_1000, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @FIFO_CFG5_BM, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %100

84:                                               ; preds = %56
  %85 = load i32, i32* @MAC_CFG2_IF_10_100, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @MAC_IFCTL_SPEED, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %100

91:                                               ; preds = %56
  %92 = load i32, i32* @MAC_CFG2_IF_10_100, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %100

95:                                               ; preds = %56
  %96 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %154

100:                                              ; preds = %91, %84, %77
  %101 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %102 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %100
  %107 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %108 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 65535
  store i32 %112, i32* %110, align 4
  %113 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %114 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 2048, %116
  %118 = sdiv i32 %117, 4
  %119 = shl i32 %118, 16
  %120 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %121 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %119
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %106, %100
  %127 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %128 = load i32, i32* @AG71XX_REG_FIFO_CFG3, align 4
  %129 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %130 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ag71xx_wr(%struct.ag71xx* %127, i32 %128, i32 %133)
  %135 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %136 = load i32, i32* @AG71XX_REG_MAC_CFG2, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @ag71xx_wr(%struct.ag71xx* %135, i32 %136, i32 %137)
  %139 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %140 = load i32, i32* @AG71XX_REG_FIFO_CFG5, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @ag71xx_wr(%struct.ag71xx* %139, i32 %140, i32 %141)
  %143 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %144 = load i32, i32* @AG71XX_REG_MAC_IFCTL, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @ag71xx_wr(%struct.ag71xx* %143, i32 %144, i32 %145)
  %147 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %148 = call i32 @ag71xx_hw_start(%struct.ag71xx* %147)
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %126
  %152 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %153 = call i32 @phy_print_status(%struct.phy_device* %152)
  br label %154

154:                                              ; preds = %21, %95, %151, %126
  ret void
}

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_is(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_fast_reset(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_hw_start(%struct.ag71xx*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
