; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_write_raw_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_write_raw_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i64 }

@HW_CFG = common dso_local global i32 0, align 4
@ID_REV_CHIP_ID_7800_ = common dso_local global i64 0, align 8
@HW_CFG_LED1_EN_ = common dso_local global i32 0, align 4
@HW_CFG_LED0_EN_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_CMD_EWEN_ = common dso_local global i32 0, align 4
@E2P_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@E2P_CMD_EPC_CMD_WRITE_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_ADDR_MASK_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32, i32, i32*)* @lan78xx_write_raw_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_write_raw_eeprom(%struct.lan78xx_net* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %15 = load i32, i32* @HW_CFG, align 4
  %16 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %14, i32 %15, i32* %9)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %19 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ID_REV_CHIP_ID_7800_, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i32, i32* @HW_CFG_LED1_EN_, align 4
  %25 = load i32, i32* @HW_CFG_LED0_EN_, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %31 = load i32, i32* @HW_CFG, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %30, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %23, %4
  %35 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %36 = call i32 @lan78xx_eeprom_confirm_not_busy(%struct.lan78xx_net* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %113

40:                                               ; preds = %34
  %41 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %42 = load i32, i32* @E2P_CMD_EPC_CMD_EWEN_, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %45 = load i32, i32* @E2P_CMD, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %44, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %113

56:                                               ; preds = %40
  %57 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %58 = call i32 @lan78xx_wait_eeprom(%struct.lan78xx_net* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %113

62:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %109, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %74 = load i32, i32* @E2P_DATA, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %73, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %113

82:                                               ; preds = %67
  %83 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %84 = load i32, i32* @E2P_CMD_EPC_CMD_WRITE_, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @E2P_CMD_EPC_ADDR_MASK_, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %92 = load i32, i32* @E2P_CMD, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %91, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %82
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %13, align 4
  br label %113

100:                                              ; preds = %82
  %101 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %102 = call i32 @lan78xx_wait_eeprom(%struct.lan78xx_net* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %113

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %63

112:                                              ; preds = %63
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %105, %97, %79, %61, %53, %39
  %114 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %115 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ID_REV_CHIP_ID_7800_, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %121 = load i32, i32* @HW_CFG, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %120, i32 %121, i32 %122)
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %119, %113
  %125 = load i32, i32* %13, align 4
  ret i32 %125
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
