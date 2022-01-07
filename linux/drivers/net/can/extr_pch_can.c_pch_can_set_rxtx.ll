; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_set_rxtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_set_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_can_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PCH_IF_MCONT_TXIE = common dso_local global i32 0, align 4
@PCH_IF_MCONT_RXIE = common dso_local global i32 0, align 4
@PCH_CMASK_RX_TX_GET = common dso_local global i32 0, align 4
@PCH_CMASK_RDWR = common dso_local global i32 0, align 4
@PCH_CMASK_ARB = common dso_local global i32 0, align 4
@PCH_CMASK_CTRL = common dso_local global i32 0, align 4
@PCH_ID_MSGVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_can_priv*, i32, i32, i32)* @pch_can_set_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_can_set_rxtx(%struct.pch_can_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pch_can_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pch_can_priv* %0, %struct.pch_can_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @PCH_IF_MCONT_TXIE, align 4
  store i32 %13, i32* %9, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @PCH_IF_MCONT_RXIE, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @PCH_CMASK_RX_TX_GET, align 4
  %18 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %19 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = call i32 @iowrite32(i32 %17, i32* %26)
  %28 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %29 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @pch_can_rw_msg_obj(i32* %36, i32 %37)
  %39 = load i32, i32* @PCH_CMASK_RDWR, align 4
  %40 = load i32, i32* @PCH_CMASK_ARB, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PCH_CMASK_CTRL, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %45 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = call i32 @iowrite32(i32 %43, i32* %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %16
  %57 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %58 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @pch_can_bit_set(i32* %65, i32 %66)
  %68 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %69 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* @PCH_ID_MSGVAL, align 4
  %78 = call i32 @pch_can_bit_set(i32* %76, i32 %77)
  br label %102

79:                                               ; preds = %16
  %80 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %81 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @pch_can_bit_clear(i32* %88, i32 %89)
  %91 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %92 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* @PCH_ID_MSGVAL, align 4
  %101 = call i32 @pch_can_bit_clear(i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %79, %56
  %103 = load %struct.pch_can_priv*, %struct.pch_can_priv** %5, align 8
  %104 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @pch_can_rw_msg_obj(i32* %111, i32 %112)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_can_rw_msg_obj(i32*, i32) #1

declare dso_local i32 @pch_can_bit_set(i32*, i32) #1

declare dso_local i32 @pch_can_bit_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
