; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf7242_local = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@CMD_RC_RESET = common dso_local global i32 0, align 4
@CMD_RC_IDLE = common dso_local global i32 0, align 4
@FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"request_firmware() failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"upload firmware failed with %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"verify firmware failed with %d\0A\00", align 1
@CMD_RC_PC_RESET = common dso_local global i32 0, align 4
@REG_FFILT_CFG = common dso_local global i32 0, align 4
@ACCEPT_BEACON_FRAMES = common dso_local global i32 0, align 4
@ACCEPT_DATA_FRAMES = common dso_local global i32 0, align 4
@ACCEPT_MACCMD_FRAMES = common dso_local global i32 0, align 4
@ACCEPT_RESERVED_FRAMES = common dso_local global i32 0, align 4
@REG_AUTO_CFG = common dso_local global i32 0, align 4
@RX_AUTO_ACK_EN = common dso_local global i32 0, align 4
@REG_PKT_CFG = common dso_local global i32 0, align 4
@ADDON_EN = common dso_local global i32 0, align 4
@REG_EXTPA_MSC = common dso_local global i32 0, align 4
@REG_RXFE_CFG = common dso_local global i32 0, align 4
@REG_IRQ1_EN0 = common dso_local global i32 0, align 4
@REG_IRQ1_EN1 = common dso_local global i32 0, align 4
@IRQ_RX_PKT_RCVD = common dso_local global i32 0, align 4
@IRQ_CSMA_CA = common dso_local global i32 0, align 4
@REG_IRQ1_SRC0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf7242_local*)* @adf7242_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf7242_hw_init(%struct.adf7242_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf7242_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.firmware*, align 8
  store %struct.adf7242_local* %0, %struct.adf7242_local** %3, align 8
  %6 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %7 = load i32, i32* @CMD_RC_RESET, align 4
  %8 = call i32 @adf7242_cmd(%struct.adf7242_local* %6, i32 %7)
  %9 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %10 = load i32, i32* @CMD_RC_IDLE, align 4
  %11 = call i32 @adf7242_cmd(%struct.adf7242_local* %9, i32 %10)
  %12 = load i32, i32* @FIRMWARE, align 4
  %13 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %14 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @request_firmware(%struct.firmware** %5, i32 %12, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %22 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %121

28:                                               ; preds = %1
  %29 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %30 = load %struct.firmware*, %struct.firmware** %5, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load %struct.firmware*, %struct.firmware** %5, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @adf7242_upload_firmware(%struct.adf7242_local* %29, i32* %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %42 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.firmware*, %struct.firmware** %5, align 8
  %48 = call i32 @release_firmware(%struct.firmware* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %121

50:                                               ; preds = %28
  %51 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %52 = load %struct.firmware*, %struct.firmware** %5, align 8
  %53 = getelementptr inbounds %struct.firmware, %struct.firmware* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.firmware*, %struct.firmware** %5, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @adf7242_verify_firmware(%struct.adf7242_local* %51, i32* %55, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %64 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.firmware*, %struct.firmware** %5, align 8
  %70 = call i32 @release_firmware(%struct.firmware* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %121

72:                                               ; preds = %50
  %73 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %74 = load i32, i32* @CMD_RC_PC_RESET, align 4
  %75 = call i32 @adf7242_cmd(%struct.adf7242_local* %73, i32 %74)
  %76 = load %struct.firmware*, %struct.firmware** %5, align 8
  %77 = call i32 @release_firmware(%struct.firmware* %76)
  %78 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %79 = load i32, i32* @REG_FFILT_CFG, align 4
  %80 = load i32, i32* @ACCEPT_BEACON_FRAMES, align 4
  %81 = load i32, i32* @ACCEPT_DATA_FRAMES, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ACCEPT_MACCMD_FRAMES, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ACCEPT_RESERVED_FRAMES, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @adf7242_write_reg(%struct.adf7242_local* %78, i32 %79, i32 %86)
  %88 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %89 = load i32, i32* @REG_AUTO_CFG, align 4
  %90 = load i32, i32* @RX_AUTO_ACK_EN, align 4
  %91 = call i32 @adf7242_write_reg(%struct.adf7242_local* %88, i32 %89, i32 %90)
  %92 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %93 = load i32, i32* @REG_PKT_CFG, align 4
  %94 = load i32, i32* @ADDON_EN, align 4
  %95 = call i32 @BIT(i32 2)
  %96 = or i32 %94, %95
  %97 = call i32 @adf7242_write_reg(%struct.adf7242_local* %92, i32 %93, i32 %96)
  %98 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %99 = load i32, i32* @REG_EXTPA_MSC, align 4
  %100 = call i32 @adf7242_write_reg(%struct.adf7242_local* %98, i32 %99, i32 241)
  %101 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %102 = load i32, i32* @REG_RXFE_CFG, align 4
  %103 = call i32 @adf7242_write_reg(%struct.adf7242_local* %101, i32 %102, i32 29)
  %104 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %105 = load i32, i32* @REG_IRQ1_EN0, align 4
  %106 = call i32 @adf7242_write_reg(%struct.adf7242_local* %104, i32 %105, i32 0)
  %107 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %108 = load i32, i32* @REG_IRQ1_EN1, align 4
  %109 = load i32, i32* @IRQ_RX_PKT_RCVD, align 4
  %110 = load i32, i32* @IRQ_CSMA_CA, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @adf7242_write_reg(%struct.adf7242_local* %107, i32 %108, i32 %111)
  %113 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %114 = call i32 @adf7242_clear_irqstat(%struct.adf7242_local* %113)
  %115 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %116 = load i32, i32* @REG_IRQ1_SRC0, align 4
  %117 = call i32 @adf7242_write_reg(%struct.adf7242_local* %115, i32 %116, i32 255)
  %118 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %119 = load i32, i32* @CMD_RC_IDLE, align 4
  %120 = call i32 @adf7242_cmd(%struct.adf7242_local* %118, i32 %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %72, %62, %40, %20
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @adf7242_cmd(%struct.adf7242_local*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @adf7242_upload_firmware(%struct.adf7242_local*, i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @adf7242_verify_firmware(%struct.adf7242_local*, i32*, i32) #1

declare dso_local i32 @adf7242_write_reg(%struct.adf7242_local*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adf7242_clear_irqstat(%struct.adf7242_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
