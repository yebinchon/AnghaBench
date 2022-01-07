; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_rdrxctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_rdrxctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_RDRXCTL = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_MVMEN = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_PSP = common dso_local global i32 0, align 4
@IXGBE_RSCDBU = common dso_local global i32 0, align 4
@IXGBE_RSCDBU_RSCACKDIS = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_RSCFRSTSIZE = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_RSCACKC = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_FCOE_WRFIX = common dso_local global i32 0, align 4
@IXGBE_RDRXCTL_CRCSTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_setup_rdrxctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_setup_rdrxctl(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 1
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %9 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %49 [
    i32 133, label %14
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
    i32 132, label %28
    i32 131, label %28
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @IXGBE_RDRXCTL_MVMEN, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @IXGBE_RDRXCTL_PSP, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %1, %1, %27
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = load i32, i32* @IXGBE_RSCDBU, align 4
  %31 = load i32, i32* @IXGBE_RSCDBU_RSCACKDIS, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = load i32, i32* @IXGBE_RSCDBU, align 4
  %34 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %32, i32 %33)
  %35 = or i32 %31, %34
  %36 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %29, i32 %30, i32 %35)
  %37 = load i32, i32* @IXGBE_RDRXCTL_RSCFRSTSIZE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @IXGBE_RDRXCTL_RSCACKC, align 4
  %42 = load i32, i32* @IXGBE_RDRXCTL_FCOE_WRFIX, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @IXGBE_RDRXCTL_CRCSTRIP, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %1
  br label %55

50:                                               ; preds = %28, %14
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = load i32, i32* @IXGBE_RDRXCTL, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
