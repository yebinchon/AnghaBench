; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@MVPP22 = common dso_local global i64 0, align 8
@MVPP22_BM_ADDR_HIGH_RLS_REG = common dso_local global i32 0, align 4
@MVPP2_BM_VIRT_RLS_REG = common dso_local global i32 0, align 4
@MVPP22_BM_ADDR_HIGH_PHYS_RLS_MASK = common dso_local global i32 0, align 4
@MVPP22_BM_ADDR_HIGH_VIRT_RLS_MASK = common dso_local global i32 0, align 4
@MVPP22_BM_ADDR_HIGH_VIRT_RLS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32, i32, i32)* @mvpp2_bm_pool_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_bm_pool_put(%struct.mvpp2_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %13 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 (...) @get_cpu()
  %16 = call i32 @mvpp2_cpu_to_thread(%struct.TYPE_3__* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %19 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %17, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %26 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %24, %4
  %34 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %35 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MVPP22, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  %42 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %43 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MVPP22_BM_ADDR_HIGH_RLS_REG, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @mvpp2_thread_write_relaxed(%struct.TYPE_3__* %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %51 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MVPP2_BM_VIRT_RLS_REG, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @mvpp2_thread_write_relaxed(%struct.TYPE_3__* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %58 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @MVPP2_BM_PHY_RLS_REG(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mvpp2_thread_write_relaxed(%struct.TYPE_3__* %59, i32 %60, i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %67 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = call i64 @test_bit(i32 %65, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %49
  %73 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %74 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %72, %49
  %82 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @mvpp2_cpu_to_thread(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mvpp2_thread_write_relaxed(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @MVPP2_BM_PHY_RLS_REG(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
