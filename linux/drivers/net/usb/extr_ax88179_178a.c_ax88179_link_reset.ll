; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ax88179_data = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@AX_RX_CTL = common dso_local global i32 0, align 4
@AX_MEDIUM_RECEIVE_EN = common dso_local global i32 0, align 4
@AX_MEDIUM_TXFLOW_CTRLEN = common dso_local global i32 0, align 4
@AX_MEDIUM_RXFLOW_CTRLEN = common dso_local global i32 0, align 4
@PHYSICAL_LINK_STATUS = common dso_local global i32 0, align 4
@AX_ACCESS_PHY = common dso_local global i32 0, align 4
@AX88179_PHY_ID = common dso_local global i32 0, align 4
@GMII_PHY_PHYSR = common dso_local global i32 0, align 4
@GMII_PHY_PHYSR_LINK = common dso_local global i32 0, align 4
@GMII_PHY_PHYSR_GIGA = common dso_local global i32 0, align 4
@GMII_PHY_PHYSR_SMASK = common dso_local global i32 0, align 4
@AX_MEDIUM_GIGAMODE = common dso_local global i32 0, align 4
@AX_MEDIUM_EN_125MHZ = common dso_local global i32 0, align 4
@AX_MEDIUM_JUMBO_EN = common dso_local global i32 0, align 4
@AX_USB_SS = common dso_local global i32 0, align 4
@AX88179_BULKIN_SIZE = common dso_local global i32* null, align 8
@AX_USB_HS = common dso_local global i32 0, align 4
@GMII_PHY_PHYSR_100 = common dso_local global i32 0, align 4
@AX_MEDIUM_PS = common dso_local global i32 0, align 4
@AX_RX_BULKIN_QCTRL = common dso_local global i32 0, align 4
@GMII_PHY_PHYSR_FULL = common dso_local global i32 0, align 4
@AX_MEDIUM_FULL_DUPLEX = common dso_local global i32 0, align 4
@AX_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88179_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.ax88179_data*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ax88179_data*
  store %struct.ax88179_data* %15, %struct.ax88179_data** %4, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = sdiv i32 %16, 10
  store i32 %17, i32* %9, align 4
  store i32 1073741824, i32* %10, align 4
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %44, %1
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 1073741824
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %27 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %28 = load i32, i32* @AX_ACCESS_MAC, align 4
  %29 = load i32, i32* @AX_RX_CTL, align 4
  %30 = call i32 @ax88179_write_cmd(%struct.usbnet* %27, i32 %28, i32 %29, i32 2, i32 2, i32* %7)
  %31 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %32 = load i32, i32* @AX_ACCESS_MAC, align 4
  %33 = load i32, i32* @AX_RX_CTL, align 4
  %34 = load %struct.ax88179_data*, %struct.ax88179_data** %4, align 8
  %35 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %34, i32 0, i32 0
  %36 = call i32 @ax88179_write_cmd(%struct.usbnet* %31, i32 %32, i32 %33, i32 2, i32 2, i32* %35)
  %37 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %38 = call i32 @ax88179_read_cmd(%struct.usbnet* %37, i32 129, i32 140, i32 0, i32 4, i32* %10)
  %39 = load i32, i32* @jiffies, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @time_after(i32 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %181

44:                                               ; preds = %26
  br label %22

45:                                               ; preds = %22
  %46 = load i32, i32* @AX_MEDIUM_RECEIVE_EN, align 4
  %47 = load i32, i32* @AX_MEDIUM_TXFLOW_CTRLEN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @AX_MEDIUM_RXFLOW_CTRLEN, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %52 = load i32, i32* @AX_ACCESS_MAC, align 4
  %53 = load i32, i32* @PHYSICAL_LINK_STATUS, align 4
  %54 = call i32 @ax88179_read_cmd(%struct.usbnet* %51, i32 %52, i32 %53, i32 1, i32 1, i32* %6)
  %55 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %56 = load i32, i32* @AX_ACCESS_PHY, align 4
  %57 = load i32, i32* @AX88179_PHY_ID, align 4
  %58 = load i32, i32* @GMII_PHY_PHYSR, align 4
  %59 = call i32 @ax88179_read_cmd(%struct.usbnet* %55, i32 %56, i32 %57, i32 %58, i32 2, i32* %8)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @GMII_PHY_PHYSR_LINK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %181

65:                                               ; preds = %45
  %66 = load i32, i32* @GMII_PHY_PHYSR_GIGA, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @GMII_PHY_PHYSR_SMASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %114

71:                                               ; preds = %65
  %72 = load i32, i32* @AX_MEDIUM_GIGAMODE, align 4
  %73 = load i32, i32* @AX_MEDIUM_EN_125MHZ, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1500
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load i32, i32* @AX_MEDIUM_JUMBO_EN, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %71
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @AX_USB_SS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %94 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = call i32 @memcpy(i32* %93, i32* %95, i32 5)
  br label %113

97:                                               ; preds = %87
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @AX_USB_HS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %104 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = call i32 @memcpy(i32* %103, i32* %105, i32 5)
  br label %112

107:                                              ; preds = %97
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %109 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = call i32 @memcpy(i32* %108, i32* %110, i32 5)
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %92
  br label %147

114:                                              ; preds = %65
  %115 = load i32, i32* @GMII_PHY_PHYSR_100, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @GMII_PHY_PHYSR_SMASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %114
  %121 = load i32, i32* @AX_MEDIUM_PS, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @AX_USB_SS, align 4
  %126 = load i32, i32* @AX_USB_HS, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %132 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = call i32 @memcpy(i32* %131, i32* %133, i32 5)
  br label %140

135:                                              ; preds = %120
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %137 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = call i32 @memcpy(i32* %136, i32* %138, i32 5)
  br label %140

140:                                              ; preds = %135, %130
  br label %146

141:                                              ; preds = %114
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %143 = load i32*, i32** @AX88179_BULKIN_SIZE, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = call i32 @memcpy(i32* %142, i32* %144, i32 5)
  br label %146

146:                                              ; preds = %141, %140
  br label %147

147:                                              ; preds = %146, %113
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %150 = load i32, i32* @AX_ACCESS_MAC, align 4
  %151 = load i32, i32* @AX_RX_BULKIN_QCTRL, align 4
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %153 = call i32 @ax88179_write_cmd(%struct.usbnet* %149, i32 %150, i32 %151, i32 5, i32 5, i32* %152)
  %154 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 2
  %157 = mul nsw i32 1024, %156
  %158 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %159 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @GMII_PHY_PHYSR_FULL, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %148
  %165 = load i32, i32* @AX_MEDIUM_FULL_DUPLEX, align 4
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %164, %148
  %169 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %170 = load i32, i32* @AX_ACCESS_MAC, align 4
  %171 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %172 = call i32 @ax88179_write_cmd(%struct.usbnet* %169, i32 %170, i32 %171, i32 2, i32 2, i32* %7)
  %173 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %174 = call i32 @ax88179_chk_eee(%struct.usbnet* %173)
  %175 = load %struct.ax88179_data*, %struct.ax88179_data** %4, align 8
  %176 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %178 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = call i32 @netif_carrier_on(%struct.TYPE_2__* %179)
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %168, %64, %43
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ax88179_chk_eee(%struct.usbnet*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
