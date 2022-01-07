; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_init_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_init_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, i32, i32*, i32, i32, i64, %struct.wil_ring }
%struct.wil_ring = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"compressed RX status cannot be used with SW reorder\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WIL_SRING_SIZE_ORDER_MIN = common dso_local global i32 0, align 4
@WIL_SRING_SIZE_ORDER_MAX = common dso_local global i32 0, align 4
@WIL_RX_SRING_SIZE_ORDER_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"rx_init, desc_ring_size=%u, status_ring_size=%u, elem_size=%zu\0A\00", align 1
@WIL6210_MAX_STATUS_RINGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"rx_init: allocate %d status rings\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@WIL_DEFAULT_RX_STATUS_RING_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"rx_buff_id_count %d exceeds sring_size %d. set it to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i32)* @wil_rx_init_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rx_init_edma(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %16 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %15, i32 0, i32 7
  store %struct.wil_ring* %16, %struct.wil_ring** %8, align 8
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i64 4, i64 4
  store i64 %22, i64* %10, align 8
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %24 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %29 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %34 = call i32 @wil_err(%struct.wil6210_priv* %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %212

37:                                               ; preds = %27, %2
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %39 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %47 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %50 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 512
  %57 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %58 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %61 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WIL_SRING_SIZE_ORDER_MIN, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %67 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @WIL_SRING_SIZE_ORDER_MAX, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @WIL_RX_SRING_SIZE_ORDER_DEFAULT, align 4
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %74 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %77 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 1, %78
  store i32 %79, i32* %6, align 4
  %80 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i64, i64* %10, align 8
  %84 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %80, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i64 %83)
  %85 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %86 = call i32 @wil_rx_buf_len_init_edma(%struct.wil6210_priv* %85)
  %87 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %88 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @WIL6210_MAX_STATUS_RINGS, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %75
  %94 = load i32, i32* @WIL6210_MAX_STATUS_RINGS, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %97 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %75
  %99 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %100 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %101 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_misc(%struct.wil6210_priv* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %105 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %106 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @wil_wmi_cfg_def_rx_offload(%struct.wil6210_priv* %104, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %212

113:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %138, %113
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %117 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %114
  %121 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %122 = call i32 @wil_find_free_sring(%struct.wil6210_priv* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @EFAULT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %9, align 4
  br label %191

128:                                              ; preds = %120
  %129 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i64, i64* %10, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @wil_init_rx_sring(%struct.wil6210_priv* %129, i32 %130, i64 %131, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %191

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %114

141:                                              ; preds = %114
  %142 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @WIL_DEFAULT_RX_STATUS_RING_ID, align 4
  %145 = call i32 @wil_init_rx_desc_ring(%struct.wil6210_priv* %142, i32 %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %191

149:                                              ; preds = %141
  %150 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %151 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %149
  %156 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %157 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %158 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = sub nsw i32 %161, 1
  %163 = call i32 @wil_info(%struct.wil6210_priv* %156, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %160, i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %167 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %155, %149
  %169 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %170 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %171 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @wil_init_rx_buff_arr(%struct.wil6210_priv* %169, i32 %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %187

177:                                              ; preds = %168
  %178 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %179 = call i32 @wil_rx_refill_edma(%struct.wil6210_priv* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %184

183:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %212

184:                                              ; preds = %182
  %185 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %186 = call i32 @wil_free_rx_buff_arr(%struct.wil6210_priv* %185)
  br label %187

187:                                              ; preds = %184, %176
  %188 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %189 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %190 = call i32 @wil_ring_free_edma(%struct.wil6210_priv* %188, %struct.wil_ring* %189)
  br label %191

191:                                              ; preds = %187, %148, %136, %125
  store i32 0, i32* %11, align 4
  br label %192

192:                                              ; preds = %207, %191
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %195 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %192
  %199 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %200 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %201 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = call i32 @wil_sring_free(%struct.wil6210_priv* %199, i32* %205)
  br label %207

207:                                              ; preds = %198
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %192

210:                                              ; preds = %192
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %183, %111, %32
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, ...) #1

declare dso_local i32 @wil_rx_buf_len_init_edma(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_wmi_cfg_def_rx_offload(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_find_free_sring(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_init_rx_sring(%struct.wil6210_priv*, i32, i64, i32) #1

declare dso_local i32 @wil_init_rx_desc_ring(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @wil_init_rx_buff_arr(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_rx_refill_edma(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_free_rx_buff_arr(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_ring_free_edma(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @wil_sring_free(%struct.wil6210_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
