; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wq_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wq_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wqs = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_wq = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64, i64, i64, %struct.hinic_hwif* }

@.str = private unnamed_addr constant [31 x i8] c"wqebb_size must be power of 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"wq_page_size must be > 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"WQ q_depth must be power of 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"num wqebbs per page must be power of 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to get free wqs next block\0A\00", align 1
@WQ_MAX_PAGES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to allocate wq pages\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_wq_allocate(%struct.hinic_wqs* %0, %struct.hinic_wq* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_wqs*, align 8
  %9 = alloca %struct.hinic_wq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hinic_hwif*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.hinic_wqs* %0, %struct.hinic_wqs** %8, align 8
  store %struct.hinic_wq* %1, %struct.hinic_wq** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.hinic_wqs*, %struct.hinic_wqs** %8, align 8
  %20 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %19, i32 0, i32 0
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %20, align 8
  store %struct.hinic_hwif* %21, %struct.hinic_hwif** %14, align 8
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %14, align 8
  %23 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %15, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @is_power_of_2(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %6
  %29 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %165

34:                                               ; preds = %6
  %35 = load i64, i64* %11, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %165

43:                                               ; preds = %34
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = sub nsw i64 %45, 1
  %47 = and i64 %44, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %165

55:                                               ; preds = %43
  %56 = load i64, i64* %10, align 8
  %57 = call i8* @ilog2(i64 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %17, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @ALIGN(i64 %59, i64 %60)
  %62 = load i64, i64* %17, align 8
  %63 = ashr i64 %61, %62
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @is_power_of_2(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %55
  %68 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %165

73:                                               ; preds = %55
  %74 = load %struct.hinic_hwif*, %struct.hinic_hwif** %14, align 8
  %75 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %76 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %75, i32 0, i32 16
  store %struct.hinic_hwif* %74, %struct.hinic_hwif** %76, align 8
  %77 = load %struct.hinic_wqs*, %struct.hinic_wqs** %8, align 8
  %78 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %79 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %78, i32 0, i32 1
  %80 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %81 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %80, i32 0, i32 0
  %82 = call i32 @wqs_next_block(%struct.hinic_wqs* %77, i32* %79, i32* %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %7, align 4
  br label %165

90:                                               ; preds = %73
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %93 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %92, i32 0, i32 15
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %96 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %95, i32 0, i32 14
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %99 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %98, i32 0, i32 13
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %102 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %101, i32 0, i32 12
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %105 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %104, i32 0, i32 11
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %16, align 8
  %107 = call i8* @ilog2(i64 %106)
  %108 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %109 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %108, i32 0, i32 10
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %112 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %111, i32 0, i32 9
  store i64 %110, i64* %112, align 8
  %113 = load %struct.hinic_wqs*, %struct.hinic_wqs** %8, align 8
  %114 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %115 = call i32 @WQ_BASE_VADDR(%struct.hinic_wqs* %113, %struct.hinic_wq* %114)
  %116 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %117 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 4
  %118 = load %struct.hinic_wqs*, %struct.hinic_wqs** %8, align 8
  %119 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %120 = call i32 @WQ_BASE_ADDR(%struct.hinic_wqs* %118, %struct.hinic_wq* %119)
  %121 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %122 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 8
  %123 = load %struct.hinic_wqs*, %struct.hinic_wqs** %8, align 8
  %124 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %125 = call i32 @WQ_BASE_PADDR(%struct.hinic_wqs* %123, %struct.hinic_wq* %124)
  %126 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %127 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  %128 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %129 = load %struct.hinic_wqs*, %struct.hinic_wqs** %8, align 8
  %130 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %129, i32 0, i32 0
  %131 = load %struct.hinic_hwif*, %struct.hinic_hwif** %130, align 8
  %132 = load i32, i32* @WQ_MAX_PAGES, align 4
  %133 = call i32 @alloc_wq_pages(%struct.hinic_wq* %128, %struct.hinic_hwif* %131, i32 %132)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %90
  %137 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 0
  %139 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %155

140:                                              ; preds = %90
  %141 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %142 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %141, i32 0, i32 5
  %143 = call i32 @atomic_set(i32* %142, i64 0)
  %144 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %145 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %144, i32 0, i32 4
  %146 = call i32 @atomic_set(i32* %145, i64 0)
  %147 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %148 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %147, i32 0, i32 3
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @atomic_set(i32* %148, i64 %149)
  %151 = load i64, i64* %12, align 8
  %152 = sub nsw i64 %151, 1
  %153 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %154 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  store i32 0, i32* %7, align 4
  br label %165

155:                                              ; preds = %136
  %156 = load %struct.hinic_wqs*, %struct.hinic_wqs** %8, align 8
  %157 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %158 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %161 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @wqs_return_block(%struct.hinic_wqs* %156, i32 %159, i32 %162)
  %164 = load i32, i32* %18, align 4
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %155, %140, %85, %67, %49, %37, %28
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @ilog2(i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @wqs_next_block(%struct.hinic_wqs*, i32*, i32*) #1

declare dso_local i32 @WQ_BASE_VADDR(%struct.hinic_wqs*, %struct.hinic_wq*) #1

declare dso_local i32 @WQ_BASE_ADDR(%struct.hinic_wqs*, %struct.hinic_wq*) #1

declare dso_local i32 @WQ_BASE_PADDR(%struct.hinic_wqs*, %struct.hinic_wq*) #1

declare dso_local i32 @alloc_wq_pages(%struct.hinic_wq*, %struct.hinic_hwif*, i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @wqs_return_block(%struct.hinic_wqs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
