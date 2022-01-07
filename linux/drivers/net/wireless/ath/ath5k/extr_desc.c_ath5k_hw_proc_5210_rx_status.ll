; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_5210_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_desc.c_ath5k_hw_proc_5210_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }
%struct.ath5k_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ath5k_hw_rx_status }
%struct.ath5k_hw_rx_status = type { i32, i32 }
%struct.ath5k_rx_status = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@AR5K_5210_RX_DESC_STATUS1_DONE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS0_DATA_LEN = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS0_RECEIVE_SIGNAL = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS0_RECEIVE_RATE = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS0_MORE = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS1_RECEIVE_TIMESTAMP = common dso_local global i32 0, align 4
@AR5K_AR5211 = common dso_local global i64 0, align 8
@AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5211 = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5210 = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS1_KEY_INDEX_VALID = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS1_KEY_INDEX = common dso_local global i32 0, align 4
@AR5K_RXKEYIX_INVALID = common dso_local global i8* null, align 8
@AR5K_5210_RX_DESC_STATUS1_FRAME_RECEIVE_OK = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS1_CRC_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_CRC = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_5210_RX_DESC_STATUS1_FIFO_OVERRUN_5210 = common dso_local global i32 0, align 4
@AR5K_RXERR_FIFO = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS1_PHY_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_PHY = common dso_local global i32 0, align 4
@AR5K_5210_RX_DESC_STATUS1_DECRYPT_CRC_ERROR = common dso_local global i32 0, align 4
@AR5K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, %struct.ath5k_rx_status*)* @ath5k_hw_proc_5210_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_proc_5210_rx_status(%struct.ath5k_hw* %0, %struct.ath5k_desc* %1, %struct.ath5k_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ath5k_desc*, align 8
  %7 = alloca %struct.ath5k_rx_status*, align 8
  %8 = alloca %struct.ath5k_hw_rx_status*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store %struct.ath5k_desc* %1, %struct.ath5k_desc** %6, align 8
  store %struct.ath5k_rx_status* %2, %struct.ath5k_rx_status** %7, align 8
  %9 = load %struct.ath5k_desc*, %struct.ath5k_desc** %6, align 8
  %10 = getelementptr inbounds %struct.ath5k_desc, %struct.ath5k_desc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ath5k_hw_rx_status* %12, %struct.ath5k_hw_rx_status** %8, align 8
  %13 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %14 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_DONE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINPROGRESS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %186

26:                                               ; preds = %3
  %27 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %28 = call i32 @memset(%struct.ath5k_rx_status* %27, i32 0, i32 56)
  %29 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %30 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR5K_5210_RX_DESC_STATUS0_DATA_LEN, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %35 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %37 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR5K_5210_RX_DESC_STATUS0_RECEIVE_SIGNAL, align 4
  %40 = call i8* @AR5K_REG_MS(i32 %38, i32 %39)
  %41 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %42 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %44 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AR5K_5210_RX_DESC_STATUS0_RECEIVE_RATE, align 4
  %47 = call i8* @AR5K_REG_MS(i32 %45, i32 %46)
  %48 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %49 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AR5K_5210_RX_DESC_STATUS0_MORE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %60 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %62 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_RECEIVE_TIMESTAMP, align 4
  %65 = call i8* @AR5K_REG_MS(i32 %63, i32 %64)
  %66 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %69 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AR5K_AR5211, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %26
  %74 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %75 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5211, align 4
  %78 = call i8* @AR5K_REG_MS(i32 %76, i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %81 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %93

82:                                               ; preds = %26
  %83 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %84 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AR5K_5210_RX_DESC_STATUS0_RECEIVE_ANT_5210, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 2, i32 1
  %91 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %92 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %82, %73
  %94 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %95 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_KEY_INDEX_VALID, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %102 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_KEY_INDEX, align 4
  %105 = call i8* @AR5K_REG_MS(i32 %103, i32 %104)
  %106 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %107 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  br label %112

108:                                              ; preds = %93
  %109 = load i8*, i8** @AR5K_RXKEYIX_INVALID, align 8
  %110 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %111 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %108, %100
  %113 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %114 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_FRAME_RECEIVE_OK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %185, label %119

119:                                              ; preds = %112
  %120 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %121 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_CRC_ERROR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %128 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %129 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %119
  %133 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %134 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @AR5K_AR5210, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %140 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_FIFO_OVERRUN_5210, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @AR5K_RXERR_FIFO, align 4
  %147 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %148 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %138, %132
  %152 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %153 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_PHY_ERROR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %151
  %159 = load i32, i32* @AR5K_RXERR_PHY, align 4
  %160 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %161 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %165 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_PHY_ERROR, align 4
  %168 = call i8* @AR5K_REG_MS(i32 %166, i32 %167)
  %169 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %170 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %158, %151
  %172 = load %struct.ath5k_hw_rx_status*, %struct.ath5k_hw_rx_status** %8, align 8
  %173 = getelementptr inbounds %struct.ath5k_hw_rx_status, %struct.ath5k_hw_rx_status* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @AR5K_5210_RX_DESC_STATUS1_DECRYPT_CRC_ERROR, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  %180 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %7, align 8
  %181 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %171
  br label %185

185:                                              ; preds = %184, %112
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %23
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.ath5k_rx_status*, i32, i32) #1

declare dso_local i8* @AR5K_REG_MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
