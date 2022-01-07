; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_clear_if_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_clear_if_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_can_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i32, i32, i32 }

@PCH_RX_OBJ_START = common dso_local global i32 0, align 4
@PCH_TX_OBJ_END = common dso_local global i32 0, align 4
@PCH_CMASK_RX_TX_SET = common dso_local global i32 0, align 4
@PCH_CMASK_RDWR = common dso_local global i32 0, align 4
@PCH_CMASK_MASK = common dso_local global i32 0, align 4
@PCH_CMASK_ARB = common dso_local global i32 0, align 4
@PCH_CMASK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_can_priv*)* @pch_can_clear_if_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_clear_if_buffers(%struct.pch_can_priv* %0) #0 {
  %2 = alloca %struct.pch_can_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.pch_can_priv* %0, %struct.pch_can_priv** %2, align 8
  %4 = load i32, i32* @PCH_RX_OBJ_START, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %123, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PCH_TX_OBJ_END, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %126

9:                                                ; preds = %5
  %10 = load i32, i32* @PCH_CMASK_RX_TX_SET, align 4
  %11 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %12 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @iowrite32(i32 %10, i32* %17)
  %19 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %20 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  %26 = call i32 @iowrite32(i32 65535, i32* %25)
  %27 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %28 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  %34 = call i32 @iowrite32(i32 65535, i32* %33)
  %35 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %36 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  %42 = call i32 @iowrite32(i32 0, i32* %41)
  %43 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %44 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = call i32 @iowrite32(i32 0, i32* %49)
  %51 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %52 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = call i32 @iowrite32(i32 0, i32* %57)
  %59 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %60 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = call i32 @iowrite32(i32 0, i32* %67)
  %69 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %70 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = call i32 @iowrite32(i32 0, i32* %77)
  %79 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %80 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = call i32 @iowrite32(i32 0, i32* %87)
  %89 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %90 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = call i32 @iowrite32(i32 0, i32* %97)
  %99 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %100 = load i32, i32* @PCH_CMASK_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @PCH_CMASK_ARB, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %107 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = call i32 @iowrite32(i32 %105, i32* %112)
  %114 = load %struct.pch_can_priv*, %struct.pch_can_priv** %2, align 8
  %115 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @pch_can_rw_msg_obj(i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %9
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %5

126:                                              ; preds = %5
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
