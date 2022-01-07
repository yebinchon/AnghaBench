; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_update_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_update_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"MII #%d reports no link. Disabling watchdog\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"MII #%d link is back. Enabling watchdog\0A\00", align 1
@MII_DAVICOM_DM9101 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Setting %dMBit-%s-duplex based on MII#%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @update_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_link(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %10)
  store %struct.netdev_private* %11, %struct.netdev_private** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %14 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MII_BMSR, align 4
  %19 = call i32 @mdio_read(%struct.net_device* %12, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 65535
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %24 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %2, align 4
  br label %181

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MII_BMSR, align 4
  %34 = call i32 @mdio_read(%struct.net_device* %27, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %26
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i64 @netif_carrier_ok(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i64, i64* @debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %49 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %45, %42
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_carrier_off(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %54, %38
  %58 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %59 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %2, align 4
  br label %181

61:                                               ; preds = %26
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i64 @netif_carrier_ok(%struct.net_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* @debug, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %72 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %68, %65
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @netif_carrier_on(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %77, %61
  %81 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %82 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, -16
  %85 = load i32, i32* @MII_DAVICOM_DM9101, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %90 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MII_BMCR, align 4
  %95 = call i32 @mdio_read(%struct.net_device* %88, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @BMCR_FULLDPLX, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @BMCR_SPEED100, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %6, align 4
  br label %131

102:                                              ; preds = %80
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %105 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MII_LPA, align 4
  %110 = call i32 @mdio_read(%struct.net_device* %103, i32 %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %113 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %111, %115
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @LPA_100FULL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, 704
  %124 = load i32, i32* @LPA_10FULL, align 4
  %125 = icmp eq i32 %123, %124
  br label %126

126:                                              ; preds = %121, %102
  %127 = phi i1 [ true, %102 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 896
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %126, %87
  %132 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %133 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %139 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, -536871425
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %131
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, 512
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %144, %131
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, 536870912
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %156 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %154, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %153
  %160 = load i64, i64* @debug, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %159
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 100, i32 10
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %173 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %174 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %164, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %168, i8* %172, i32 %177)
  br label %179

179:                                              ; preds = %162, %159, %153
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %57, %22
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
