; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_post_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_post_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.macsec_secy = type { i64, i64, i64 }
%struct.macsec_rx_sa = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pcpu_rx_sc_stats = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macsec_eth_header = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.macsec_rx_sa* }

@MACSEC_VALIDATE_DISABLED = common dso_local global i64 0, align 8
@MACSEC_TCI_E = common dso_local global i32 0, align 4
@MACSEC_TCI_C = common dso_local global i32 0, align 4
@MACSEC_VALIDATE_STRICT = common dso_local global i64 0, align 8
@MACSEC_VALIDATE_CHECK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.macsec_secy*, i64)* @macsec_post_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_post_decrypt(%struct.sk_buff* %0, %struct.macsec_secy* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.macsec_secy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macsec_rx_sa*, align 8
  %9 = alloca %struct.pcpu_rx_sc_stats*, align 8
  %10 = alloca %struct.macsec_eth_header*, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.macsec_secy* %1, %struct.macsec_secy** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.TYPE_8__* @macsec_skb_cb(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %14, align 8
  store %struct.macsec_rx_sa* %15, %struct.macsec_rx_sa** %8, align 8
  %16 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %17 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pcpu_rx_sc_stats* @this_cpu_ptr(i32 %20)
  store %struct.pcpu_rx_sc_stats* %21, %struct.pcpu_rx_sc_stats** %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.macsec_eth_header* @macsec_ethhdr(%struct.sk_buff* %22)
  store %struct.macsec_eth_header* %23, %struct.macsec_eth_header** %10, align 8
  store i64 0, i64* %11, align 8
  %24 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %25 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %28 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %31 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %3
  %35 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %36 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %39 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %34, %3
  %43 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %44 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %53 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %56 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %55, i32 0, i32 0
  %57 = call i32 @u64_stats_update_begin(i32* %56)
  %58 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %59 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %64 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %63, i32 0, i32 0
  %65 = call i32 @u64_stats_update_end(i32* %64)
  store i32 0, i32* %4, align 4
  br label %228

66:                                               ; preds = %47, %42
  %67 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %68 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MACSEC_VALIDATE_DISABLED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  %73 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %74 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %73, i32 0, i32 0
  %75 = call i32 @u64_stats_update_begin(i32* %74)
  %76 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %10, align 8
  %77 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MACSEC_TCI_E, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %87 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %85
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  br label %104

93:                                               ; preds = %72
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %98 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %96
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  br label %104

104:                                              ; preds = %93, %82
  %105 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %106 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %105, i32 0, i32 0
  %107 = call i32 @u64_stats_update_end(i32* %106)
  br label %108

108:                                              ; preds = %104, %66
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call %struct.TYPE_8__* @macsec_skb_cb(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %184, label %114

114:                                              ; preds = %108
  %115 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %116 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %10, align 8
  %119 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MACSEC_TCI_C, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %114
  %125 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %126 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MACSEC_VALIDATE_STRICT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124, %114
  %131 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %132 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %131, i32 0, i32 0
  %133 = call i32 @u64_stats_update_begin(i32* %132)
  %134 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %135 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %140 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %139, i32 0, i32 0
  %141 = call i32 @u64_stats_update_end(i32* %140)
  store i32 0, i32* %4, align 4
  br label %228

142:                                              ; preds = %124
  %143 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %144 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %143, i32 0, i32 0
  %145 = call i32 @u64_stats_update_begin(i32* %144)
  %146 = load %struct.macsec_secy*, %struct.macsec_secy** %6, align 8
  %147 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MACSEC_VALIDATE_CHECK, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %142
  %152 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %153 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %158 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @this_cpu_inc(i32 %161)
  br label %180

163:                                              ; preds = %142
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* %11, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %169 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %179

173:                                              ; preds = %163
  %174 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %175 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %151
  %181 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %182 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %181, i32 0, i32 0
  %183 = call i32 @u64_stats_update_end(i32* %182)
  br label %227

184:                                              ; preds = %108
  %185 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %186 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %185, i32 0, i32 0
  %187 = call i32 @u64_stats_update_begin(i32* %186)
  %188 = load i64, i64* %7, align 8
  %189 = load i64, i64* %11, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %193 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %209

197:                                              ; preds = %184
  %198 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %199 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %204 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %203, i32 0, i32 2
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @this_cpu_inc(i32 %207)
  br label %209

209:                                              ; preds = %197, %191
  %210 = load %struct.pcpu_rx_sc_stats*, %struct.pcpu_rx_sc_stats** %9, align 8
  %211 = getelementptr inbounds %struct.pcpu_rx_sc_stats, %struct.pcpu_rx_sc_stats* %210, i32 0, i32 0
  %212 = call i32 @u64_stats_update_end(i32* %211)
  %213 = load i64, i64* %7, align 8
  %214 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %215 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp sge i64 %213, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %209
  %219 = load i64, i64* %7, align 8
  %220 = add nsw i64 %219, 1
  %221 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %222 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %218, %209
  %224 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %8, align 8
  %225 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %224, i32 0, i32 1
  %226 = call i32 @spin_unlock(i32* %225)
  br label %227

227:                                              ; preds = %223, %180
  store i32 1, i32* %4, align 4
  br label %228

228:                                              ; preds = %227, %130, %51
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local %struct.TYPE_8__* @macsec_skb_cb(%struct.sk_buff*) #1

declare dso_local %struct.pcpu_rx_sc_stats* @this_cpu_ptr(i32) #1

declare dso_local %struct.macsec_eth_header* @macsec_ethhdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
