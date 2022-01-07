; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_raw_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_raw_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i64 }

@HW_CFG = common dso_local global i32 0, align 4
@ID_REV_CHIP_ID_7800_ = common dso_local global i64 0, align 8
@HW_CFG_LED1_EN_ = common dso_local global i32 0, align 4
@HW_CFG_LED0_EN_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_CMD_READ_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_ADDR_MASK_ = common dso_local global i32 0, align 4
@E2P_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32, i32, i32*)* @lan78xx_read_raw_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_read_raw_eeprom(%struct.lan78xx_net* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %16 = load i32, i32* @HW_CFG, align 4
  %17 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %15, i32 %16, i32* %10)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %20 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ID_REV_CHIP_ID_7800_, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i32, i32* @HW_CFG_LED1_EN_, align 4
  %26 = load i32, i32* @HW_CFG_LED0_EN_, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %32 = load i32, i32* @HW_CFG, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %31, i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %24, %4
  %36 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %37 = call i32 @lan78xx_eeprom_confirm_not_busy(%struct.lan78xx_net* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %5, align 4
  br label %112

42:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %95, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %98

47:                                               ; preds = %43
  %48 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %49 = load i32, i32* @E2P_CMD_EPC_CMD_READ_, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @E2P_CMD_EPC_ADDR_MASK_, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %57 = load i32, i32* @E2P_CMD, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %99

68:                                               ; preds = %47
  %69 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %70 = call i32 @lan78xx_wait_eeprom(%struct.lan78xx_net* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %99

74:                                               ; preds = %68
  %75 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %76 = load i32, i32* @E2P_DATA, align 4
  %77 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %75, i32 %76, i32* %10)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %99

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 255
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %43

98:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %98, %83, %73, %65
  %100 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %101 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ID_REV_CHIP_ID_7800_, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %107 = load i32, i32* @HW_CFG, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %106, i32 %107, i32 %108)
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %105, %99
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %40
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @lan78xx_eeprom_confirm_not_busy(%struct.lan78xx_net*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lan78xx_wait_eeprom(%struct.lan78xx_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
