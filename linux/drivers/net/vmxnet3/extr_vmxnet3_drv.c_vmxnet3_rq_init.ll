; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__** }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i8*, i32, i64 }
%struct.TYPE_6__ = type { i32, i8*, i32, i64, i64 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.vmxnet3_adapter = type { i32, i8* }

@VMXNET3_RX_BUF_SKB = common dso_local global i8* null, align 8
@VMXNET3_RX_BUF_PAGE = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i8* null, align 8
@VMXNET3_INIT_GEN = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_rq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rq_init(%struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmxnet3_rx_queue*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %4, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %68, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %8, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %7
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load i8*, i8** @VMXNET3_RX_BUF_SKB, align 8
  %25 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %27, i64 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i8* %24, i8** %33, align 8
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %36, i8** %45, align 8
  br label %67

46:                                               ; preds = %16
  %47 = load i8*, i8** @VMXNET3_RX_BUF_PAGE, align 8
  %48 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i8* %47, i8** %56, align 8
  %57 = load i8*, i8** @PAGE_SIZE, align 8
  %58 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %59 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %60, i64 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i8* %57, i8** %66, align 8
  br label %67

67:                                               ; preds = %46, %23
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %7

71:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %102, %71
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %73, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %72
  %82 = load i8*, i8** @VMXNET3_RX_BUF_PAGE, align 8
  %83 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %84 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i8* %82, i8** %91, align 8
  %92 = load i8*, i8** @PAGE_SIZE, align 8
  %93 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %95, i64 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i8* %92, i8** %101, align 8
  br label %102

102:                                              ; preds = %81
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %72

105:                                              ; preds = %72
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %152, %105
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %155

109:                                              ; preds = %106
  %110 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %111 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %118 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %125 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %133 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memset(i32 %131, i32 0, i32 %142)
  %144 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %145 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %146 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i8* %144, i8** %151, align 8
  br label %152

152:                                              ; preds = %109
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %106

155:                                              ; preds = %106
  %156 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %157 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %158 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %157, i32 0, i32 2
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  %164 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %165 = call i64 @vmxnet3_rq_alloc_rx_buf(%struct.vmxnet3_rx_queue* %156, i32 0, i32 %163, %struct.vmxnet3_adapter* %164)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %155
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %203

170:                                              ; preds = %155
  %171 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %172 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %173 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %172, i32 0, i32 2
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %180 = call i64 @vmxnet3_rq_alloc_rx_buf(%struct.vmxnet3_rx_queue* %171, i32 1, i32 %178, %struct.vmxnet3_adapter* %179)
  %181 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %182 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  %184 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %185 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %189 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = call i32 @memset(i32 %187, i32 0, i32 %194)
  %196 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %197 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %198 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  store i8* %196, i8** %199, align 8
  %200 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %201 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i32* null, i32** %202, align 8
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %170, %167
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @vmxnet3_rq_alloc_rx_buf(%struct.vmxnet3_rx_queue*, i32, i32, %struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
