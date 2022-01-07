; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i8*, %struct.TYPE_2__*, %struct.fec_enet_private*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fec_enet_private = type { i32, i64, i32, %struct.mii_bus*, i64, i32 }
%struct.platform_device = type { i8*, %struct.TYPE_2__ }
%struct.net_device = type { i32 }
%struct.device_node = type { i32 }

@fec_enet_mii_init.fec0_mii_bus = internal global %struct.mii_bus* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@FEC_QUIRK_SINGLE_MDIO = common dso_local global i32 0, align 4
@mii_cnt = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@FEC_QUIRK_ENET_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"fec clock (%lu) too fast to get right mii speed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FEC_MII_SPEED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"fec_enet_mii_bus\00", align 1
@fec_enet_mdio_read = common dso_local global i32 0, align 4
@fec_enet_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fec_enet_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_mii_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %12)
  store %struct.fec_enet_private* %13, %struct.fec_enet_private** %5, align 8
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %17 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FEC_QUIRK_SINGLE_MDIO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %24 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i64, i64* @mii_cnt, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.mii_bus*, %struct.mii_bus** @fec_enet_mii_init.fec0_mii_bus, align 8
  %32 = icmp ne %struct.mii_bus* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.mii_bus*, %struct.mii_bus** @fec_enet_mii_init.fec0_mii_bus, align 8
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 3
  store %struct.mii_bus* %34, %struct.mii_bus** %36, align 8
  %37 = load i64, i64* @mii_cnt, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @mii_cnt, align 8
  store i32 0, i32* %2, align 4
  br label %179

39:                                               ; preds = %30, %27
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %179

42:                                               ; preds = %22, %1
  %43 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %44 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @clk_get_rate(i32 %45)
  %47 = call i32 @DIV_ROUND_UP(i32 %46, i32 5000000)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %49 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FEC_QUIRK_ENET_MAC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %42
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 63
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %64 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_get_rate(i32 %65)
  %67 = call i32 @dev_err(%struct.TYPE_2__* %62, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %177

70:                                               ; preds = %57
  %71 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %72 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_get_rate(i32 %73)
  %75 = call i32 @DIV_ROUND_UP(i32 %74, i32 100000000)
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %77, 1
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %78, %80
  %82 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %83 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %85 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %88 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FEC_MII_SPEED, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = call %struct.mii_bus* (...) @mdiobus_alloc()
  %94 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %95 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %94, i32 0, i32 3
  store %struct.mii_bus* %93, %struct.mii_bus** %95, align 8
  %96 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %97 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %96, i32 0, i32 3
  %98 = load %struct.mii_bus*, %struct.mii_bus** %97, align 8
  %99 = icmp eq %struct.mii_bus* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %70
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %7, align 4
  br label %177

103:                                              ; preds = %70
  %104 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %105 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %104, i32 0, i32 3
  %106 = load %struct.mii_bus*, %struct.mii_bus** %105, align 8
  %107 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %106, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %107, align 8
  %108 = load i32, i32* @fec_enet_mdio_read, align 4
  %109 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %110 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %109, i32 0, i32 3
  %111 = load %struct.mii_bus*, %struct.mii_bus** %110, align 8
  %112 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %111, i32 0, i32 5
  store i32 %108, i32* %112, align 8
  %113 = load i32, i32* @fec_enet_mdio_write, align 4
  %114 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %115 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %114, i32 0, i32 3
  %116 = load %struct.mii_bus*, %struct.mii_bus** %115, align 8
  %117 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %116, i32 0, i32 4
  store i32 %113, i32* %117, align 4
  %118 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %119 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %118, i32 0, i32 3
  %120 = load %struct.mii_bus*, %struct.mii_bus** %119, align 8
  %121 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %128 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  %131 = call i32 @snprintf(i32 %122, i32 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %126, i64 %130)
  %132 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %133 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %134 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %133, i32 0, i32 3
  %135 = load %struct.mii_bus*, %struct.mii_bus** %134, align 8
  %136 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %135, i32 0, i32 2
  store %struct.fec_enet_private* %132, %struct.fec_enet_private** %136, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 1
  %139 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %140 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %139, i32 0, i32 3
  %141 = load %struct.mii_bus*, %struct.mii_bus** %140, align 8
  %142 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %141, i32 0, i32 1
  store %struct.TYPE_2__* %138, %struct.TYPE_2__** %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.device_node* @of_get_child_by_name(i32 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device_node* %147, %struct.device_node** %6, align 8
  %148 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %149 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %148, i32 0, i32 3
  %150 = load %struct.mii_bus*, %struct.mii_bus** %149, align 8
  %151 = load %struct.device_node*, %struct.device_node** %6, align 8
  %152 = call i32 @of_mdiobus_register(%struct.mii_bus* %150, %struct.device_node* %151)
  store i32 %152, i32* %7, align 4
  %153 = load %struct.device_node*, %struct.device_node** %6, align 8
  %154 = call i32 @of_node_put(%struct.device_node* %153)
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %103
  br label %172

158:                                              ; preds = %103
  %159 = load i64, i64* @mii_cnt, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* @mii_cnt, align 8
  %161 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %162 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @FEC_QUIRK_SINGLE_MDIO, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %158
  %168 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %169 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %168, i32 0, i32 3
  %170 = load %struct.mii_bus*, %struct.mii_bus** %169, align 8
  store %struct.mii_bus* %170, %struct.mii_bus** @fec_enet_mii_init.fec0_mii_bus, align 8
  br label %171

171:                                              ; preds = %167, %158
  store i32 0, i32* %2, align 4
  br label %179

172:                                              ; preds = %157
  %173 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %174 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %173, i32 0, i32 3
  %175 = load %struct.mii_bus*, %struct.mii_bus** %174, align 8
  %176 = call i32 @mdiobus_free(%struct.mii_bus* %175)
  br label %177

177:                                              ; preds = %172, %100, %60
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %171, %39, %33
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.mii_bus* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i64) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
