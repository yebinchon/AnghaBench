; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fst_card_info = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.net_device = type { i32 }

@FST_FAMILY_TXU = common dso_local global i64 0, align 8
@FST_MAX_MTU = common dso_local global i32 0, align 4
@fst_card_array = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @fst_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fst_card_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.fst_card_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.fst_card_info* %7, %struct.fst_card_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %11 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %16 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %15, i32 0, i32 11
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call %struct.net_device* @port_to_dev(i32* %20)
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @unregister_hdlc_device(%struct.net_device* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %29 = call i32 @fst_disable_intr(%struct.fst_card_info* %28)
  %30 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %31 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.fst_card_info* %33)
  %35 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %36 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @iounmap(i32 %37)
  %39 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %40 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iounmap(i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_release_regions(%struct.pci_dev* %43)
  %45 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %46 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FST_FAMILY_TXU, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %27
  %51 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %52 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FST_MAX_MTU, align 4
  %55 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %56 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %59 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pci_free_consistent(i32 %53, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %63 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FST_MAX_MTU, align 4
  %66 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %67 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %70 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pci_free_consistent(i32 %64, i32 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %50, %27
  %74 = load i32**, i32*** @fst_card_array, align 8
  %75 = load %struct.fst_card_info*, %struct.fst_card_info** %3, align 8
  %76 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32*, i32** %74, i64 %77
  store i32* null, i32** %78, align 8
  ret void
}

declare dso_local %struct.fst_card_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @port_to_dev(i32*) #1

declare dso_local i32 @unregister_hdlc_device(%struct.net_device*) #1

declare dso_local i32 @fst_disable_intr(%struct.fst_card_info*) #1

declare dso_local i32 @free_irq(i32, %struct.fst_card_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
