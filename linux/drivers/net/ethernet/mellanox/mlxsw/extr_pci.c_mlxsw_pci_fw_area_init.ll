; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_fw_area_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_fw_area_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_pci_mem_item* }
%struct.mlxsw_pci_mem_item = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_PCI_PAGE_SIZE = common dso_local global i32 0, align 4
@MLXSW_CMD_MAP_FA_VPM_ENTRIES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*, i32)* @mlxsw_pci_fw_area_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_fw_area_init(%struct.mlxsw_pci* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_pci_mem_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlxsw_pci_mem_item* @kcalloc(i32 %12, i32 12, i32 %13)
  %15 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.mlxsw_pci_mem_item* %14, %struct.mlxsw_pci_mem_item** %17, align 8
  %18 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %20, align 8
  %22 = icmp ne %struct.mlxsw_pci_mem_item* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %150

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %29 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @mlxsw_cmd_mbox_zero(i8* %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %94, %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %33
  %38 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %41, i64 %43
  store %struct.mlxsw_pci_mem_item* %44, %struct.mlxsw_pci_mem_item** %8, align 8
  %45 = load i32, i32* @MLXSW_PCI_PAGE_SIZE, align 4
  %46 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %47 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %49 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %52 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %55 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %54, i32 0, i32 0
  %56 = call i32 @pci_alloc_consistent(i32 %50, i32 %53, i32* %55)
  %57 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %58 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %60 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %37
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %113

66:                                               ; preds = %37
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %70 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mlxsw_cmd_mbox_map_fa_pa_set(i8* %67, i32 %68, i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @mlxsw_cmd_mbox_map_fa_log2size_set(i8* %73, i32 %74, i32 0)
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @MLXSW_CMD_MAP_FA_VPM_ENTRIES_MAX, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %66
  %81 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %82 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @mlxsw_cmd_map_fa(i32 %83, i8* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %112

90:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @mlxsw_cmd_mbox_zero(i8* %91)
  br label %93

93:                                               ; preds = %90, %66
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %33

97:                                               ; preds = %33
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %102 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @mlxsw_cmd_map_fa(i32 %103, i8* %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %112

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %97
  store i32 0, i32* %4, align 4
  br label %150

112:                                              ; preds = %109, %89
  br label %113

113:                                              ; preds = %112, %63
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %140, %113
  %117 = load i32, i32* %10, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %116
  %120 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %121 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %123, i64 %125
  store %struct.mlxsw_pci_mem_item* %126, %struct.mlxsw_pci_mem_item** %8, align 8
  %127 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %128 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %131 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %134 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %8, align 8
  %137 = getelementptr inbounds %struct.mlxsw_pci_mem_item, %struct.mlxsw_pci_mem_item* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @pci_free_consistent(i32 %129, i32 %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %119
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %10, align 4
  br label %116

143:                                              ; preds = %116
  %144 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %145 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load %struct.mlxsw_pci_mem_item*, %struct.mlxsw_pci_mem_item** %146, align 8
  %148 = call i32 @kfree(%struct.mlxsw_pci_mem_item* %147)
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %143, %111, %23
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.mlxsw_pci_mem_item* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_zero(i8*) #1

declare dso_local i32 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mlxsw_cmd_mbox_map_fa_pa_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_map_fa_log2size_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_cmd_map_fa(i32, i8*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_pci_mem_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
