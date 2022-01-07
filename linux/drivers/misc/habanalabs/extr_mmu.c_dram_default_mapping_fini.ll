; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_dram_default_mapping_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_dram_default_mapping_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i64, i32*, %struct.hl_device* }
%struct.hl_device = type { i32, i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32, i32 }

@HL_KERNEL_ASID_ID = common dso_local global i64 0, align 8
@PTE_ENTRIES_IN_HOP = common dso_local global i32 0, align 4
@HL_PTE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_ctx*)* @dram_default_mapping_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dram_default_mapping_fini(%struct.hl_ctx* %0) #0 {
  %2 = alloca %struct.hl_ctx*, align 8
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %2, align 8
  %14 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %14, i32 0, i32 2
  %16 = load %struct.hl_device*, %struct.hl_device** %15, align 8
  store %struct.hl_device* %16, %struct.hl_device** %3, align 8
  %17 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 2
  store %struct.asic_fixed_properties* %18, %struct.asic_fixed_properties** %4, align 8
  %19 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HL_KERNEL_ASID_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %23, %1
  br label %146

35:                                               ; preds = %28
  %36 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %37 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %41 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @do_div(i32 %39, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PTE_ENTRIES_IN_HOP, align 4
  %46 = call i32 @do_div(i32 %44, i32 %45)
  %47 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %48 = call i32 @get_hop0_addr(%struct.hl_ctx* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %6, align 4
  %51 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %105, %35
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %67
  %72 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %73 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %101, %71
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @PTE_ENTRIES_IN_HOP, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @clear_pte(%struct.hl_ctx* %84, i32 %85)
  %87 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %88 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %89 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @put_pte(%struct.hl_ctx* %87, i32 %94)
  %96 = load i64, i64* @HL_PTE_SIZE, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %83
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %79

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %67

108:                                              ; preds = %67
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %111

111:                                              ; preds = %127, %108
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @clear_pte(%struct.hl_ctx* %116, i32 %117)
  %119 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @put_pte(%struct.hl_ctx* %119, i32 %120)
  %122 = load i64, i64* @HL_PTE_SIZE, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @clear_pte(%struct.hl_ctx* %131, i32 %132)
  %134 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @put_pte(%struct.hl_ctx* %134, i32 %135)
  %137 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @clear_pte(%struct.hl_ctx* %137, i32 %138)
  %140 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %141 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @kfree(i32* %142)
  %144 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %145 = call i32 @flush(%struct.hl_ctx* %144)
  br label %146

146:                                              ; preds = %130, %34
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @get_hop0_addr(%struct.hl_ctx*) #1

declare dso_local i32 @clear_pte(%struct.hl_ctx*, i32) #1

declare dso_local i32 @put_pte(%struct.hl_ctx*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @flush(%struct.hl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
