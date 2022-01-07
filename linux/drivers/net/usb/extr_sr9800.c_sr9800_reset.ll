; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr9800_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr9800_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sr_data = type { i32* }

@SR_GPIO_RSE = common dso_local global i32 0, align 4
@SR_GPIO_GPO_2 = common dso_local global i32 0, align 4
@SR_GPIO_GPO2EN = common dso_local global i32 0, align 4
@SR_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Select PHY #1 failed: %d\0A\00", align 1
@SR_SWRESET_IPPD = common dso_local global i32 0, align 4
@SR_SWRESET_PRL = common dso_local global i32 0, align 4
@SR_SWRESET_CLEAR = common dso_local global i32 0, align 4
@SR_SWRESET_IPRL = common dso_local global i32 0, align 4
@SR_SWRESET_PRTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"RX_CTL is 0x%04x after software reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"RX_CTL is 0x%04x setting to 0x0000\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@SR_CMD_WRITE_NODE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @sr9800_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr9800_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sr_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to %struct.sr_data*
  store %struct.sr_data* %10, %struct.sr_data** %4, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = load i32, i32* @SR_GPIO_RSE, align 4
  %13 = load i32, i32* @SR_GPIO_GPO_2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SR_GPIO_GPO2EN, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @sr_write_gpio(%struct.usbnet* %11, i32 %16, i32 5)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %144

21:                                               ; preds = %1
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = call i32 @sr_get_phy_addr(%struct.usbnet* %22)
  %24 = and i32 %23, 31
  %25 = icmp eq i32 %24, 16
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %6, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = load i32, i32* @SR_CMD_SW_PHY_SELECT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sr_write_cmd(%struct.usbnet* %28, i32 %29, i32 %30, i32 0, i32 0, i32* null)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @netdev_dbg(%struct.TYPE_2__* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %144

40:                                               ; preds = %21
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = load i32, i32* @SR_SWRESET_IPPD, align 4
  %43 = load i32, i32* @SR_SWRESET_PRL, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @sr_sw_reset(%struct.usbnet* %41, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %144

49:                                               ; preds = %40
  %50 = call i32 @msleep(i32 150)
  %51 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %52 = load i32, i32* @SR_SWRESET_CLEAR, align 4
  %53 = call i32 @sr_sw_reset(%struct.usbnet* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %144

57:                                               ; preds = %49
  %58 = call i32 @msleep(i32 150)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %63 = load i32, i32* @SR_SWRESET_IPRL, align 4
  %64 = call i32 @sr_sw_reset(%struct.usbnet* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %144

68:                                               ; preds = %61
  br label %77

69:                                               ; preds = %57
  %70 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %71 = load i32, i32* @SR_SWRESET_PRTE, align 4
  %72 = call i32 @sr_sw_reset(%struct.usbnet* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %144

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %68
  %78 = call i32 @msleep(i32 150)
  %79 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %80 = call i32 @sr_read_rx_ctl(%struct.usbnet* %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @netdev_dbg(%struct.TYPE_2__* %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %87 = call i32 @sr_write_rx_ctl(%struct.usbnet* %86, i32 0)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %144

91:                                               ; preds = %77
  %92 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %93 = call i32 @sr_read_rx_ctl(%struct.usbnet* %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %95 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @netdev_dbg(%struct.TYPE_2__* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %100 = load i32, i32* @SR_SWRESET_PRL, align 4
  %101 = call i32 @sr_sw_reset(%struct.usbnet* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %144

105:                                              ; preds = %91
  %106 = call i32 @msleep(i32 150)
  %107 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %108 = load i32, i32* @SR_SWRESET_IPRL, align 4
  %109 = load i32, i32* @SR_SWRESET_PRL, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @sr_sw_reset(%struct.usbnet* %107, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %144

115:                                              ; preds = %105
  %116 = call i32 @msleep(i32 150)
  %117 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %118 = call i32 @sr9800_set_default_mode(%struct.usbnet* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %144

122:                                              ; preds = %115
  %123 = load %struct.sr_data*, %struct.sr_data** %4, align 8
  %124 = getelementptr inbounds %struct.sr_data, %struct.sr_data* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %127 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ETH_ALEN, align 4
  %132 = call i32 @memcpy(i32* %125, i32 %130, i32 %131)
  %133 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %134 = load i32, i32* @SR_CMD_WRITE_NODE_ID, align 4
  %135 = load i32, i32* @ETH_ALEN, align 4
  %136 = load %struct.sr_data*, %struct.sr_data** %4, align 8
  %137 = getelementptr inbounds %struct.sr_data, %struct.sr_data* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @sr_write_cmd(%struct.usbnet* %133, i32 %134, i32 0, i32 0, i32 %135, i32* %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %122
  br label %144

143:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %146

144:                                              ; preds = %142, %121, %114, %104, %90, %75, %67, %56, %48, %34, %20
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %143
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @sr_write_gpio(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @sr_get_phy_addr(%struct.usbnet*) #1

declare dso_local i32 @sr_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @sr_sw_reset(%struct.usbnet*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sr_read_rx_ctl(%struct.usbnet*) #1

declare dso_local i32 @sr_write_rx_ctl(%struct.usbnet*, i32) #1

declare dso_local i32 @sr9800_set_default_mode(%struct.usbnet*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
