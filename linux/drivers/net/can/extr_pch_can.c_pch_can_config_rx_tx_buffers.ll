; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_config_rx_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_config_rx_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_can_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@PCH_RX_OBJ_START = common dso_local global i32 0, align 4
@PCH_RX_OBJ_END = common dso_local global i32 0, align 4
@PCH_CMASK_RX_TX_GET = common dso_local global i32 0, align 4
@PCH_IF_MCONT_UMASK = common dso_local global i32 0, align 4
@PCH_IF_MCONT_EOB = common dso_local global i32 0, align 4
@PCH_MASK2_MDIR_MXTD = common dso_local global i32 0, align 4
@PCH_CMASK_RDWR = common dso_local global i32 0, align 4
@PCH_CMASK_MASK = common dso_local global i32 0, align 4
@PCH_CMASK_ARB = common dso_local global i32 0, align 4
@PCH_CMASK_CTRL = common dso_local global i32 0, align 4
@PCH_TX_OBJ_START = common dso_local global i32 0, align 4
@PCH_TX_OBJ_END = common dso_local global i32 0, align 4
@PCH_ID2_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_can_priv*)* @pch_can_config_rx_tx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_config_rx_tx_buffers(%struct.pch_can_priv* %0) #0 {
  %2 = alloca %struct.pch_can_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.pch_can_priv* %0, %struct.pch_can_priv** %2, align 8
  %4 = load i32, i32* @PCH_RX_OBJ_START, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %119, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PCH_RX_OBJ_END, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %122

9:                                                ; preds = %5
  %10 = load i32, i32* @PCH_CMASK_RX_TX_GET, align 4
  %11 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %12 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @iowrite32(i32 %10, i32* %17)
  %19 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %20 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @pch_can_rw_msg_obj(i32* %25, i32 %26)
  %28 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %29 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = call i32 @iowrite32(i32 0, i32* %34)
  %36 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %37 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = call i32 @iowrite32(i32 0, i32* %42)
  %44 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %45 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* @PCH_IF_MCONT_UMASK, align 4
  %52 = call i32 @pch_can_bit_set(i32* %50, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @PCH_RX_OBJ_END, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %9
  %57 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %58 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32, i32* @PCH_IF_MCONT_EOB, align 4
  %65 = call i32 @pch_can_bit_set(i32* %63, i32 %64)
  br label %76

66:                                               ; preds = %9
  %67 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %68 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* @PCH_IF_MCONT_EOB, align 4
  %75 = call i32 @pch_can_bit_clear(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %66, %56
  %77 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %78 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = call i32 @iowrite32(i32 0, i32* %83)
  %85 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %86 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* @PCH_MASK2_MDIR_MXTD, align 4
  %93 = or i32 8191, %92
  %94 = call i32 @pch_can_bit_clear(i32* %91, i32 %93)
  %95 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %96 = load i32, i32* @PCH_CMASK_MASK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PCH_CMASK_ARB, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %103 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = call i32 @iowrite32(i32 %101, i32* %108)
  %110 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %111 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @pch_can_rw_msg_obj(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %76
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %5

122:                                              ; preds = %5
  %123 = load i32, i32* @PCH_TX_OBJ_START, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %215, %122
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @PCH_TX_OBJ_END, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %218

128:                                              ; preds = %124
  %129 = load i32, i32* @PCH_CMASK_RX_TX_GET, align 4
  %130 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %131 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = call i32 @iowrite32(i32 %129, i32* %136)
  %138 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %139 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @pch_can_rw_msg_obj(i32* %144, i32 %145)
  %147 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %148 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 6
  %154 = call i32 @iowrite32(i32 0, i32* %153)
  %155 = load i32, i32* @PCH_ID2_DIR, align 4
  %156 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %157 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 5
  %163 = call i32 @iowrite32(i32 %155, i32* %162)
  %164 = load i32, i32* @PCH_IF_MCONT_EOB, align 4
  %165 = load i32, i32* @PCH_IF_MCONT_UMASK, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %168 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  %174 = call i32 @iowrite32(i32 %166, i32* %173)
  %175 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %176 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = call i32 @iowrite32(i32 0, i32* %181)
  %183 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %184 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = call i32 @pch_can_bit_clear(i32* %189, i32 8191)
  %191 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %192 = load i32, i32* @PCH_CMASK_MASK, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @PCH_CMASK_ARB, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %199 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = call i32 @iowrite32(i32 %197, i32* %204)
  %206 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %207 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 1
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @pch_can_rw_msg_obj(i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %128
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %124

218:                                              ; preds = %124
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i32) #1

declare dso_local i32 @pch_can_bit_set(i32*, i32) #1

declare dso_local i32 @pch_can_bit_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
