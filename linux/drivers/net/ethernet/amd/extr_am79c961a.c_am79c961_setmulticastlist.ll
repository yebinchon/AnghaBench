; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_setmulticastlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_setmulticastlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { i32 }

@CSR0 = common dso_local global i64 0, align 8
@CSR0_STOP = common dso_local global i32 0, align 4
@CTRL1 = common dso_local global i64 0, align 8
@CTRL1_SPND = common dso_local global i32 0, align 4
@LADRL = common dso_local global i64 0, align 8
@MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @am79c961_setmulticastlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79c961_setmulticastlist(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dev_priv* %10, %struct.dev_priv** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %13 = call i32 @am79c961_get_rx_mode(%struct.net_device* %11, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @CSR0, align 8
  %22 = call i32 @read_rreg(i32 %20, i64 %21)
  %23 = load i32, i32* @CSR0_STOP, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @CTRL1, align 8
  %32 = load i32, i32* @CTRL1_SPND, align 4
  %33 = call i32 @write_rreg(i32 %30, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %43, %27
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @CTRL1, align 8
  %39 = call i32 @read_rreg(i32 %37, i64 %38)
  %40 = load i32, i32* @CTRL1_SPND, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %45 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = call i32 (...) @nop()
  %49 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %50 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %1
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @LADRL, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @write_rreg(i32 %63, i64 %67, i32 %71)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @MODE, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @write_rreg(i32 %79, i64 %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %76
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* @CTRL1, align 8
  %90 = call i32 @write_rreg(i32 %88, i64 %89, i32 0)
  br label %91

91:                                               ; preds = %85, %76
  %92 = load %struct.dev_priv*, %struct.dev_priv** %3, align 8
  %93 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @am79c961_get_rx_mode(%struct.net_device*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_rreg(i32, i64) #1

declare dso_local i32 @write_rreg(i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
