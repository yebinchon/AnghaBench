; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_probe_get_hw_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_pci_func.c_aq_pci_probe_get_hw_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.aq_hw_caps_s*, %struct.aq_hw_ops* }
%struct.aq_hw_caps_s = type { i32 }
%struct.aq_hw_ops = type { i32 }
%struct.pci_dev = type { i64, i64, i64 }

@PCI_VENDOR_ID_AQUANTIA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@hw_atl_boards = common dso_local global %struct.TYPE_3__* null, align 8
@AQ_HWREV_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.aq_hw_ops**, %struct.aq_hw_caps_s**)* @aq_pci_probe_get_hw_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_pci_probe_get_hw_by_id(%struct.pci_dev* %0, %struct.aq_hw_ops** %1, %struct.aq_hw_caps_s** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.aq_hw_ops**, align 8
  %7 = alloca %struct.aq_hw_caps_s**, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.aq_hw_ops** %1, %struct.aq_hw_ops*** %6, align 8
  store %struct.aq_hw_caps_s** %2, %struct.aq_hw_caps_s*** %7, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_VENDOR_ID_AQUANTIA, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %82

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %70, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_atl_boards, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_atl_boards, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_atl_boards, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AQ_HWREV_ANY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_atl_boards, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %43, %34
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_atl_boards, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load %struct.aq_hw_ops*, %struct.aq_hw_ops** %59, align 8
  %61 = load %struct.aq_hw_ops**, %struct.aq_hw_ops*** %6, align 8
  store %struct.aq_hw_ops* %60, %struct.aq_hw_ops** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_atl_boards, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load %struct.aq_hw_caps_s*, %struct.aq_hw_caps_s** %66, align 8
  %68 = load %struct.aq_hw_caps_s**, %struct.aq_hw_caps_s*** %7, align 8
  store %struct.aq_hw_caps_s* %67, %struct.aq_hw_caps_s** %68, align 8
  br label %73

69:                                               ; preds = %43, %23
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %18

73:                                               ; preds = %54, %18
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hw_atl_boards, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %75)
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
