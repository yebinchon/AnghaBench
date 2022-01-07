; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_7__*, %struct.ax88172a_private*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ax88172a_private = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.asix_data = type { i32* }

@.str = private unnamed_addr constant [39 x i8] c"RX_CTL is 0x%04x after software reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"RX_CTL is 0x%04x setting to 0x0000\0A\00", align 1
@AX_CMD_WRITE_IPG0 = common dso_local global i32 0, align 4
@AX88772_IPG0_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG1_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG2_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@AX_CMD_WRITE_NODE_ID = common dso_local global i32 0, align 4
@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"RX_CTL is 0x%04x after all initializations\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Medium Status is 0x%04x after all initializations\0A\00", align 1
@PHY_ID_FMT = common dso_local global i8* null, align 8
@ax88172a_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not connect to PHY device %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Connected to phy %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88172a_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88172a_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.asix_data*, align 8
  %5 = alloca %struct.ax88172a_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 2
  %10 = bitcast i32* %9 to %struct.asix_data*
  store %struct.asix_data* %10, %struct.asix_data** %4, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 1
  %13 = load %struct.ax88172a_private*, %struct.ax88172a_private** %12, align 8
  store %struct.ax88172a_private* %13, %struct.ax88172a_private** %5, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %16 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ax88172a_reset_phy(%struct.usbnet* %14, i32 %17)
  %19 = call i32 @msleep(i32 150)
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = call i32 @asix_read_rx_ctl(%struct.usbnet* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @netdev_dbg(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %28 = call i32 @asix_write_rx_ctl(%struct.usbnet* %27, i32 0, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %155

32:                                               ; preds = %1
  %33 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %34 = call i32 @asix_read_rx_ctl(%struct.usbnet* %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @netdev_dbg(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = call i32 @msleep(i32 150)
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = load i32, i32* @AX_CMD_WRITE_IPG0, align 4
  %43 = load i32, i32* @AX88772_IPG0_DEFAULT, align 4
  %44 = load i32, i32* @AX88772_IPG1_DEFAULT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AX88772_IPG2_DEFAULT, align 4
  %47 = call i32 @asix_write_cmd(%struct.usbnet* %41, i32 %42, i32 %45, i32 %46, i32 0, i32* null, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %32
  %51 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @netdev_err(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %155

56:                                               ; preds = %32
  %57 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %58 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32* %59, i32 %64, i32 %65)
  %67 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %68 = load i32, i32* @AX_CMD_WRITE_NODE_ID, align 4
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %71 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @asix_write_cmd(%struct.usbnet* %67, i32 %68, i32 0, i32 0, i32 %69, i32* %72, i32 0)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %56
  br label %155

77:                                               ; preds = %56
  %78 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %79 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %80 = call i32 @asix_write_rx_ctl(%struct.usbnet* %78, i32 %79, i32 0)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %155

84:                                               ; preds = %77
  %85 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %86 = call i32 @asix_read_rx_ctl(%struct.usbnet* %85, i32 0)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %88 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @netdev_dbg(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %93 = call i32 @asix_read_medium_status(%struct.usbnet* %92, i32 0)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %95 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @netdev_dbg(%struct.TYPE_7__* %96, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %100 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** @PHY_ID_FMT, align 8
  %103 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %104 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %103, i32 0, i32 3
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %109 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @snprintf(i32 %101, i32 20, i8* %102, i32 %107, i32 %110)
  %112 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %113 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %116 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %119 = call i32 @phy_connect(%struct.TYPE_7__* %114, i32 %117, i32* @ax88172a_adjust_link, i32 %118)
  %120 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %121 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %123 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @IS_ERR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %84
  %128 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %129 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %132 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @netdev_err(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %136 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @PTR_ERR(i32 %137)
  store i32 %138, i32* %6, align 4
  br label %155

139:                                              ; preds = %84
  %140 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %141 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %144 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @netdev_info(%struct.TYPE_7__* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %148 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @genphy_resume(i32 %149)
  %151 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %152 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @phy_start(i32 %153)
  store i32 0, i32* %2, align 4
  br label %157

155:                                              ; preds = %127, %83, %76, %50, %31
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %139
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @ax88172a_reset_phy(%struct.usbnet*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @asix_read_rx_ctl(%struct.usbnet*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @asix_read_medium_status(%struct.usbnet*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @phy_connect(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @genphy_resume(i32) #1

declare dso_local i32 @phy_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
