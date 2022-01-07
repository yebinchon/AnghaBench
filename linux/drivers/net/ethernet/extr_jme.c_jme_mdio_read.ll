; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@JME_SMI = common dso_local global i32 0, align 4
@SMI_OP_REQ = common dso_local global i32 0, align 4
@JME_PHY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"phy(%d) read timeout : %d\0A\00", align 1
@SMI_DATA_MASK = common dso_local global i32 0, align 4
@SMI_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @jme_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jme_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.jme_adapter* %13, %struct.jme_adapter** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MII_BMSR, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %61, %3
  %20 = load %struct.jme_adapter*, %struct.jme_adapter** %8, align 8
  %21 = load i32, i32* @JME_SMI, align 4
  %22 = load i32, i32* @SMI_OP_REQ, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @smi_phy_addr(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @smi_reg_addr(i32 %26)
  %28 = or i32 %25, %27
  %29 = call i32 @jwrite32(%struct.jme_adapter* %20, i32 %21, i32 %28)
  %30 = call i32 (...) @wmb()
  %31 = load i32, i32* @JME_PHY_TIMEOUT, align 4
  %32 = mul nsw i32 %31, 50
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %47, %19
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = call i32 @udelay(i32 20)
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %8, align 8
  %39 = load i32, i32* @JME_SMI, align 4
  %40 = call i32 @jread32(%struct.jme_adapter* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SMI_OP_REQ, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  br label %33

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  store i32 0, i32* %4, align 4
  br label %68

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %19

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @SMI_DATA_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @SMI_DATA_SHIFT, align 4
  %67 = ashr i32 %65, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %53
  %69 = load i32, i32* %4, align 4
  ret i32 %69
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
