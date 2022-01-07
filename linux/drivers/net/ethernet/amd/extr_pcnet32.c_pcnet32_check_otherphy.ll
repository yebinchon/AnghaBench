; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_check_otherphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_check_otherphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, %struct.mii_if_info }
%struct.mii_if_info = type { i32 }

@PCNET32_MAX_PHYS = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Using PHY number %d\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pcnet32_check_otherphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_check_otherphy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pcnet32_private*, align 8
  %5 = alloca %struct.mii_if_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %8)
  store %struct.pcnet32_private* %9, %struct.pcnet32_private** %4, align 8
  %10 = load %struct.pcnet32_private*, %struct.pcnet32_private** %4, align 8
  %11 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %10, i32 0, i32 1
  %12 = bitcast %struct.mii_if_info* %5 to i8*
  %13 = bitcast %struct.mii_if_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %80, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PCNET32_MAX_PHYS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.pcnet32_private*, %struct.pcnet32_private** %4, align 8
  %21 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %80

26:                                               ; preds = %18
  %27 = load %struct.pcnet32_private*, %struct.pcnet32_private** %4, align 8
  %28 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = call i64 @mii_link_ok(%struct.mii_if_info* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = load %struct.pcnet32_private*, %struct.pcnet32_private** %4, align 8
  %41 = load i32, i32* @link, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @netif_info(%struct.pcnet32_private* %40, i32 %41, %struct.net_device* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load %struct.pcnet32_private*, %struct.pcnet32_private** %4, align 8
  %47 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MII_BMCR, align 4
  %51 = call i32 @mdio_read(%struct.net_device* %45, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load %struct.pcnet32_private*, %struct.pcnet32_private** %4, align 8
  %54 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MII_BMCR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @BMCR_ISOLATE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @mdio_write(%struct.net_device* %52, i32 %56, i32 %57, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MII_BMCR, align 4
  %65 = call i32 @mdio_read(%struct.net_device* %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MII_BMCR, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @BMCR_ISOLATE, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @mdio_write(%struct.net_device* %66, i32 %67, i32 %68, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.pcnet32_private*, %struct.pcnet32_private** %4, align 8
  %76 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  store i32 1, i32* %2, align 4
  br label %84

78:                                               ; preds = %34
  br label %79

79:                                               ; preds = %78, %26
  br label %80

80:                                               ; preds = %79, %25
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %14

83:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %39
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mii_link_ok(%struct.mii_if_info*) #1

declare dso_local i32 @netif_info(%struct.pcnet32_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
