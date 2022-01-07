; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_receive_frame_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.ath5k_rx_status = type { i32, i32, i64, i32, i64 }

@AR5K_RXERR_CRC = common dso_local global i32 0, align 4
@AR5K_RXERR_FIFO = common dso_local global i32 0, align 4
@AR5K_RXERR_PHY = common dso_local global i32 0, align 4
@AR5K_RX_PHY_ERROR_OFDM_RESTART = common dso_local global i64 0, align 8
@AR5K_RX_PHY_ERROR_CCK_RESTART = common dso_local global i64 0, align 8
@AR5K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR5K_RXKEYIX_INVALID = common dso_local global i64 0, align 8
@AR5K_RXERR_MIC = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_rx_status*)* @ath5k_receive_frame_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_receive_frame_ok(%struct.ath5k_hw* %0, %struct.ath5k_rx_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ath5k_rx_status*, align 8
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ath5k_rx_status* %1, %struct.ath5k_rx_status** %5, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %13 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %14
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %23 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %177

27:                                               ; preds = %2
  %28 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %29 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %42 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AR5K_RXERR_FIFO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %55 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AR5K_RXERR_PHY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %115

60:                                               ; preds = %53
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %67 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %60
  %71 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %72 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %81 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %75, %70, %60
  %88 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %89 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @AR5K_RX_PHY_ERROR_OFDM_RESTART, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %96 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @AR5K_RX_PHY_ERROR_CCK_RESTART, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %94, %87
  %102 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %103 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %104 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @AR5K_RXERR_PHY, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %110 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %114

113:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %190

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %53
  %116 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %117 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %115
  %123 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %124 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %129 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AR5K_RXKEYIX_INVALID, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %122
  %134 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %135 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %190

141:                                              ; preds = %133, %122
  br label %142

142:                                              ; preds = %141, %115
  %143 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %144 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AR5K_RXERR_MIC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %151 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  store i32 1, i32* %3, align 4
  br label %190

155:                                              ; preds = %142
  %156 = load i32, i32* @AR5K_RXERR_DECRYPT, align 4
  store i32 %156, i32* %6, align 4
  %157 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %158 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @FIF_FCSFAIL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load i32, i32* @AR5K_RXERR_CRC, align 4
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %163, %155
  %168 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %169 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = xor i32 %171, -1
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %190

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %2
  %178 = load %struct.ath5k_rx_status*, %struct.ath5k_rx_status** %5, align 8
  %179 = getelementptr inbounds %struct.ath5k_rx_status, %struct.ath5k_rx_status* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %185 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  store i32 0, i32* %3, align 4
  br label %190

189:                                              ; preds = %177
  store i32 1, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %183, %175, %149, %140, %113
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
