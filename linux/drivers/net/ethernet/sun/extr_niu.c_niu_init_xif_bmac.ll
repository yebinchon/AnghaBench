; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_xif_bmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_xif_bmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i64, i64 }

@BMAC_XIF_CONFIG_TX_OUTPUT_EN = common dso_local global i32 0, align 4
@LOOPBACK_MAC = common dso_local global i64 0, align 8
@BMAC_XIF_CONFIG_MII_LOOPBACK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@BMAC_XIF_CONFIG_GMII_MODE = common dso_local global i32 0, align 4
@BMAC_XIF_CONFIG_LINK_LED = common dso_local global i32 0, align 4
@BMAC_XIF_CONFIG_LED_POLARITY = common dso_local global i32 0, align 4
@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@NIU_FLAGS_FIBER = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@BMAC_XIF_CONFIG_25MHZ_CLOCK = common dso_local global i32 0, align 4
@BMAC_XIF_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_xif_bmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_xif_bmac(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_link_config*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %5 = load %struct.niu*, %struct.niu** %2, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 1
  store %struct.niu_link_config* %6, %struct.niu_link_config** %3, align 8
  %7 = load i32, i32* @BMAC_XIF_CONFIG_TX_OUTPUT_EN, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %9 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LOOPBACK_MAC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @BMAC_XIF_CONFIG_MII_LOOPBACK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @BMAC_XIF_CONFIG_MII_LOOPBACK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %24 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPEED_1000, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @BMAC_XIF_CONFIG_GMII_MODE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %22
  %33 = load i32, i32* @BMAC_XIF_CONFIG_GMII_MODE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* @BMAC_XIF_CONFIG_LINK_LED, align 4
  %39 = load i32, i32* @BMAC_XIF_CONFIG_LED_POLARITY, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.niu*, %struct.niu** %2, align 8
  %45 = getelementptr inbounds %struct.niu, %struct.niu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NIU_FLAGS_10G, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %37
  %51 = load %struct.niu*, %struct.niu** %2, align 8
  %52 = getelementptr inbounds %struct.niu, %struct.niu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %59 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPEED_100, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @BMAC_XIF_CONFIG_25MHZ_CLOCK, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %57, %50, %37
  %68 = load i32, i32* @BMAC_XIF_CONFIG_25MHZ_CLOCK, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* @BMAC_XIF_CONFIG, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @nw64_mac(i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @nw64_mac(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
