; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_read_phy_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_read_phy_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@ALX_MII_GIGA_PSSR = common dso_local global i32 0, align 4
@ALX_GIGA_PSSR_SPD_DPLX_RESOLVED = common dso_local global i32 0, align 4
@ALX_GIGA_PSSR_SPEED = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@ALX_GIGA_PSSR_DPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid PHY speed/duplex: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alx_read_phy_link(%struct.alx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  %8 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %9 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %12 = load i32, i32* @MII_BMSR, align 4
  %13 = call i32 @alx_read_phy_reg(%struct.alx_hw* %11, i32 %12, i32* %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %89

18:                                               ; preds = %1
  %19 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %20 = load i32, i32* @MII_BMSR, align 4
  %21 = call i32 @alx_read_phy_reg(%struct.alx_hw* %19, i32 %20, i32* %5)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %89

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BMSR_LSTATUS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @SPEED_UNKNOWN, align 4
  %33 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %34 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %36 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %37 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %89

38:                                               ; preds = %26
  %39 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %40 = load i32, i32* @ALX_MII_GIGA_PSSR, align 4
  %41 = call i32 @alx_read_phy_reg(%struct.alx_hw* %39, i32 %40, i32* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %89

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ALX_GIGA_PSSR_SPD_DPLX_RESOLVED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %82

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ALX_GIGA_PSSR_SPEED, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %68 [
    i32 130, label %56
    i32 129, label %60
    i32 128, label %64
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* @SPEED_1000, align 4
  %58 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %59 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %69

60:                                               ; preds = %52
  %61 = load i32, i32* @SPEED_100, align 4
  %62 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %63 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %69

64:                                               ; preds = %52
  %65 = load i32, i32* @SPEED_10, align 4
  %66 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %67 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %69

68:                                               ; preds = %52
  br label %82

69:                                               ; preds = %64, %60, %56
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ALX_GIGA_PSSR_DPLX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @DUPLEX_FULL, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @DUPLEX_HALF, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %81 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %89

82:                                               ; preds = %68, %51
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %82, %78, %44, %31, %24, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @alx_read_phy_reg(%struct.alx_hw*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
