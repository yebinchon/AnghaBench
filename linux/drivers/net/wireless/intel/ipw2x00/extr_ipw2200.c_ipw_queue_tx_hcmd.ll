; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_queue_tx_hcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_queue_tx_hcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.clx2_tx_queue }
%struct.clx2_tx_queue = type { i32**, %struct.tfd_frame*, %struct.clx2_queue }
%struct.tfd_frame = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.clx2_queue = type { i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"No space for Tx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TX_HOST_COMMAND_TYPE = common dso_local global i32 0, align 4
@TFD_NEED_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32, i8*, i32, i32)* @ipw_queue_tx_hcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_queue_tx_hcmd(%struct.ipw_priv* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.clx2_tx_queue*, align 8
  %13 = alloca %struct.clx2_queue*, align 8
  %14 = alloca %struct.tfd_frame*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 1
  store %struct.clx2_tx_queue* %16, %struct.clx2_tx_queue** %12, align 8
  %17 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %12, align 8
  %18 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %17, i32 0, i32 2
  store %struct.clx2_queue* %18, %struct.clx2_queue** %13, align 8
  %19 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %20 = call i32 @ipw_tx_queue_space(%struct.clx2_queue* %19)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 2
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %96

30:                                               ; preds = %5
  %31 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %12, align 8
  %32 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %31, i32 0, i32 1
  %33 = load %struct.tfd_frame*, %struct.tfd_frame** %32, align 8
  %34 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %35 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %33, i64 %36
  store %struct.tfd_frame* %37, %struct.tfd_frame** %14, align 8
  %38 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %12, align 8
  %39 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %42 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  store i32* null, i32** %44, align 8
  %45 = load %struct.tfd_frame*, %struct.tfd_frame** %14, align 8
  %46 = call i32 @memset(%struct.tfd_frame* %45, i32 0, i32 20)
  %47 = load i32, i32* @TX_HOST_COMMAND_TYPE, align 4
  %48 = load %struct.tfd_frame*, %struct.tfd_frame** %14, align 8
  %49 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @TFD_NEED_IRQ_MASK, align 4
  %52 = load %struct.tfd_frame*, %struct.tfd_frame** %14, align 8
  %53 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.tfd_frame*, %struct.tfd_frame** %14, align 8
  %61 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.tfd_frame*, %struct.tfd_frame** %14, align 8
  %66 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.tfd_frame*, %struct.tfd_frame** %14, align 8
  %70 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @memcpy(i32 %73, i8* %74, i32 %75)
  %77 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %78 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %81 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ipw_queue_inc_wrap(i64 %79, i32 %82)
  %84 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %85 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %87 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %88 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.clx2_queue*, %struct.clx2_queue** %13, align 8
  %91 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ipw_write32(%struct.ipw_priv* %86, i32 %89, i64 %92)
  %94 = load %struct.ipw_priv*, %struct.ipw_priv** %7, align 8
  %95 = call i32 @_ipw_read32(%struct.ipw_priv* %94, i32 144)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %30, %26
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @ipw_tx_queue_space(%struct.clx2_queue*) #1

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @memset(%struct.tfd_frame*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @ipw_queue_inc_wrap(i64, i32) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i64) #1

declare dso_local i32 @_ipw_read32(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
