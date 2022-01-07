; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_bcm8704_init_user_dev3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_bcm8704_init_user_dev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@BCM8704_USER_DEV3_ADDR = common dso_local global i32 0, align 4
@BCM8704_USER_CONTROL = common dso_local global i32 0, align 4
@USER_CONTROL_OPTXRST_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_OPBIASFLT_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_OBTMPFLT_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_OPPRFLT_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_OPTXFLT_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_OPRXLOS_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_OPRXFLT_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_OPTXON_LVL = common dso_local global i32 0, align 4
@USER_CONTROL_RES1_SHIFT = common dso_local global i32 0, align 4
@BCM8704_USER_PMD_TX_CONTROL = common dso_local global i32 0, align 4
@USER_PMD_TX_CTL_XFP_CLKEN = common dso_local global i32 0, align 4
@USER_PMD_TX_CTL_TX_DAC_TXD_SH = common dso_local global i32 0, align 4
@USER_PMD_TX_CTL_TX_DAC_TXCK_SH = common dso_local global i32 0, align 4
@USER_PMD_TX_CTL_TSCK_LPWREN = common dso_local global i32 0, align 4
@BCM8704_USER_OPT_DIGITAL_CTRL = common dso_local global i32 0, align 4
@USER_ODIG_CTRL_GPIOS = common dso_local global i32 0, align 4
@USER_ODIG_CTRL_GPIOS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @bcm8704_init_user_dev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm8704_init_user_dev3(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %5 = load %struct.niu*, %struct.niu** %3, align 8
  %6 = load %struct.niu*, %struct.niu** %3, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %10 = load i32, i32* @BCM8704_USER_CONTROL, align 4
  %11 = load i32, i32* @USER_CONTROL_OPTXRST_LVL, align 4
  %12 = load i32, i32* @USER_CONTROL_OPBIASFLT_LVL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @USER_CONTROL_OBTMPFLT_LVL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @USER_CONTROL_OPPRFLT_LVL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @USER_CONTROL_OPTXFLT_LVL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USER_CONTROL_OPRXLOS_LVL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @USER_CONTROL_OPRXFLT_LVL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @USER_CONTROL_OPTXON_LVL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @USER_CONTROL_RES1_SHIFT, align 4
  %27 = shl i32 63, %26
  %28 = or i32 %25, %27
  %29 = call i32 @mdio_write(%struct.niu* %5, i32 %8, i32 %9, i32 %10, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %106

34:                                               ; preds = %1
  %35 = load %struct.niu*, %struct.niu** %3, align 8
  %36 = load %struct.niu*, %struct.niu** %3, align 8
  %37 = getelementptr inbounds %struct.niu, %struct.niu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %40 = load i32, i32* @BCM8704_USER_PMD_TX_CONTROL, align 4
  %41 = load i32, i32* @USER_PMD_TX_CTL_XFP_CLKEN, align 4
  %42 = load i32, i32* @USER_PMD_TX_CTL_TX_DAC_TXD_SH, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @USER_PMD_TX_CTL_TX_DAC_TXCK_SH, align 4
  %46 = shl i32 2, %45
  %47 = or i32 %44, %46
  %48 = load i32, i32* @USER_PMD_TX_CTL_TSCK_LPWREN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @mdio_write(%struct.niu* %35, i32 %38, i32 %39, i32 %40, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %106

55:                                               ; preds = %34
  %56 = load %struct.niu*, %struct.niu** %3, align 8
  %57 = load i32, i32* @BCM8704_USER_CONTROL, align 4
  %58 = call i32 @bcm8704_user_dev3_readback(%struct.niu* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %106

63:                                               ; preds = %55
  %64 = load %struct.niu*, %struct.niu** %3, align 8
  %65 = load i32, i32* @BCM8704_USER_PMD_TX_CONTROL, align 4
  %66 = call i32 @bcm8704_user_dev3_readback(%struct.niu* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %106

71:                                               ; preds = %63
  %72 = load %struct.niu*, %struct.niu** %3, align 8
  %73 = load %struct.niu*, %struct.niu** %3, align 8
  %74 = getelementptr inbounds %struct.niu, %struct.niu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %77 = load i32, i32* @BCM8704_USER_OPT_DIGITAL_CTRL, align 4
  %78 = call i32 @mdio_read(%struct.niu* %72, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %106

83:                                               ; preds = %71
  %84 = load i32, i32* @USER_ODIG_CTRL_GPIOS, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @USER_ODIG_CTRL_GPIOS_SHIFT, align 4
  %89 = shl i32 3, %88
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load %struct.niu*, %struct.niu** %3, align 8
  %93 = load %struct.niu*, %struct.niu** %3, align 8
  %94 = getelementptr inbounds %struct.niu, %struct.niu* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BCM8704_USER_DEV3_ADDR, align 4
  %97 = load i32, i32* @BCM8704_USER_OPT_DIGITAL_CTRL, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @mdio_write(%struct.niu* %92, i32 %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %83
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %106

104:                                              ; preds = %83
  %105 = call i32 @mdelay(i32 1000)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %102, %81, %69, %61, %53, %32
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @mdio_write(%struct.niu*, i32, i32, i32, i32) #1

declare dso_local i32 @bcm8704_user_dev3_readback(%struct.niu*, i32) #1

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
