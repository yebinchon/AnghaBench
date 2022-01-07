; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.asix_data = type { i32* }

@AX_GPIO_RSE = common dso_local global i32 0, align 4
@AX_GPIO_GPO_2 = common dso_local global i32 0, align 4
@AX_GPIO_GPO2EN = common dso_local global i32 0, align 4
@AX_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Select PHY #1 failed: %d\0A\00", align 1
@AX_SWRESET_IPPD = common dso_local global i32 0, align 4
@AX_SWRESET_CLEAR = common dso_local global i32 0, align 4
@AX_SWRESET_IPRL = common dso_local global i32 0, align 4
@AX_SWRESET_PRL = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@AX88772_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@AX_CMD_WRITE_IPG0 = common dso_local global i32 0, align 4
@AX88772_IPG0_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG1_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG2_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", align 1
@AX_CMD_WRITE_NODE_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"RX_CTL is 0x%04x after all initializations\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Medium Status is 0x%04x after all initializations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @ax88772_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88772_hw_reset(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asix_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 2
  %12 = bitcast i32* %11 to %struct.asix_data*
  store %struct.asix_data* %12, %struct.asix_data** %6, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %14 = load i32, i32* @AX_GPIO_RSE, align 4
  %15 = load i32, i32* @AX_GPIO_GPO_2, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AX_GPIO_GPO2EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @asix_write_gpio(%struct.usbnet* %13, i32 %18, i32 5, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %186

24:                                               ; preds = %2
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 31
  %30 = icmp eq i32 %29, 16
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %8, align 4
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = load i32, i32* @AX_CMD_SW_PHY_SELECT, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @asix_write_cmd(%struct.usbnet* %33, i32 %34, i32 %35, i32 0, i32 0, i32* null, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @netdev_dbg(%struct.TYPE_5__* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %186

46:                                               ; preds = %24
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %51 = load i32, i32* @AX_SWRESET_IPPD, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @asix_sw_reset(%struct.usbnet* %50, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %186

57:                                               ; preds = %49
  %58 = call i32 @usleep_range(i32 10000, i32 11000)
  %59 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %60 = load i32, i32* @AX_SWRESET_CLEAR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @asix_sw_reset(%struct.usbnet* %59, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %186

66:                                               ; preds = %57
  %67 = call i32 @msleep(i32 60)
  %68 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %69 = load i32, i32* @AX_SWRESET_IPRL, align 4
  %70 = load i32, i32* @AX_SWRESET_PRL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @asix_sw_reset(%struct.usbnet* %68, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %186

77:                                               ; preds = %66
  br label %89

78:                                               ; preds = %46
  %79 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %80 = load i32, i32* @AX_SWRESET_IPPD, align 4
  %81 = load i32, i32* @AX_SWRESET_PRL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @asix_sw_reset(%struct.usbnet* %79, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %186

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %77
  %90 = call i32 @msleep(i32 150)
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %95 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %98 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @MII_PHYSID1, align 4
  %102 = call i32 @asix_mdio_read_nopm(%struct.TYPE_5__* %96, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %186

107:                                              ; preds = %93, %89
  %108 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %109 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @asix_write_rx_ctl(%struct.usbnet* %108, i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %186

115:                                              ; preds = %107
  %116 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %117 = load i32, i32* @AX88772_MEDIUM_DEFAULT, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @asix_write_medium_mode(%struct.usbnet* %116, i32 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %186

123:                                              ; preds = %115
  %124 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %125 = load i32, i32* @AX_CMD_WRITE_IPG0, align 4
  %126 = load i32, i32* @AX88772_IPG0_DEFAULT, align 4
  %127 = load i32, i32* @AX88772_IPG1_DEFAULT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @AX88772_IPG2_DEFAULT, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @asix_write_cmd(%struct.usbnet* %124, i32 %125, i32 %128, i32 %129, i32 0, i32* null, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %136 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @netdev_dbg(%struct.TYPE_5__* %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  br label %186

140:                                              ; preds = %123
  %141 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %142 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %145 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ether_addr_copy(i32* %143, i32 %148)
  %150 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %151 = load i32, i32* @AX_CMD_WRITE_NODE_ID, align 4
  %152 = load i32, i32* @ETH_ALEN, align 4
  %153 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %154 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @asix_write_cmd(%struct.usbnet* %150, i32 %151, i32 0, i32 0, i32 %152, i32* %155, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %140
  br label %186

161:                                              ; preds = %140
  %162 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %163 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @asix_write_rx_ctl(%struct.usbnet* %162, i32 %163, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %186

169:                                              ; preds = %161
  %170 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @asix_read_rx_ctl(%struct.usbnet* %170, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %174 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @netdev_dbg(%struct.TYPE_5__* %175, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @asix_read_medium_status(%struct.usbnet* %178, i32 %179)
  store i32 %180, i32* %9, align 4
  %181 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %182 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @netdev_dbg(%struct.TYPE_5__* %183, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  store i32 0, i32* %3, align 4
  br label %188

186:                                              ; preds = %168, %160, %134, %122, %114, %104, %87, %76, %65, %56, %40, %23
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %169
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @asix_write_gpio(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @asix_sw_reset(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @asix_mdio_read_nopm(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @asix_read_rx_ctl(%struct.usbnet*, i32) #1

declare dso_local i32 @asix_read_medium_status(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
