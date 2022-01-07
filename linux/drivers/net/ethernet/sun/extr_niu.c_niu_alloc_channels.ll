; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, i32, %struct.tx_ring_info*, i32, %struct.rx_ring_info*, %struct.niu_parent* }
%struct.tx_ring_info = type { i32, %struct.niu* }
%struct.rx_ring_info = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.niu* }
%struct.niu_parent = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RBR_REFILL_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_alloc_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_alloc_channels(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_ring_info*, align 8
  %10 = alloca %struct.tx_ring_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rx_ring_info*, align 8
  %15 = alloca %struct.tx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %16 = load %struct.niu*, %struct.niu** %3, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 6
  %18 = load %struct.niu_parent*, %struct.niu_parent** %17, align 8
  store %struct.niu_parent* %18, %struct.niu_parent** %4, align 8
  %19 = load %struct.niu*, %struct.niu** %3, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %45, %1
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %28 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %37 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %50 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %57 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kcalloc(i32 %63, i32 72, i32 %64)
  %66 = bitcast i8* %65 to %struct.rx_ring_info*
  store %struct.rx_ring_info* %66, %struct.rx_ring_info** %9, align 8
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %70 = icmp ne %struct.rx_ring_info* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %48
  br label %220

72:                                               ; preds = %48
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.niu*, %struct.niu** %3, align 8
  %75 = getelementptr inbounds %struct.niu, %struct.niu* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = call i32 (...) @smp_wmb()
  %77 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %78 = load %struct.niu*, %struct.niu** %3, align 8
  %79 = getelementptr inbounds %struct.niu, %struct.niu* %78, i32 0, i32 5
  store %struct.rx_ring_info* %77, %struct.rx_ring_info** %79, align 8
  %80 = load %struct.niu*, %struct.niu** %3, align 8
  %81 = getelementptr inbounds %struct.niu, %struct.niu* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @netif_set_real_num_rx_queues(i32 %82, i32 %83)
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %162, %72
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.niu*, %struct.niu** %3, align 8
  %88 = getelementptr inbounds %struct.niu, %struct.niu* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %165

91:                                               ; preds = %85
  %92 = load %struct.niu*, %struct.niu** %3, align 8
  %93 = getelementptr inbounds %struct.niu, %struct.niu* %92, i32 0, i32 5
  %94 = load %struct.rx_ring_info*, %struct.rx_ring_info** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %94, i64 %96
  store %struct.rx_ring_info* %97, %struct.rx_ring_info** %14, align 8
  %98 = load %struct.niu*, %struct.niu** %3, align 8
  %99 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %100 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %99, i32 0, i32 10
  store %struct.niu* %98, %struct.niu** %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %101, %102
  %104 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %105 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.niu*, %struct.niu** %3, align 8
  %107 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %108 = call i32 @niu_alloc_rx_ring_info(%struct.niu* %106, %struct.rx_ring_info* %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %91
  br label %220

112:                                              ; preds = %91
  %113 = load %struct.niu*, %struct.niu** %3, align 8
  %114 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %115 = call i32 @niu_size_rbr(%struct.niu* %113, %struct.rx_ring_info* %114)
  %116 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %117 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %116, i32 0, i32 1
  store i32 64, i32* %117, align 4
  %118 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %119 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, 64
  %122 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %123 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %122, i32 0, i32 9
  store i64 %121, i64* %123, align 8
  %124 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %125 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %124, i32 0, i32 2
  store i32 64, i32* %125, align 8
  %126 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %127 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, 64
  %130 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %131 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %130, i32 0, i32 8
  store i64 %129, i64* %131, align 8
  %132 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %133 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %132, i32 0, i32 3
  store i32 16, i32* %133, align 4
  %134 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %135 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %134, i32 0, i32 4
  store i32 8, i32* %135, align 8
  %136 = load i64, i64* @RBR_REFILL_MIN, align 8
  %137 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %138 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %137, i32 0, i32 5
  store i64 %136, i64* %138, align 8
  %139 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %140 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %143 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %112
  %147 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %148 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %151 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %150, i32 0, i32 5
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %146, %112
  %153 = load %struct.niu*, %struct.niu** %3, align 8
  %154 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i32 @niu_rbr_fill(%struct.niu* %153, %struct.rx_ring_info* %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %2, align 4
  br label %224

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %85

165:                                              ; preds = %85
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i8* @kcalloc(i32 %166, i32 16, i32 %167)
  %169 = bitcast i8* %168 to %struct.tx_ring_info*
  store %struct.tx_ring_info* %169, %struct.tx_ring_info** %10, align 8
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %13, align 4
  %172 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %173 = icmp ne %struct.tx_ring_info* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %165
  br label %220

175:                                              ; preds = %165
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.niu*, %struct.niu** %3, align 8
  %178 = getelementptr inbounds %struct.niu, %struct.niu* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = call i32 (...) @smp_wmb()
  %180 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %181 = load %struct.niu*, %struct.niu** %3, align 8
  %182 = getelementptr inbounds %struct.niu, %struct.niu* %181, i32 0, i32 3
  store %struct.tx_ring_info* %180, %struct.tx_ring_info** %182, align 8
  %183 = load %struct.niu*, %struct.niu** %3, align 8
  %184 = getelementptr inbounds %struct.niu, %struct.niu* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @netif_set_real_num_tx_queues(i32 %185, i32 %186)
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %216, %175
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.niu*, %struct.niu** %3, align 8
  %191 = getelementptr inbounds %struct.niu, %struct.niu* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %188
  %195 = load %struct.niu*, %struct.niu** %3, align 8
  %196 = getelementptr inbounds %struct.niu, %struct.niu* %195, i32 0, i32 3
  %197 = load %struct.tx_ring_info*, %struct.tx_ring_info** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %197, i64 %199
  store %struct.tx_ring_info* %200, %struct.tx_ring_info** %15, align 8
  %201 = load %struct.niu*, %struct.niu** %3, align 8
  %202 = load %struct.tx_ring_info*, %struct.tx_ring_info** %15, align 8
  %203 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %202, i32 0, i32 1
  store %struct.niu* %201, %struct.niu** %203, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %204, %205
  %207 = load %struct.tx_ring_info*, %struct.tx_ring_info** %15, align 8
  %208 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.niu*, %struct.niu** %3, align 8
  %210 = load %struct.tx_ring_info*, %struct.tx_ring_info** %15, align 8
  %211 = call i32 @niu_alloc_tx_ring_info(%struct.niu* %209, %struct.tx_ring_info* %210)
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %194
  br label %220

215:                                              ; preds = %194
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  br label %188

219:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %224

220:                                              ; preds = %214, %174, %111, %71
  %221 = load %struct.niu*, %struct.niu** %3, align 8
  %222 = call i32 @niu_free_channels(%struct.niu* %221)
  %223 = load i32, i32* %13, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %220, %219, %159
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netif_set_real_num_rx_queues(i32, i32) #1

declare dso_local i32 @niu_alloc_rx_ring_info(%struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i32 @niu_size_rbr(%struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i32 @niu_rbr_fill(%struct.niu*, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @netif_set_real_num_tx_queues(i32, i32) #1

declare dso_local i32 @niu_alloc_tx_ring_info(%struct.niu*, %struct.tx_ring_info*) #1

declare dso_local i32 @niu_free_channels(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
