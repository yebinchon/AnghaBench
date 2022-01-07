; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_tx_ts_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_tx_ts_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32, i32, i32, i32*, i32*, i32*, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@PTP_TX_MSG_HEADER_MSG_TYPE_ = common dso_local global i32 0, align 4
@PTP_TX_MSG_HEADER_MSG_TYPE_SYNC_ = common dso_local global i32 0, align 4
@LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*)* @lan743x_ptp_tx_ts_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ptp_tx_ts_complete(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_ptp*, align 8
  %4 = alloca %struct.skb_shared_hwtstamps, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %12 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %12, i32 0, i32 0
  store %struct.lan743x_ptp* %13, %struct.lan743x_ptp** %3, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %15 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %14, i32 0, i32 7
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %18 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %22 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %27 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %10, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %231

33:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %118, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %121

38:                                               ; preds = %34
  %39 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %40 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %48 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %47, i32 0, i32 8
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %9, align 8
  %54 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %55 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %62 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %69 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  %75 = call i32 @memset(%struct.skb_shared_hwtstamps* %4, i32 0, i32 4)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ktime_set(i32 %76, i32 %77)
  %79 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %4, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %38
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @PTP_TX_MSG_HEADER_MSG_TYPE_, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @PTP_TX_MSG_HEADER_MSG_TYPE_SYNC_, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %38
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call i32 @skb_tstamp_tx(%struct.sk_buff* %89, %struct.skb_shared_hwtstamps* %4)
  br label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = call i32 @dev_kfree_skb(%struct.sk_buff* %92)
  %94 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %95 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %94, i32 0, i32 8
  %96 = load %struct.sk_buff**, %struct.sk_buff*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %96, i64 %98
  store %struct.sk_buff* null, %struct.sk_buff** %99, align 8
  %100 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %101 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 0, i32* %105, align 4
  %106 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %107 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 0, i32* %111, align 4
  %112 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %113 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %91
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %34

121:                                              ; preds = %34
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %124 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = ashr i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %217, %121
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %220

132:                                              ; preds = %128
  %133 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %134 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %133, i32 0, i32 8
  %135 = load %struct.sk_buff**, %struct.sk_buff*** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %135, i64 %137
  %139 = load %struct.sk_buff*, %struct.sk_buff** %138, align 8
  %140 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %141 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %140, i32 0, i32 8
  %142 = load %struct.sk_buff**, %struct.sk_buff*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %142, i64 %146
  store %struct.sk_buff* %139, %struct.sk_buff** %147, align 8
  %148 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %149 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %156 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  store i32 %154, i32* %162, align 4
  %163 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %164 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %171 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %10, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  store i32 %169, i32* %177, align 4
  %178 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %179 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %178, i32 0, i32 5
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %186 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %187, i64 %191
  store i32 %184, i32* %192, align 4
  %193 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %194 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %193, i32 0, i32 8
  %195 = load %struct.sk_buff**, %struct.sk_buff*** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %195, i64 %197
  store %struct.sk_buff* null, %struct.sk_buff** %198, align 8
  %199 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %200 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 0, i32* %204, align 4
  %205 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %206 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 0, i32* %210, align 4
  %211 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %212 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %132
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %128

220:                                              ; preds = %128
  %221 = load i32, i32* %10, align 4
  %222 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %223 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %228 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, %226
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %220, %32
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %234 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = sub nsw i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %238 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %237, i32 0, i32 7
  %239 = call i32 @spin_unlock_bh(i32* %238)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
