; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_setup_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_setup_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ftgmac100 = type { %struct.TYPE_7__*, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i8*, i32*, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@PHY_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"aspeed,ast2400-mac\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"aspeed,ast2500-mac\00", align 1
@FTGMAC100_OFFSET_REVR = common dso_local global i64 0, align 8
@FTGMAC100_REVR_NEW_MDIO_INTERFACE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unsupported PHY mode %s !\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ftgmac100_mdio\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@ftgmac100_mdiobus_read = common dso_local global i32 0, align 4
@ftgmac100_mdiobus_write = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Cannot register MDIO bus!\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"MII Probe failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ftgmac100_setup_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_setup_mdio(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ftgmac100*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %11)
  store %struct.ftgmac100* %12, %struct.ftgmac100** %4, align 8
  %13 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %14 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.platform_device* @to_platform_device(i32 %15)
  store %struct.platform_device* %16, %struct.platform_device** %5, align 8
  %17 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  store i32 0, i32* %9, align 4
  %22 = call %struct.TYPE_7__* (...) @mdiobus_alloc()
  %23 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %24 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %23, i32 0, i32 0
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %24, align 8
  %25 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %26 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %193

32:                                               ; preds = %1
  %33 = load %struct.device_node*, %struct.device_node** %7, align 8
  %34 = call i64 @of_device_is_compatible(%struct.device_node* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = call i64 @of_device_is_compatible(%struct.device_node* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %36, %32
  %41 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %42 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FTGMAC100_OFFSET_REVR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ioread32(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @FTGMAC100_REVR_NEW_MDIO_INTERFACE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %53 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FTGMAC100_OFFSET_REVR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %40, %36
  %59 = load %struct.device_node*, %struct.device_node** %7, align 8
  %60 = icmp ne %struct.device_node* %59, null
  br i1 %60, label %61, label %99

61:                                               ; preds = %58
  %62 = load %struct.device_node*, %struct.device_node** %7, align 8
  %63 = call i32 @of_get_phy_mode(%struct.device_node* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %70 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @PHY_INTERFACE_MODE_RMII, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_RXID, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_TXID, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @phy_modes(i32 %95)
  %97 = call i32 @netdev_warn(%struct.net_device* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %89, %85, %81, %77, %73, %68
  br label %99

99:                                               ; preds = %98, %58
  %100 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %101 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %103, align 8
  %104 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %105 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @snprintf(i32 %108, i32 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %112, i32 %115)
  %117 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %118 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %121 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  store i32 %119, i32* %123, align 4
  %124 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %125 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %128 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  store i32 %126, i32* %130, align 8
  %131 = load i32, i32* @ftgmac100_mdiobus_read, align 4
  %132 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %133 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* @ftgmac100_mdiobus_write, align 4
  %137 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %138 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i32 %136, i32* %140, align 8
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %155, %99
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @PHY_MAX_ADDR, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load i32, i32* @PHY_POLL, align 4
  %147 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %148 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %146, i32* %154, align 4
  br label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %141

158:                                              ; preds = %141
  %159 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %160 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = call i32 @mdiobus_register(%struct.TYPE_7__* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %167 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @dev_err(i32 %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %187

170:                                              ; preds = %158
  %171 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @ftgmac100_mii_probe(%struct.ftgmac100* %171, i32 %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %178 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dev_err(i32 %179, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %182

181:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %193

182:                                              ; preds = %176
  %183 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %184 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %183, i32 0, i32 0
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = call i32 @mdiobus_unregister(%struct.TYPE_7__* %185)
  br label %187

187:                                              ; preds = %182, %165
  %188 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %189 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %188, i32 0, i32 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = call i32 @mdiobus_free(%struct.TYPE_7__* %190)
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %187, %181, %29
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.TYPE_7__* @mdiobus_alloc(...) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ftgmac100_mii_probe(%struct.ftgmac100*, i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
