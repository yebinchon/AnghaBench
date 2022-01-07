; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32 }

@JME_SMI = common dso_local global i32 0, align 4
@SMI_OP_WRITE = common dso_local global i32 0, align 4
@SMI_OP_REQ = common dso_local global i32 0, align 4
@SMI_DATA_SHIFT = common dso_local global i32 0, align 4
@SMI_DATA_MASK = common dso_local global i32 0, align 4
@JME_PHY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"phy(%d) write timeout : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @jme_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jme_adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.jme_adapter* %12, %struct.jme_adapter** %9, align 8
  %13 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %14 = load i32, i32* @JME_SMI, align 4
  %15 = load i32, i32* @SMI_OP_WRITE, align 4
  %16 = load i32, i32* @SMI_OP_REQ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SMI_DATA_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @SMI_DATA_MASK, align 4
  %22 = and i32 %20, %21
  %23 = or i32 %17, %22
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @smi_phy_addr(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @smi_reg_addr(i32 %27)
  %29 = or i32 %26, %28
  %30 = call i32 @jwrite32(%struct.jme_adapter* %13, i32 %14, i32 %29)
  %31 = call i32 (...) @wmb()
  %32 = load i32, i32* @JME_PHY_TIMEOUT, align 4
  %33 = mul nsw i32 %32, 50
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %47, %4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = call i32 @udelay(i32 20)
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %9, align 8
  %40 = load i32, i32* @JME_SMI, align 4
  %41 = call i32 @jread32(%struct.jme_adapter* %39, i32 %40)
  %42 = load i32, i32* @SMI_OP_REQ, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %50

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  br label %34

50:                                               ; preds = %45, %34
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  ret void
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @smi_phy_addr(i32) #1

declare dso_local i32 @smi_reg_addr(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
