; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_buffer_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_buffer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.__vxge_hw_fifo_txdl_priv = type { i32, i64 }
%struct.vxge_hw_fifo_txd = type { i32, i64, i32 }

@VXGE_HW_FIFO_TXD_GATHER_CODE_FIRST = common dso_local global i32 0, align 4
@VXGE_HW_FIFO_TXD_GATHER_CODE_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_fifo_txdl_buffer_set(%struct.__vxge_hw_fifo* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.__vxge_hw_fifo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.__vxge_hw_fifo_txdl_priv*, align 8
  %12 = alloca %struct.vxge_hw_fifo_txd*, align 8
  %13 = alloca %struct.vxge_hw_fifo_txd*, align 8
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo* %14, i8* %15)
  store %struct.__vxge_hw_fifo_txdl_priv* %16, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.vxge_hw_fifo_txd*
  %19 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %20 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %18, i64 %22
  store %struct.vxge_hw_fifo_txd* %23, %struct.vxge_hw_fifo_txd** %12, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %12, align 8
  %28 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %12, align 8
  %30 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %73

31:                                               ; preds = %5
  %32 = load i32, i32* @VXGE_HW_FIFO_TXD_GATHER_CODE_FIRST, align 4
  %33 = call i32 @VXGE_HW_FIFO_TXD_GATHER_CODE(i32 %32)
  %34 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %12, align 8
  %35 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %6, align 8
  %39 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %12, align 8
  %42 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %6, align 8
  %46 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @VXGE_HW_FIFO_TXD_INT_NUMBER(i32 %47)
  %49 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %12, align 8
  %50 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %54 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %31
  %58 = load i8*, i8** %7, align 8
  %59 = bitcast i8* %58 to %struct.vxge_hw_fifo_txd*
  %60 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %61 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %59, i64 %64
  store %struct.vxge_hw_fifo_txd* %65, %struct.vxge_hw_fifo_txd** %13, align 8
  %66 = load i32, i32* @VXGE_HW_FIFO_TXD_GATHER_CODE_LAST, align 4
  %67 = call i32 @VXGE_HW_FIFO_TXD_GATHER_CODE(i32 %66)
  %68 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %13, align 8
  %69 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %57, %31
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %76 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @vxge_assert(i32 %79)
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %12, align 8
  %83 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @VXGE_HW_FIFO_TXD_BUFFER_SIZE(i64 %84)
  %86 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %12, align 8
  %87 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %6, align 8
  %91 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %11, align 8
  %97 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  ret void
}

declare dso_local %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo*, i8*) #1

declare dso_local i32 @VXGE_HW_FIFO_TXD_GATHER_CODE(i32) #1

declare dso_local i32 @VXGE_HW_FIFO_TXD_INT_NUMBER(i32) #1

declare dso_local i32 @vxge_assert(i32) #1

declare dso_local i32 @VXGE_HW_FIFO_TXD_BUFFER_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
