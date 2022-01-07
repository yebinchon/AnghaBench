; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_init_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_init_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_IWARP_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_RSS_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_DCB_CAPABLE = common dso_local global i32 0, align 4
@I40E_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_FD_ATR_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_VMDQ_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_INACTIVE = common dso_local global i32 0, align 4
@I40E_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"MSI-X not available, trying MSI\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"MSI init failed - %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"MSI-X and MSI not available, falling back to Legacy IRQ\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_PILE_VALID_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_init_interrupt_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_init_interrupt_scheme(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %14 = call i32 @i40e_init_msix(%struct.i40e_pf* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %19 = load i32, i32* @I40E_FLAG_IWARP_ENABLED, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @I40E_FLAG_RSS_ENABLED, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @I40E_FLAG_DCB_CAPABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @I40E_FLAG_SRIOV_ENABLED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @I40E_FLAG_FD_ATR_ENABLED, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @I40E_FLAG_VMDQ_ENABLED, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @I40E_FLAG_FD_SB_INACTIVE, align 4
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %46 = call i32 @i40e_determine_queue_usage(%struct.i40e_pf* %45)
  br label %47

47:                                               ; preds = %17, %12
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %48
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I40E_FLAG_MSI_ENABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @pci_enable_msi(%struct.TYPE_4__* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %62
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32*, i8*, ...) @dev_info(i32* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @I40E_FLAG_MSI_ENABLED, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %74, %62
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %55, %48
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %93 = load i32, i32* @I40E_FLAG_MSI_ENABLED, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %99 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_info(i32* %101, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %97, %88
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = add i64 4, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.TYPE_5__* @kzalloc(i32 %109, i32 %110)
  %112 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %113 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %112, i32 0, i32 1
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %113, align 8
  %114 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %115 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = icmp ne %struct.TYPE_5__* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %103
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %138

121:                                              ; preds = %103
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %124 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  %127 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %128 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %132 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %133 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i64, i64* @I40E_PILE_VALID_BIT, align 8
  %136 = sub nsw i64 %135, 1
  %137 = call i32 @i40e_get_lump(%struct.i40e_pf* %131, %struct.TYPE_5__* %134, i32 1, i64 %136)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %121, %118
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @i40e_init_msix(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_determine_queue_usage(%struct.i40e_pf*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @i40e_get_lump(%struct.i40e_pf*, %struct.TYPE_5__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
