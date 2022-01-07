; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.cpmac_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.plat_cpmac_data = type { i32 }

@CPMAC_MBP = common dso_local global i32 0, align 4
@MBP_RXSHORT = common dso_local global i32 0, align 4
@MBP_RXBCAST = common dso_local global i32 0, align 4
@MBP_RXMCAST = common dso_local global i32 0, align 4
@CPMAC_BUFFER_OFFSET = common dso_local global i32 0, align 4
@CPMAC_MAC_ADDR_MID = common dso_local global i32 0, align 4
@CPMAC_MAC_ADDR_HI = common dso_local global i32 0, align 4
@CPMAC_MAX_LENGTH = common dso_local global i32 0, align 4
@CPMAC_SKB_SIZE = common dso_local global i32 0, align 4
@CPMAC_UNICAST_CLEAR = common dso_local global i32 0, align 4
@CPMAC_RX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_TX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_MAC_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_UNICAST_ENABLE = common dso_local global i32 0, align 4
@CPMAC_RX_INT_ENABLE = common dso_local global i32 0, align 4
@CPMAC_TX_INT_ENABLE = common dso_local global i32 0, align 4
@CPMAC_MAC_INT_ENABLE = common dso_local global i32 0, align 4
@CPMAC_RX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_TX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_MAC_CONTROL = common dso_local global i32 0, align 4
@MAC_MII = common dso_local global i32 0, align 4
@MAC_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_hw_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpmac_priv*, align 8
  %5 = alloca %struct.plat_cpmac_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpmac_priv* %7, %struct.cpmac_priv** %4, align 8
  %8 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %9 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call %struct.plat_cpmac_data* @dev_get_platdata(i32* %11)
  store %struct.plat_cpmac_data* %12, %struct.plat_cpmac_data** %5, align 8
  %13 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %5, align 8
  %14 = getelementptr inbounds %struct.plat_cpmac_data, %struct.plat_cpmac_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ar7_device_reset(i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %33, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %22 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @CPMAC_TX_PTR(i32 %24)
  %26 = call i32 @cpmac_write(i32 %23, i32 %25, i32 0)
  %27 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %28 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CPMAC_RX_PTR(i32 %30)
  %32 = call i32 @cpmac_write(i32 %29, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %38 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CPMAC_RX_PTR(i32 0)
  %41 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %42 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpmac_write(i32 %39, i32 %40, i32 %45)
  %47 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %48 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CPMAC_MBP, align 4
  %51 = load i32, i32* @MBP_RXSHORT, align 4
  %52 = load i32, i32* @MBP_RXBCAST, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MBP_RXMCAST, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @cpmac_write(i32 %49, i32 %50, i32 %55)
  %57 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %58 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CPMAC_BUFFER_OFFSET, align 4
  %61 = call i32 @cpmac_write(i32 %59, i32 %60, i32 0)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %77, %36
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %67 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @CPMAC_MAC_ADDR_LO(i32 %69)
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cpmac_write(i32 %68, i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %82 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CPMAC_MAC_ADDR_MID, align 4
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cpmac_write(i32 %83, i32 %84, i32 %89)
  %91 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %92 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @CPMAC_MAC_ADDR_HI, align 4
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %99, %105
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 16
  %113 = or i32 %106, %112
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 24
  %120 = or i32 %113, %119
  %121 = call i32 @cpmac_write(i32 %93, i32 %94, i32 %120)
  %122 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %123 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CPMAC_MAX_LENGTH, align 4
  %126 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %127 = call i32 @cpmac_write(i32 %124, i32 %125, i32 %126)
  %128 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %129 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CPMAC_UNICAST_CLEAR, align 4
  %132 = call i32 @cpmac_write(i32 %130, i32 %131, i32 255)
  %133 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %134 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CPMAC_RX_INT_CLEAR, align 4
  %137 = call i32 @cpmac_write(i32 %135, i32 %136, i32 255)
  %138 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %139 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CPMAC_TX_INT_CLEAR, align 4
  %142 = call i32 @cpmac_write(i32 %140, i32 %141, i32 255)
  %143 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %144 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CPMAC_MAC_INT_CLEAR, align 4
  %147 = call i32 @cpmac_write(i32 %145, i32 %146, i32 255)
  %148 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %149 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @CPMAC_UNICAST_ENABLE, align 4
  %152 = call i32 @cpmac_write(i32 %150, i32 %151, i32 1)
  %153 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %154 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @CPMAC_RX_INT_ENABLE, align 4
  %157 = call i32 @cpmac_write(i32 %155, i32 %156, i32 1)
  %158 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %159 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CPMAC_TX_INT_ENABLE, align 4
  %162 = call i32 @cpmac_write(i32 %160, i32 %161, i32 255)
  %163 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %164 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CPMAC_MAC_INT_ENABLE, align 4
  %167 = call i32 @cpmac_write(i32 %165, i32 %166, i32 3)
  %168 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %169 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %172 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %173 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %176 = call i32 @cpmac_read(i32 %174, i32 %175)
  %177 = or i32 %176, 1
  %178 = call i32 @cpmac_write(i32 %170, i32 %171, i32 %177)
  %179 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %180 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %183 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %184 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %187 = call i32 @cpmac_read(i32 %185, i32 %186)
  %188 = or i32 %187, 1
  %189 = call i32 @cpmac_write(i32 %181, i32 %182, i32 %188)
  %190 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %191 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %194 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %195 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %198 = call i32 @cpmac_read(i32 %196, i32 %197)
  %199 = load i32, i32* @MAC_MII, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @MAC_FDX, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @cpmac_write(i32 %192, i32 %193, i32 %202)
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.plat_cpmac_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @ar7_device_reset(i32) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @CPMAC_TX_PTR(i32) #1

declare dso_local i32 @CPMAC_RX_PTR(i32) #1

declare dso_local i32 @CPMAC_MAC_ADDR_LO(i32) #1

declare dso_local i32 @cpmac_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
