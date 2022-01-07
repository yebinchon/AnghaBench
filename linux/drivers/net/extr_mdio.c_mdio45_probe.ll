; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_mdio.c_mdio45_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_mdio.c_mdio45_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_if_info = type { i32 (i32, i32, i32, i32)*, i32, i32, i32 }

@MDIO_STAT2 = common dso_local global i32 0, align 4
@MDIO_STAT2_DEVPRST = common dso_local global i32 0, align 4
@MDIO_STAT2_DEVPRST_VAL = common dso_local global i32 0, align 4
@MDIO_DEVS1 = common dso_local global i32 0, align 4
@MDIO_DEVS2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdio45_probe(%struct.mdio_if_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdio_if_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mdio_if_info* %0, %struct.mdio_if_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %70, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 5
  br i1 %12, label %13, label %73

13:                                               ; preds = %10
  %14 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %15 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %15, align 8
  %17 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %18 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MDIO_STAT2, align 4
  %23 = call i32 %16(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MDIO_STAT2_DEVPRST, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MDIO_STAT2_DEVPRST_VAL, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %13
  br label %70

33:                                               ; preds = %26
  %34 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %35 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %34, i32 0, i32 0
  %36 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %35, align 8
  %37 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %38 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MDIO_DEVS1, align 4
  %43 = call i32 %36(i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %45 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %45, align 8
  %47 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %48 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MDIO_DEVS2, align 4
  %53 = call i32 %46(i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %33
  br label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %63 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 16
  %67 = or i32 %64, %66
  %68 = load %struct.mdio_if_info*, %struct.mdio_if_info** %4, align 8
  %69 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %76

70:                                               ; preds = %59, %32
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %10

73:                                               ; preds = %10
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %60
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
