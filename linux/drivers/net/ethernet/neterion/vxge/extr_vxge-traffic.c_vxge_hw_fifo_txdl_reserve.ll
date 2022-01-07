; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo = type { %struct.TYPE_2__*, %struct.__vxge_hw_channel }
%struct.TYPE_2__ = type { i32 }
%struct.__vxge_hw_channel = type { i32 }
%struct.vxge_hw_fifo_txd = type { i64, i64, i64 }
%struct.__vxge_hw_fifo_txdl_priv = type { i32, i32*, i64, i64, i32, i32, i64 }

@VXGE_HW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_fifo_txdl_reserve(%struct.__vxge_hw_fifo* %0, i8** %1, i8** %2) #0 {
  %4 = alloca %struct.__vxge_hw_fifo*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.__vxge_hw_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vxge_hw_fifo_txd*, align 8
  %11 = alloca %struct.__vxge_hw_fifo_txdl_priv*, align 8
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %12 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %4, align 8
  %13 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %12, i32 0, i32 1
  store %struct.__vxge_hw_channel* %13, %struct.__vxge_hw_channel** %7, align 8
  %14 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %7, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @vxge_hw_channel_dtr_alloc(%struct.__vxge_hw_channel* %14, i8** %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @VXGE_HW_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %3
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.vxge_hw_fifo_txd*
  store %struct.vxge_hw_fifo_txd* %23, %struct.vxge_hw_fifo_txd** %10, align 8
  %24 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %4, align 8
  %25 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %10, align 8
  %26 = call %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo* %24, %struct.vxge_hw_fifo_txd* %25)
  store %struct.__vxge_hw_fifo_txdl_priv* %26, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %27 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %28 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %30 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %33 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %35 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %37 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %4, align 8
  %39 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %44 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %46 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %10, align 8
  %48 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8**, i8*** %6, align 8
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %71, %20
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %4, align 8
  %55 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to %struct.vxge_hw_fifo_txd*
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %63, i64 %65
  store %struct.vxge_hw_fifo_txd* %66, %struct.vxge_hw_fifo_txd** %10, align 8
  %67 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %10, align 8
  %68 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %10, align 8
  %70 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %52

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74, %3
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @vxge_hw_channel_dtr_alloc(%struct.__vxge_hw_channel*, i8**) #1

declare dso_local %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo*, %struct.vxge_hw_fifo_txd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
