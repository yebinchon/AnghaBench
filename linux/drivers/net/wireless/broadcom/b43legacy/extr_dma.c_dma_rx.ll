; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_dma_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_dma_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_dmadesc32 = type { i32 }
%struct.b43legacy_dmadesc_meta = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.b43legacy_rxhdr_fw3 = type { i32 }
%struct.b43legacy_hwtxstatus = type { i64 }

@.str = private unnamed_addr constant [63 x i8] c"DMA RX buffer too small (len: %u, buffer: %u, nr-dropped: %d)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"DMA RX: setup_rx_descbuffer() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_dmaring*, i32*)* @dma_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_rx(%struct.b43legacy_dmaring* %0, i32* %1) #0 {
  %3 = alloca %struct.b43legacy_dmaring*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.b43legacy_dmadesc32*, align 8
  %6 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  %7 = alloca %struct.b43legacy_rxhdr_fw3*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.b43legacy_hwtxstatus*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring* %17, i32 %19, %struct.b43legacy_dmadesc_meta** %6)
  store %struct.b43legacy_dmadesc32* %20, %struct.b43legacy_dmadesc32** %5, align 8
  %21 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %22 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %23 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %26 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @sync_descbuffer_for_cpu(%struct.b43legacy_dmaring* %21, i32 %24, i64 %27)
  %29 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %30 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %29, i32 0, i32 1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %8, align 8
  %32 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %33 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %69

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.b43legacy_hwtxstatus*
  store %struct.b43legacy_hwtxstatus* %40, %struct.b43legacy_hwtxstatus** %12, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %50, %36
  %42 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %12, align 8
  %43 = getelementptr inbounds %struct.b43legacy_hwtxstatus, %struct.b43legacy_hwtxstatus* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 100
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = call i32 @udelay(i32 2)
  %54 = call i32 (...) @barrier()
  br label %41

55:                                               ; preds = %49, %41
  %56 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %57 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %12, align 8
  %60 = call i32 @b43legacy_handle_hwtxstatus(%struct.TYPE_3__* %58, %struct.b43legacy_hwtxstatus* %59)
  %61 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %62 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %63 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %66 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @sync_descbuffer_for_device(%struct.b43legacy_dmaring* %61, i32 %64, i64 %67)
  br label %216

69:                                               ; preds = %2
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.b43legacy_rxhdr_fw3*
  store %struct.b43legacy_rxhdr_fw3* %73, %struct.b43legacy_rxhdr_fw3** %7, align 8
  %74 = load %struct.b43legacy_rxhdr_fw3*, %struct.b43legacy_rxhdr_fw3** %7, align 8
  %75 = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, %struct.b43legacy_rxhdr_fw3* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le16_to_cpu(i32 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = call i32 @udelay(i32 2)
  %83 = call i32 (...) @barrier()
  %84 = load %struct.b43legacy_rxhdr_fw3*, %struct.b43legacy_rxhdr_fw3** %7, align 8
  %85 = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, %struct.b43legacy_rxhdr_fw3* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le16_to_cpu(i32 %86)
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %81
  %89 = load i64, i64* %9, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = icmp slt i32 %92, 5
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %81, label %97

97:                                               ; preds = %95
  %98 = load i64, i64* %9, align 8
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %105 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %106 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %109 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @sync_descbuffer_for_device(%struct.b43legacy_dmaring* %104, i32 %107, i64 %110)
  br label %215

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %69
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %116 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %165

122:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  %123 = load i64, i64* %9, align 8
  store i64 %123, i64* %16, align 8
  br label %124

124:                                              ; preds = %122, %152
  %125 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring* %125, i32 %127, %struct.b43legacy_dmadesc_meta** %6)
  store %struct.b43legacy_dmadesc32* %128, %struct.b43legacy_dmadesc32** %5, align 8
  %129 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %130 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %131 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %134 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @sync_descbuffer_for_device(%struct.b43legacy_dmaring* %129, i32 %132, i64 %135)
  %137 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @next_slot(%struct.b43legacy_dmaring* %137, i32 %139)
  %141 = load i32*, i32** %4, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  %144 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %145 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %16, align 8
  %148 = sub nsw i64 %147, %146
  store i64 %148, i64* %16, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp sle i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %124
  br label %153

152:                                              ; preds = %124
  br label %124

153:                                              ; preds = %151
  %154 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %155 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %154, i32 0, i32 3
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* %9, align 8
  %160 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %161 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @b43legacyerr(i32 %158, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %159, i64 %162, i32 %163)
  br label %215

165:                                              ; preds = %113
  %166 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %167 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %11, align 4
  %169 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %170 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %5, align 8
  %171 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %172 = load i32, i32* @GFP_ATOMIC, align 4
  %173 = call i32 @setup_rx_descbuffer(%struct.b43legacy_dmaring* %169, %struct.b43legacy_dmadesc32* %170, %struct.b43legacy_dmadesc_meta* %171, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %165
  %178 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %179 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %178, i32 0, i32 3
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @b43legacydbg(i32 %182, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %184 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %187 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @sync_descbuffer_for_device(%struct.b43legacy_dmaring* %184, i32 %185, i64 %188)
  br label %215

190:                                              ; preds = %165
  %191 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %194 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @unmap_descbuffer(%struct.b43legacy_dmaring* %191, i32 %192, i64 %195, i32 0)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %200 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %198, %201
  %203 = call i32 @skb_put(%struct.sk_buff* %197, i64 %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %206 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @skb_pull(%struct.sk_buff* %204, i64 %207)
  %209 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %210 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %209, i32 0, i32 3
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %213 = load %struct.b43legacy_rxhdr_fw3*, %struct.b43legacy_rxhdr_fw3** %7, align 8
  %214 = call i32 @b43legacy_rx(%struct.TYPE_3__* %211, %struct.sk_buff* %212, %struct.b43legacy_rxhdr_fw3* %213)
  br label %215

215:                                              ; preds = %190, %177, %153, %103
  br label %216

216:                                              ; preds = %215, %55
  ret void
}

declare dso_local %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring*, i32, %struct.b43legacy_dmadesc_meta**) #1

declare dso_local i32 @sync_descbuffer_for_cpu(%struct.b43legacy_dmaring*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @b43legacy_handle_hwtxstatus(%struct.TYPE_3__*, %struct.b43legacy_hwtxstatus*) #1

declare dso_local i32 @sync_descbuffer_for_device(%struct.b43legacy_dmaring*, i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @next_slot(%struct.b43legacy_dmaring*, i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @setup_rx_descbuffer(%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc_meta*, i32) #1

declare dso_local i32 @b43legacydbg(i32, i8*) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43legacy_dmaring*, i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @b43legacy_rx(%struct.TYPE_3__*, %struct.sk_buff*, %struct.b43legacy_rxhdr_fw3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
