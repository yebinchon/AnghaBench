; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_test_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_test_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MDIO_DEVID1 = common dso_local global i32 0, align 4
@MDIO_DEVID2 = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no MDIO PHY present with ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_mdio_test_alive(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %8 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @__ffs(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %13 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MDIO_DEVID1, align 4
  %18 = call i32 @ef4_mdio_read(%struct.ef4_nic* %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MDIO_DEVID2, align 4
  %22 = call i32 @ef4_mdio_read(%struct.ef4_nic* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 65535
  br i1 %33, label %34, label %47

34:                                               ; preds = %31, %28, %25, %1
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %36 = load i32, i32* @hw, align 4
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %38 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %41 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netif_err(%struct.ef4_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %31
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %50 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ef4_mdio_check_mmds(%struct.ef4_nic* %48, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %34
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %56 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @ef4_mdio_check_mmds(%struct.ef4_nic*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
