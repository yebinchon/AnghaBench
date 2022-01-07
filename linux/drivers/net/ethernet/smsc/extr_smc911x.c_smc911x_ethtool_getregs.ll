; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc911x.c_smc911x_ethtool_getregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc911x.c_smc911x_ethtool_getregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.smc911x_local = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ID_REV = common dso_local global i32 0, align 4
@E2P_CMD = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @smc911x_ethtool_getregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc911x_ethtool_getregs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smc911x_local*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.smc911x_local* @netdev_priv(%struct.net_device* %13)
  store %struct.smc911x_local* %14, %struct.smc911x_local** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %12, align 8
  %17 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %18 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ID_REV, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %36, %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @E2P_CMD, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @SMC_inl(%struct.smc911x_local* %28, i32 %29)
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %10, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* @MAC_CR, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %64, %39
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @WUCSR, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %47 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %46, i32 0, i32 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @SMC_GET_MAC_CSR(%struct.smc911x_local* %50, i32 %51, i32 %52)
  %54 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %55 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %41

67:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %95, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp sle i32 %69, 31
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %73 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %72, i32 0, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %79 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @SMC_GET_MII(%struct.smc911x_local* %76, i32 %77, i32 %81, i32 %82)
  %84 = load %struct.smc911x_local*, %struct.smc911x_local** %7, align 8
  %85 = getelementptr inbounds %struct.smc911x_local, %struct.smc911x_local* %84, i32 0, i32 0
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 65535
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %71
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %68

98:                                               ; preds = %68
  ret void
}

declare dso_local %struct.smc911x_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMC_inl(%struct.smc911x_local*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SMC_GET_MAC_CSR(%struct.smc911x_local*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @SMC_GET_MII(%struct.smc911x_local*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
