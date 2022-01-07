; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_fifo_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_fifo_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_can_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PCH_FIFO_THRESH = common dso_local global i32 0, align 4
@PCH_CMASK_RDWR = common dso_local global i32 0, align 4
@PCH_CMASK_CTRL = common dso_local global i32 0, align 4
@PCH_CMASK_ARB = common dso_local global i32 0, align 4
@PCH_ID2_DIR = common dso_local global i32 0, align 4
@PCH_IF_MCONT_INTPND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_can_priv*, i32)* @pch_fifo_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_fifo_thresh(%struct.pch_can_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_can_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pch_can_priv* %0, %struct.pch_can_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PCH_FIFO_THRESH, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %11 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PCH_CMASK_ARB, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %16 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = call i32 @iowrite32(i32 %14, i32* %21)
  %23 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %24 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* @PCH_ID2_DIR, align 4
  %31 = call i32 @pch_can_bit_clear(i32* %29, i32 %30)
  %32 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %33 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* @PCH_IF_MCONT_INTPND, align 4
  %40 = call i32 @pch_can_bit_clear(i32* %38, i32 %39)
  %41 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %42 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pch_can_rw_msg_obj(i32* %47, i32 %48)
  br label %78

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @PCH_FIFO_THRESH, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pch_can_int_clr(%struct.pch_can_priv* %55, i32 %56)
  br label %77

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PCH_FIFO_THRESH, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %72, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @PCH_FIFO_THRESH, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.pch_can_priv*, %struct.pch_can_priv** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @pch_can_int_clr(%struct.pch_can_priv* %68, i32 %70)
  br label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %63

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %9
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_bit_clear(i32*, i32) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i32) #1

declare dso_local i32 @pch_can_int_clr(%struct.pch_can_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
