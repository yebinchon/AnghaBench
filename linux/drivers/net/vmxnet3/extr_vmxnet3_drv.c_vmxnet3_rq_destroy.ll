; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_10__**, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_10__*, i32 }
%struct.vmxnet3_adapter = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_rq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_rq_destroy(%struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_rx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %14, i64 %16
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %22, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %21
  %33 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  br label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %21

51:                                               ; preds = %21
  br label %52

52:                                               ; preds = %51, %11
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %8

56:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %110, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  %61 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %62 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %109

70:                                               ; preds = %60
  %71 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %72 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %76 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %86 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dma_free_coherent(i32* %74, i64 %84, %struct.TYPE_10__* %92, i32 %100)
  %102 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %103 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %108, align 8
  br label %109

109:                                              ; preds = %70, %60
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %57

113:                                              ; preds = %57
  %114 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %115 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %148

119:                                              ; preds = %113
  %120 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %125 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %132 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = mul i64 %130, %134
  %136 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %137 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %141 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dma_free_coherent(i32* %123, i64 %135, %struct.TYPE_10__* %139, i32 %143)
  %145 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %146 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %147, align 8
  br label %148

148:                                              ; preds = %119, %113
  %149 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %150 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = icmp ne %struct.TYPE_10__* %152, null
  br i1 %153, label %154, label %177

154:                                              ; preds = %148
  %155 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %156 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %160 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %166 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %170 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dma_free_coherent(i32* %158, i64 %164, %struct.TYPE_10__* %168, i32 %172)
  %174 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %175 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %176, align 8
  br label %177

177:                                              ; preds = %154, %148
  %178 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %179 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %178, i32 0, i32 0
  %180 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %180, i64 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = icmp ne %struct.TYPE_10__* %182, null
  br i1 %183, label %184, label %222

184:                                              ; preds = %177
  %185 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %186 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %185, i32 0, i32 2
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %192 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %191, i32 0, i32 2
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %190, %196
  %198 = sext i32 %197 to i64
  %199 = mul i64 4, %198
  store i64 %199, i64* %7, align 8
  %200 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %201 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %200, i32 0, i32 0
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i64, i64* %7, align 8
  %205 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %206 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %205, i32 0, i32 0
  %207 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %207, i64 0
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %211 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @dma_free_coherent(i32* %203, i64 %204, %struct.TYPE_10__* %209, i32 %212)
  %214 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %215 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %214, i32 0, i32 0
  %216 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %216, i64 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %217, align 8
  %218 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %3, align 8
  %219 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %218, i32 0, i32 0
  %220 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %220, i64 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %221, align 8
  br label %222

222:                                              ; preds = %184, %177
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
