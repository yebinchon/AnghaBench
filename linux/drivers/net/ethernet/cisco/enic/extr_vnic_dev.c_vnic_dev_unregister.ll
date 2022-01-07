; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i64, i32, i64, i32, i32, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_dev_unregister(%struct.vnic_dev* %0) #0 {
  %2 = alloca %struct.vnic_dev*, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %2, align 8
  %3 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %4 = icmp ne %struct.vnic_dev* %3, null
  br i1 %4, label %5, label %64

5:                                                ; preds = %1
  %6 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %12 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %15 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %18 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pci_free_consistent(i32 %13, i32 4, i64 %16, i32 %19)
  br label %21

21:                                               ; preds = %10, %5
  %22 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %23 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %28 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %31 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %34 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_free_consistent(i32 %29, i32 4, i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %26, %21
  %38 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %39 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %44 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %47 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %50 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pci_free_consistent(i32 %45, i32 4, i64 %48, i32 %51)
  br label %53

53:                                               ; preds = %42, %37
  %54 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %55 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %60 = call i32 @vnic_dev_deinit_devcmd2(%struct.vnic_dev* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %63 = call i32 @kfree(%struct.vnic_dev* %62)
  br label %64

64:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @vnic_dev_deinit_devcmd2(%struct.vnic_dev*) #1

declare dso_local i32 @kfree(%struct.vnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
