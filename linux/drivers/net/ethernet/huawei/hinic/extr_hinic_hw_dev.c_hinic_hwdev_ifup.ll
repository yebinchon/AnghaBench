; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_hinic_hwdev_ifup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_hinic_hwdev_ifup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwdev = type { %struct.msix_entry*, %struct.hinic_hwif*, %struct.hinic_cap, %struct.hinic_func_to_io }
%struct.msix_entry = type { i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_cap = type { i32, i32 }
%struct.hinic_func_to_io = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to get global base qp number\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to init IO channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to create QPs\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"db - disabled, try again\0A\00", align 1
@HINIC_DB_ENABLE = common dso_local global i32 0, align 4
@HINIC_SQ_DEPTH = common dso_local global i32 0, align 4
@HINIC_RQ_DEPTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to set HW IO ctxt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_hwdev_ifup(%struct.hinic_hwdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_hwdev*, align 8
  %4 = alloca %struct.hinic_func_to_io*, align 8
  %5 = alloca %struct.hinic_cap*, align 8
  %6 = alloca %struct.hinic_hwif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.msix_entry*, align 8
  %12 = alloca %struct.msix_entry*, align 8
  %13 = alloca %struct.msix_entry*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.hinic_hwdev* %0, %struct.hinic_hwdev** %3, align 8
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %17 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %16, i32 0, i32 3
  store %struct.hinic_func_to_io* %17, %struct.hinic_func_to_io** %4, align 8
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %19 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %18, i32 0, i32 2
  store %struct.hinic_cap* %19, %struct.hinic_cap** %5, align 8
  %20 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %21 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %20, i32 0, i32 1
  %22 = load %struct.hinic_hwif*, %struct.hinic_hwif** %21, align 8
  store %struct.hinic_hwif* %22, %struct.hinic_hwif** %6, align 8
  %23 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %24 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %14, align 8
  %26 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %27 = call i32 @get_base_qpn(%struct.hinic_hwdev* %26, i32* %15)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %127

35:                                               ; preds = %1
  %36 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %37 = call i32 @HINIC_HWIF_NUM_AEQS(%struct.hinic_hwif* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %39 = call i32 @HINIC_HWIF_NUM_CEQS(%struct.hinic_hwif* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %41 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %40, i32 0, i32 0
  %42 = load %struct.msix_entry*, %struct.msix_entry** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %42, i64 %44
  store %struct.msix_entry* %45, %struct.msix_entry** %11, align 8
  %46 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %4, align 8
  %47 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %48 = load %struct.hinic_cap*, %struct.hinic_cap** %5, align 8
  %49 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.msix_entry*, %struct.msix_entry** %11, align 8
  %53 = call i32 @hinic_io_init(%struct.hinic_func_to_io* %46, %struct.hinic_hwif* %47, i32 %50, i32 %51, %struct.msix_entry* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %35
  %57 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %127

61:                                               ; preds = %35
  %62 = load %struct.hinic_cap*, %struct.hinic_cap** %5, align 8
  %63 = getelementptr inbounds %struct.hinic_cap, %struct.hinic_cap* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %66 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %65, i32 0, i32 0
  %67 = load %struct.msix_entry*, %struct.msix_entry** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %67, i64 %71
  store %struct.msix_entry* %72, %struct.msix_entry** %12, align 8
  %73 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %74 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %73, i32 0, i32 0
  %75 = load %struct.msix_entry*, %struct.msix_entry** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %75, i64 %81
  store %struct.msix_entry* %82, %struct.msix_entry** %13, align 8
  %83 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %4, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.msix_entry*, %struct.msix_entry** %12, align 8
  %87 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %88 = call i32 @hinic_io_create_qps(%struct.hinic_func_to_io* %83, i32 %84, i32 %85, %struct.msix_entry* %86, %struct.msix_entry* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %61
  %92 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %123

95:                                               ; preds = %61
  %96 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %97 = call i32 @wait_for_db_state(%struct.hinic_hwdev* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = call i32 @dev_warn(i32* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %105 = load i32, i32* @HINIC_DB_ENABLE, align 4
  %106 = call i32 @hinic_db_state_set(%struct.hinic_hwif* %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %3, align 8
  %109 = load i32, i32* @HINIC_SQ_DEPTH, align 4
  %110 = load i32, i32* @HINIC_RQ_DEPTH, align 4
  %111 = call i32 @set_hw_ioctxt(%struct.hinic_hwdev* %108, i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %119

118:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %127

119:                                              ; preds = %114
  %120 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %4, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @hinic_io_destroy_qps(%struct.hinic_func_to_io* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %91
  %124 = load %struct.hinic_func_to_io*, %struct.hinic_func_to_io** %4, align 8
  %125 = call i32 @hinic_io_free(%struct.hinic_func_to_io* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %118, %56, %30
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @get_base_qpn(%struct.hinic_hwdev*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @HINIC_HWIF_NUM_AEQS(%struct.hinic_hwif*) #1

declare dso_local i32 @HINIC_HWIF_NUM_CEQS(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_io_init(%struct.hinic_func_to_io*, %struct.hinic_hwif*, i32, i32, %struct.msix_entry*) #1

declare dso_local i32 @hinic_io_create_qps(%struct.hinic_func_to_io*, i32, i32, %struct.msix_entry*, %struct.msix_entry*) #1

declare dso_local i32 @wait_for_db_state(%struct.hinic_hwdev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hinic_db_state_set(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @set_hw_ioctxt(%struct.hinic_hwdev*, i32, i32) #1

declare dso_local i32 @hinic_io_destroy_qps(%struct.hinic_func_to_io*, i32) #1

declare dso_local i32 @hinic_io_free(%struct.hinic_func_to_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
