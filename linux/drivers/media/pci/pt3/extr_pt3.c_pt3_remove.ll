; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pt3_board = type { i32*, i32, %struct.pt3_board*, i32 }

@PT3_NUM_FE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pt3_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt3_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pt3_board*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.pt3_board* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.pt3_board* %6, %struct.pt3_board** %3, align 8
  %7 = load i32, i32* @PT3_NUM_FE, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %16, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @pt3_cleanup_adapter(%struct.pt3_board* %13, i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %4, align 4
  br label %9

19:                                               ; preds = %9
  %20 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %21 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %20, i32 0, i32 3
  %22 = call i32 @i2c_del_adapter(i32* %21)
  %23 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %24 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %23, i32 0, i32 2
  %25 = load %struct.pt3_board*, %struct.pt3_board** %24, align 8
  %26 = call i32 @kfree(%struct.pt3_board* %25)
  %27 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %28 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %31 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pci_iounmap(i32 %29, i32 %34)
  %36 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %37 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %40 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_iounmap(i32 %38, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_release_regions(%struct.pci_dev* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_disable_device(%struct.pci_dev* %47)
  %49 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %50 = call i32 @kfree(%struct.pt3_board* %49)
  ret void
}

declare dso_local %struct.pt3_board* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pt3_cleanup_adapter(%struct.pt3_board*, i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.pt3_board*) #1

declare dso_local i32 @pci_iounmap(i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
