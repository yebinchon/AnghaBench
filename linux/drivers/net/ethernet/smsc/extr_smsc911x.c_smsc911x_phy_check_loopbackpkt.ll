; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_check_loopbackpkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_check_loopbackpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i64*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.smsc911x_data*, i32*, i32)*, i32 (%struct.smsc911x_data*, i32*, i32)* }

@MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@TX_CMD_A_FIRST_SEG_ = common dso_local global i32 0, align 4
@TX_CMD_A_LAST_SEG_ = common dso_local global i32 0, align 4
@TX_DATA_FIFO = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to transmit during loopback test\00", align 1
@TX_STS_ES_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Transmit encountered errors during loopback test\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to receive during loopback test\00", align 1
@RX_STS_ES_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Receive encountered errors during loopback test\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Unexpected packet size during loop back test, size=%d, will retry\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Successfully verified loopback packet\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Data mismatch during loop back test, will retry\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*)* @smsc911x_phy_check_loopbackpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_phy_check_loopbackpkt(%struct.smsc911x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %218, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %16, 10
  br i1 %17, label %18, label %221

18:                                               ; preds = %15
  %19 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %20 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %23 = call i32 @memset(i64* %21, i32 0, i32 %22)
  %24 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %25 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = ptrtoint i64* %26 to i32
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 16
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @TX_CMD_A_FIRST_SEG_, align 4
  %31 = load i32, i32* @TX_CMD_A_LAST_SEG_, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %39 = shl i32 %38, 16
  %40 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %43 = load i32, i32* @TX_DATA_FIFO, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %42, i32 %43, i32 %44)
  %46 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %47 = load i32, i32* @TX_DATA_FIFO, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %46, i32 %47, i32 %48)
  %50 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %51 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = ptrtoint i64* %52 to i32
  %54 = and i32 %53, -4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %56 = add i32 %55, 3
  store i32 %56, i32* %5, align 4
  %57 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %58 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = ptrtoint i64* %59 to i32
  %61 = and i32 %60, 3
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 2
  store i32 %65, i32* %5, align 4
  %66 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %67 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (%struct.smsc911x_data*, i32*, i32)*, i32 (%struct.smsc911x_data*, i32*, i32)** %69, align 8
  %71 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %5, align 4
  %76 = call i32 %70(%struct.smsc911x_data* %71, i32* %74, i32 %75)
  store i32 60, i32* %12, align 4
  br label %77

77:                                               ; preds = %89, %18
  %78 = call i32 @udelay(i32 5)
  %79 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %80 = call i32 @smsc911x_tx_get_txstatus(%struct.smsc911x_data* %79)
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %12, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ false, %81 ], [ %88, %85 ]
  br i1 %90, label %77, label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %96 = load i32, i32* @hw, align 4
  %97 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %95, i32 %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %218

98:                                               ; preds = %91
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @TX_STS_ES_, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %105 = load i32, i32* @hw, align 4
  %106 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %104, i32 %105, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %218

107:                                              ; preds = %98
  store i32 60, i32* %12, align 4
  br label %108

108:                                              ; preds = %120, %107
  %109 = call i32 @udelay(i32 5)
  %110 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %111 = call i32 @smsc911x_rx_get_rxstatus(%struct.smsc911x_data* %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, -1
  store i32 %114, i32* %12, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i1 [ false, %112 ], [ %119, %116 ]
  br i1 %121, label %108, label %122

122:                                              ; preds = %120
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %127 = load i32, i32* @hw, align 4
  %128 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %126, i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %218

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @RX_STS_ES_, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %136 = load i32, i32* @hw, align 4
  %137 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %135, i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %218

138:                                              ; preds = %129
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = and i64 %140, 1073676288
  %142 = lshr i64 %141, 16
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %11, align 4
  %144 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %145 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = ptrtoint i64* %146 to i32
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, 3
  store i32 %149, i32* %6, align 4
  %150 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %151 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = ptrtoint i64* %152 to i32
  %154 = and i32 %153, 3
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = ashr i32 %157, 2
  store i32 %158, i32* %6, align 4
  %159 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %160 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32 (%struct.smsc911x_data*, i32*, i32)*, i32 (%struct.smsc911x_data*, i32*, i32)** %162, align 8
  %164 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i32*
  %168 = load i32, i32* %6, align 4
  %169 = call i32 %163(%struct.smsc911x_data* %164, i32* %167, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %172 = add i32 %171, 4
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %138
  %175 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %176 = load i32, i32* @hw, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %175, i32 %176, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  br label %217

179:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %202, %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %205

184:                                              ; preds = %180
  %185 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %186 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %193 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %191, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %184
  store i32 1, i32* %14, align 4
  br label %205

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %13, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %13, align 4
  br label %180

205:                                              ; preds = %200, %180
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %205
  %209 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %210 = load i32, i32* @hw, align 4
  %211 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %209, i32 %210, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %224

212:                                              ; preds = %205
  %213 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %214 = load i32, i32* @hw, align 4
  %215 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %213, i32 %214, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %216

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216, %174
  br label %218

218:                                              ; preds = %217, %134, %125, %103, %94
  %219 = load i32, i32* %4, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %4, align 4
  br label %15

221:                                              ; preds = %15
  %222 = load i32, i32* @EIO, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %221, %208
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smsc911x_tx_get_txstatus(%struct.smsc911x_data*) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @smsc911x_rx_get_rxstatus(%struct.smsc911x_data*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
