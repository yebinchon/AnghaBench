; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i8*, i64, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__* }
%struct.vmxnet3_adapter = type { i32 }

@VMXNET3_INIT_GEN = common dso_local global i8* null, align 8
@VMXNET3_MAP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_tq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_tq_init(%struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_tx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  %6 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 %16)
  %18 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %25 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = call i32 @memset(%struct.TYPE_8__* %31, i32 0, i32 %39)
  %41 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %42 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(%struct.TYPE_8__* %44, i32 0, i32 %51)
  %53 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %54 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %57 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %58 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %61 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %64 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.TYPE_8__* %62, i32 0, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %87, %2
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %74 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load i32, i32* @VMXNET3_MAP_NONE, align 4
  %80 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %81 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 4
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %71

90:                                               ; preds = %71
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
