; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_int_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_int_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_can_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@PCH_RX_OBJ_START = common dso_local global i64 0, align 8
@PCH_RX_OBJ_END = common dso_local global i64 0, align 8
@PCH_CMASK_RDWR = common dso_local global i32 0, align 4
@PCH_CMASK_CTRL = common dso_local global i32 0, align 4
@PCH_CMASK_ARB = common dso_local global i32 0, align 4
@PCH_ID2_DIR = common dso_local global i32 0, align 4
@PCH_IF_MCONT_NEWDAT = common dso_local global i32 0, align 4
@PCH_IF_MCONT_INTPND = common dso_local global i32 0, align 4
@PCH_TX_OBJ_START = common dso_local global i64 0, align 8
@PCH_TX_OBJ_END = common dso_local global i64 0, align 8
@PCH_IF_MCONT_TXRQXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_can_priv*, i64)* @pch_can_int_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_int_clr(%struct.pch_can_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.pch_can_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.pch_can_priv* %0, %struct.pch_can_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PCH_RX_OBJ_START, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PCH_RX_OBJ_END, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %14 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PCH_CMASK_ARB, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %19 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = call i32 @iowrite32(i32 %17, i32* %24)
  %26 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %27 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* @PCH_ID2_DIR, align 4
  %34 = call i32 @pch_can_bit_clear(i32* %32, i32 %33)
  %35 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %36 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* @PCH_IF_MCONT_NEWDAT, align 4
  %43 = load i32, i32* @PCH_IF_MCONT_INTPND, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @pch_can_bit_clear(i32* %41, i32 %44)
  %46 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %47 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @pch_can_rw_msg_obj(i32* %52, i64 %53)
  br label %118

55:                                               ; preds = %8, %2
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @PCH_TX_OBJ_START, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %55
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @PCH_TX_OBJ_END, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %117

63:                                               ; preds = %59
  %64 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %65 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PCH_CMASK_ARB, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %70 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = call i32 @iowrite32(i32 %68, i32* %75)
  %77 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %78 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* @PCH_ID2_DIR, align 4
  %85 = or i32 %84, 8188
  %86 = call i32 @pch_can_bit_set(i32* %83, i32 %85)
  %87 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %88 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = call i32 @iowrite32(i32 0, i32* %93)
  %95 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %96 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* @PCH_IF_MCONT_NEWDAT, align 4
  %103 = load i32, i32* @PCH_IF_MCONT_INTPND, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @PCH_IF_MCONT_TXRQXT, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @pch_can_bit_clear(i32* %101, i32 %106)
  %108 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %109 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @pch_can_rw_msg_obj(i32* %114, i64 %115)
  br label %117

117:                                              ; preds = %63, %59, %55
  br label %118

118:                                              ; preds = %117, %12
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_bit_clear(i32*, i32) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i64) #1

declare dso_local i32 @pch_can_bit_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
