; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_get_bars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_get_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DFX_MMIO = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_LO_CMP_2 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_LO_CMP_1 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_LO_CMP_0 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_HI_CMP_2 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_HI_CMP_1 = common dso_local global i64 0, align 8
@PI_ESIC_K_MEM_ADD_HI_CMP_0 = common dso_local global i64 0, align 8
@PI_MEM_ADD_MASK_M = common dso_local global i32 0, align 4
@PI_ESIC_K_CSR_IO_LEN = common dso_local global i32 0, align 4
@PI_DEFEA_K_BURST_HOLDOFF = common dso_local global i32 0, align 4
@PI_ESIC_K_BURST_HOLDOFF_LEN = common dso_local global i32 0, align 4
@PI_ESIC_K_ESIC_CSR = common dso_local global i32 0, align 4
@PI_ESIC_K_ESIC_CSR_LEN = common dso_local global i32 0, align 4
@PI_TC_K_CSR_OFFSET = common dso_local global i32 0, align 4
@PI_TC_K_CSR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32*, i32*)* @dfx_get_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfx_get_bars(%struct.device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_is_pci(%struct.device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @DFX_BUS_EISA(%struct.device* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @DFX_BUS_TC(%struct.device* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* @DFX_MMIO, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i1 [ true, %3 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  store i32 %35, i32* %11, align 4
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @to_pci_dev(%struct.device* %36)
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @pci_resource_start(i32 %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @to_pci_dev(%struct.device* %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @pci_resource_len(i32 %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %31, %26
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %151

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call %struct.TYPE_6__* @to_eisa_device(%struct.device* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %122

66:                                               ; preds = %59
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @PI_ESIC_K_MEM_ADD_LO_CMP_2, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @inb(i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = shl i32 %71, 8
  store i32 %72, i32* %13, align 4
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @PI_ESIC_K_MEM_ADD_LO_CMP_1, align 8
  %75 = add i64 %73, %74
  %76 = call i32 @inb(i64 %75)
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 8
  store i32 %80, i32* %13, align 4
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @PI_ESIC_K_MEM_ADD_LO_CMP_0, align 8
  %83 = add i64 %81, %82
  %84 = call i32 @inb(i64 %83)
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = shl i32 %87, 8
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* @PI_ESIC_K_MEM_ADD_HI_CMP_2, align 8
  %94 = add i64 %92, %93
  %95 = call i32 @inb(i64 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = shl i32 %96, 8
  store i32 %97, i32* %14, align 4
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @PI_ESIC_K_MEM_ADD_HI_CMP_1, align 8
  %100 = add i64 %98, %99
  %101 = call i32 @inb(i64 %100)
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = shl i32 %104, 8
  store i32 %105, i32* %14, align 4
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @PI_ESIC_K_MEM_ADD_HI_CMP_0, align 8
  %108 = add i64 %106, %107
  %109 = call i32 @inb(i64 %108)
  %110 = load i32, i32* %14, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = shl i32 %112, 8
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* @PI_MEM_ADD_MASK_M, align 4
  %118 = or i32 %116, %117
  %119 = add nsw i32 %118, 1
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %119, i32* %121, align 4
  br label %130

122:                                              ; preds = %59
  %123 = load i64, i64* %12, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @PI_ESIC_K_CSR_IO_LEN, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %122, %66
  %131 = load i64, i64* %12, align 8
  %132 = load i32, i32* @PI_DEFEA_K_BURST_HOLDOFF, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %131, %133
  %135 = trunc i64 %134 to i32
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @PI_ESIC_K_BURST_HOLDOFF_LEN, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %138, i32* %140, align 4
  %141 = load i64, i64* %12, align 8
  %142 = load i32, i32* @PI_ESIC_K_ESIC_CSR, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 %141, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @PI_ESIC_K_ESIC_CSR_LEN, align 4
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %130, %56
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %151
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call %struct.TYPE_5__* @to_tc_dev(%struct.device* %155)
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @PI_TC_K_CSR_OFFSET, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32*, i32** %5, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @PI_TC_K_CSR_LEN, align 4
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %164, i32* %166, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 0, i32* %168, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  store i32 0, i32* %170, align 4
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 0, i32* %172, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %154, %151
  ret void
}

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @DFX_BUS_EISA(%struct.device*) #1

declare dso_local i32 @DFX_BUS_TC(%struct.device*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local %struct.TYPE_6__* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local %struct.TYPE_5__* @to_tc_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
