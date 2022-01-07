; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, %struct.sge }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sge = type { i32, i32 }
%struct.msix_entry = type { i32, i32 }

@MSIX_ENTRIES = common dso_local global i32 0, align 4
@MSIX_EXTRAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"only enough MSI-X vectors for %d Queue Sets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_msix(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sge*, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %12 = load i32, i32* @MSIX_ENTRIES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca %struct.msix_entry, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 4
  store %struct.sge* %17, %struct.sge** %10, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %28, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MSIX_ENTRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %15, i64 %25
  %27 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.sge*, %struct.sge** %10, align 8
  %33 = getelementptr inbounds %struct.sge, %struct.sge* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MSIX_EXTRAS, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MSIX_EXTRAS, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @pci_enable_msix_range(i32 %45, %struct.msix_entry* %15, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %103

53:                                               ; preds = %31
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MSIX_EXTRAS, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.sge*, %struct.sge** %10, align 8
  %59 = getelementptr inbounds %struct.sge, %struct.sge* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %53
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_warn(i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.sge*, %struct.sge** %10, align 8
  %70 = getelementptr inbounds %struct.sge, %struct.sge* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.sge*, %struct.sge** %10, align 8
  %73 = getelementptr inbounds %struct.sge, %struct.sge* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @reduce_ethqs(%struct.adapter* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %62
  br label %81

81:                                               ; preds = %80, %53
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %99, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %15, i64 %88
  %90 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.adapter*, %struct.adapter** %3, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %82

102:                                              ; preds = %82
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %51
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_enable_msix_range(i32, %struct.msix_entry*, i32, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, i32) #2

declare dso_local i32 @reduce_ethqs(%struct.adapter*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
