; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_dump_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_fw_crash_data = type { i64, i32* }
%struct.ath10k_hw_mem_layout = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ath10k_mem_region* }
%struct.ath10k_mem_region = type { i64, i32, i32, i32 }
%struct.ath10k_dump_ram_data_hdr = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [75 x i8] c"memory region %s size %d is larger that remaining ramdump buffer size %zu\0A\00", align 1
@ATH10K_MEM_REGION_TYPE_IRAM1 = common dso_local global i32 0, align 4
@ATH10K_MEM_REGION_TYPE_IRAM2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"failed to switch ram config to IRAM for section %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_fw_crash_data*)* @ath10k_pci_dump_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_dump_memory(%struct.ath10k* %0, %struct.ath10k_fw_crash_data* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_fw_crash_data*, align 8
  %5 = alloca %struct.ath10k_hw_mem_layout*, align 8
  %6 = alloca %struct.ath10k_mem_region*, align 8
  %7 = alloca %struct.ath10k_dump_ram_data_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_fw_crash_data* %1, %struct.ath10k_fw_crash_data** %4, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %18 = icmp ne %struct.ath10k_fw_crash_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %162

20:                                               ; preds = %2
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = call %struct.ath10k_hw_mem_layout* @ath10k_coredump_get_mem_layout(%struct.ath10k* %21)
  store %struct.ath10k_hw_mem_layout* %22, %struct.ath10k_hw_mem_layout** %5, align 8
  %23 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %5, align 8
  %24 = icmp ne %struct.ath10k_hw_mem_layout* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %162

26:                                               ; preds = %20
  %27 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %5, align 8
  %28 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %29, align 8
  %31 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %30, i64 0
  store %struct.ath10k_mem_region* %31, %struct.ath10k_mem_region** %6, align 8
  %32 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %13, align 8
  %35 = load %struct.ath10k_fw_crash_data*, %struct.ath10k_fw_crash_data** %4, align 8
  %36 = getelementptr inbounds %struct.ath10k_fw_crash_data, %struct.ath10k_fw_crash_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @memset(i32* %38, i32 0, i64 %39)
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %159, %26
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %5, align 8
  %44 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %162

48:                                               ; preds = %41
  store i64 0, i64* %8, align 8
  %49 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %50 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %56 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %57 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %60 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62, i64 %63)
  br label %162

65:                                               ; preds = %48
  %66 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %67 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ATH10K_MEM_REGION_TYPE_IRAM1, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %73 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ATH10K_MEM_REGION_TYPE_IRAM2, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %71, %65
  %78 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %79 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 20
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %9, align 8
  %83 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @ath10k_pci_set_ram_config(%struct.ath10k* %83, i64 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %91 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %89, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  br label %162

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32*, i32** %13, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = bitcast i8* %98 to %struct.ath10k_dump_ram_data_hdr*
  store %struct.ath10k_dump_ram_data_hdr* %99, %struct.ath10k_dump_ram_data_hdr** %7, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 24
  store i32* %101, i32** %13, align 8
  %102 = load i64, i64* %10, align 8
  %103 = sub i64 %102, 24
  store i64 %103, i64* %10, align 8
  %104 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %105 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %117 [
    i32 128, label %107
    i32 129, label %112
  ]

107:                                              ; preds = %96
  %108 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %109 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i64 @ath10k_pci_dump_memory_sram(%struct.ath10k* %108, %struct.ath10k_mem_region* %109, i32* %110)
  store i64 %111, i64* %8, align 8
  br label %128

112:                                              ; preds = %96
  %113 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %114 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = call i64 @ath10k_pci_dump_memory_reg(%struct.ath10k* %113, %struct.ath10k_mem_region* %114, i32* %115)
  store i64 %116, i64* %8, align 8
  br label %128

117:                                              ; preds = %96
  %118 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %119 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @ath10k_pci_dump_memory_generic(%struct.ath10k* %118, %struct.ath10k_mem_region* %119, i32* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %8, align 8
  br label %128

128:                                              ; preds = %125, %124, %112, %107
  %129 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %130 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = call i8* @cpu_to_le32(i64 %132)
  %134 = load %struct.ath10k_dump_ram_data_hdr*, %struct.ath10k_dump_ram_data_hdr** %7, align 8
  %135 = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, %struct.ath10k_dump_ram_data_hdr* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %137 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = call i8* @cpu_to_le32(i64 %139)
  %141 = load %struct.ath10k_dump_ram_data_hdr*, %struct.ath10k_dump_ram_data_hdr** %7, align 8
  %142 = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, %struct.ath10k_dump_ram_data_hdr* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i8* @cpu_to_le32(i64 %143)
  %145 = load %struct.ath10k_dump_ram_data_hdr*, %struct.ath10k_dump_ram_data_hdr** %7, align 8
  %146 = getelementptr inbounds %struct.ath10k_dump_ram_data_hdr, %struct.ath10k_dump_ram_data_hdr* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i64, i64* %8, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %128
  br label %162

150:                                              ; preds = %128
  %151 = load i64, i64* %8, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 %151
  store i32* %153, i32** %13, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %10, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %10, align 8
  %157 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %6, align 8
  %158 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %157, i32 1
  store %struct.ath10k_mem_region* %158, %struct.ath10k_mem_region** %6, align 8
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %41

162:                                              ; preds = %19, %25, %149, %88, %54, %41
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ath10k_hw_mem_layout* @ath10k_coredump_get_mem_layout(%struct.ath10k*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, ...) #1

declare dso_local i32 @ath10k_pci_set_ram_config(%struct.ath10k*, i64) #1

declare dso_local i64 @ath10k_pci_dump_memory_sram(%struct.ath10k*, %struct.ath10k_mem_region*, i32*) #1

declare dso_local i64 @ath10k_pci_dump_memory_reg(%struct.ath10k*, %struct.ath10k_mem_region*, i32*) #1

declare dso_local i32 @ath10k_pci_dump_memory_generic(%struct.ath10k*, %struct.ath10k_mem_region*, i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
