; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_del_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_del_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ems_pci_card = type { i32, i32*, i32, i32*, %struct.net_device** }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Removing %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ems_pci_del_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ems_pci_del_card(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ems_pci_card*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ems_pci_card* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ems_pci_card* %7, %struct.ems_pci_card** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %11 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %16 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %15, i32 0, i32 4
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %19
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %36

25:                                               ; preds = %14
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @unregister_sja1000dev(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @free_sja1000dev(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %25, %24
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %41 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %46 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %49 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @pci_iounmap(i32 %47, i32* %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %54 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %59 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %62 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @pci_iounmap(i32 %60, i32* %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.ems_pci_card*, %struct.ems_pci_card** %3, align 8
  %67 = call i32 @kfree(%struct.ems_pci_card* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = call i32 @pci_disable_device(%struct.pci_dev* %68)
  ret void
}

declare dso_local %struct.ems_pci_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @unregister_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @free_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(i32, i32*) #1

declare dso_local i32 @kfree(%struct.ems_pci_card*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
