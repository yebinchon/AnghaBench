; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_stop_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 (%struct.cnic_dev.0*)*, i32*, %struct.TYPE_4__*, i32 (%struct.cnic_dev.1*)*, %struct.TYPE_3__* }
%struct.cnic_dev.0 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.cnic_dev.1 = type opaque
%struct.TYPE_3__ = type { i32 }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_HANDLES_IRQ = common dso_local global i32 0, align 4
@CNIC_ULP_L4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_stop_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %5 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %1
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %12 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %11, i32 0, i32 2
  %13 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  store %struct.cnic_local* %13, %struct.cnic_local** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %10
  %15 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %21 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 15
  br label %29

29:                                               ; preds = %26, %19, %14
  %30 = phi i1 [ false, %19 ], [ false, %14 ], [ %28, %26 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = call i32 @msleep(i32 100)
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %29
  %36 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %37 = call i32 @cnic_shutdown_rings(%struct.cnic_dev* %36)
  %38 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 3
  %40 = load i32 (%struct.cnic_dev.1*)*, i32 (%struct.cnic_dev.1*)** %39, align 8
  %41 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %42 = bitcast %struct.cnic_dev* %41 to %struct.cnic_dev.1*
  %43 = call i32 %40(%struct.cnic_dev.1* %42)
  %44 = load i32, i32* @CNIC_DRV_STATE_HANDLES_IRQ, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %53 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %54 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %53, i32 0, i32 1
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %57 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @CNIC_ULP_L4, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @RCU_INIT_POINTER(i32 %61, i32* null)
  %63 = call i32 (...) @synchronize_rcu()
  %64 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %65 = call i32 @cnic_cm_shutdown(%struct.cnic_dev* %64)
  %66 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %67 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %66, i32 0, i32 0
  %68 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %67, align 8
  %69 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %70 = bitcast %struct.cnic_dev* %69 to %struct.cnic_dev.0*
  %71 = call i32 %68(%struct.cnic_dev.0* %70)
  %72 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %73 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pci_dev_put(i32 %74)
  br label %76

76:                                               ; preds = %35, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cnic_shutdown_rings(%struct.cnic_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @cnic_cm_shutdown(%struct.cnic_dev*) #1

declare dso_local i32 @pci_dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
