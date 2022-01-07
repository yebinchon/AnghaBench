; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.__vxge_hw_fifo_txdl_priv = type { i32, i64 }
%struct.vxge_hw_fifo_txd = type { i32 }

@VXGE_HW_FIFO_TXD_GATHER_CODE_LAST = common dso_local global i32 0, align 4
@VXGE_HW_FIFO_TXD_LIST_OWN_ADAPTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_fifo_txdl_post(%struct.__vxge_hw_fifo* %0, i8* %1) #0 {
  %3 = alloca %struct.__vxge_hw_fifo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__vxge_hw_fifo_txdl_priv*, align 8
  %6 = alloca %struct.vxge_hw_fifo_txd*, align 8
  %7 = alloca %struct.vxge_hw_fifo_txd*, align 8
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo* %8, i8* %9)
  store %struct.__vxge_hw_fifo_txdl_priv* %10, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.vxge_hw_fifo_txd*
  store %struct.vxge_hw_fifo_txd* %12, %struct.vxge_hw_fifo_txd** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.vxge_hw_fifo_txd*
  %15 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %16 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %14, i64 %19
  store %struct.vxge_hw_fifo_txd* %20, %struct.vxge_hw_fifo_txd** %6, align 8
  %21 = load i32, i32* @VXGE_HW_FIFO_TXD_GATHER_CODE_LAST, align 4
  %22 = call i32 @VXGE_HW_FIFO_TXD_GATHER_CODE(i32 %21)
  %23 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %6, align 8
  %24 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @VXGE_HW_FIFO_TXD_LIST_OWN_ADAPTER, align 4
  %28 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %7, align 8
  %29 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %33 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %32, i32 0, i32 2
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @vxge_hw_channel_dtr_post(i32* %33, i8* %34)
  %36 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %37 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %38 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %42 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %46 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__vxge_hw_non_offload_db_post(%struct.__vxge_hw_fifo* %36, i32 %40, i32 %44, i32 %47)
  %49 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %50 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %56 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %63 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %69 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %67, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %2
  %76 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %77 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %83 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 %81, i64* %86, align 8
  br label %87

87:                                               ; preds = %75, %2
  ret void
}

declare dso_local %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo*, i8*) #1

declare dso_local i32 @VXGE_HW_FIFO_TXD_GATHER_CODE(i32) #1

declare dso_local i32 @vxge_hw_channel_dtr_post(i32*, i8*) #1

declare dso_local i32 @__vxge_hw_non_offload_db_post(%struct.__vxge_hw_fifo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
