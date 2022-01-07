; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_init_recovery_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_init_recovery_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, i32, i32, i32, i64, %struct.i40e_vsi**, %struct.TYPE_4__, i32, i32 }
%struct.i40e_vsi = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.i40e_hw = type { i32 }

@i40e_service_timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@i40e_service_task = common dso_local global i32 0, align 4
@__I40E_SERVICE_SCHED = common dso_local global i32 0, align 4
@I40E_MIN_VSI_ALLOC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_VSI_MAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, %struct.i40e_hw*)* @i40e_init_recovery_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_init_recovery_mode(%struct.i40e_pf* %0, %struct.i40e_hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store %struct.i40e_hw* %1, %struct.i40e_hw** %5, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_save_state(i32 %11)
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 3
  %15 = load i32, i32* @i40e_service_timer, align 4
  %16 = call i32 @timer_setup(i32* %14, i32 %15, i32 0)
  %17 = load i64, i64* @HZ, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 4
  store i64 %17, i64* %19, align 8
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 8
  %22 = load i32, i32* @i40e_service_task, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load i32, i32* @__I40E_SERVICE_SCHED, align 4
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clear_bit(i32 %24, i32 %27)
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %30 = call i32 @i40e_init_interrupt_scheme(%struct.i40e_pf* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %128

34:                                               ; preds = %2
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @I40E_MIN_VSI_ALLOC, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i64, i64* @I40E_MIN_VSI_ALLOC, align 8
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %54

46:                                               ; preds = %34
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %53 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %42
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.i40e_vsi** @kcalloc(i64 %57, i32 8, i32 %58)
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 5
  store %struct.i40e_vsi** %59, %struct.i40e_vsi*** %61, align 8
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 5
  %64 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %63, align 8
  %65 = icmp ne %struct.i40e_vsi** %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %128

69:                                               ; preds = %54
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %71 = load i32, i32* @I40E_VSI_MAIN, align 4
  %72 = call i32 @i40e_vsi_mem_alloc(%struct.i40e_pf* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %128

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %81 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %80, i32 0, i32 5
  %82 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %82, i64 %84
  %86 = load %struct.i40e_vsi*, %struct.i40e_vsi** %85, align 8
  store %struct.i40e_vsi* %86, %struct.i40e_vsi** %6, align 8
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %88 = icmp ne %struct.i40e_vsi* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %76
  br label %128

90:                                               ; preds = %76
  %91 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %94 = call i32 @i40e_config_netdev(%struct.i40e_vsi* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %128

98:                                               ; preds = %90
  %99 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %100 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @register_netdev(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %128

106:                                              ; preds = %98
  %107 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %108 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %110 = call i32 @i40e_dbg_pf_init(%struct.i40e_pf* %109)
  %111 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %112 = call i32 @i40e_setup_misc_vector_for_recovery_mode(%struct.i40e_pf* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %128

116:                                              ; preds = %106
  %117 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %118 = call i32 @i40e_send_version(%struct.i40e_pf* %117)
  %119 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %120 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %119, i32 0, i32 3
  %121 = load i64, i64* @jiffies, align 8
  %122 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %123 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = call i32 @round_jiffies(i64 %125)
  %127 = call i32 @mod_timer(i32* %120, i32 %126)
  store i32 0, i32* %3, align 4
  br label %155

128:                                              ; preds = %115, %105, %97, %89, %75, %66, %33
  %129 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %130 = call i32 @i40e_reset_interrupt_capability(%struct.i40e_pf* %129)
  %131 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %132 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %131, i32 0, i32 3
  %133 = call i32 @del_timer_sync(i32* %132)
  %134 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %135 = call i32 @i40e_shutdown_adminq(%struct.i40e_hw* %134)
  %136 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %137 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @iounmap(i32 %138)
  %140 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %141 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pci_disable_pcie_error_reporting(i32 %142)
  %144 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %145 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @pci_release_mem_regions(i32 %146)
  %148 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %149 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @pci_disable_device(i32 %150)
  %152 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %153 = call i32 @kfree(%struct.i40e_pf* %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %128, %116
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @i40e_init_interrupt_scheme(%struct.i40e_pf*) #1

declare dso_local %struct.i40e_vsi** @kcalloc(i64, i32, i32) #1

declare dso_local i32 @i40e_vsi_mem_alloc(%struct.i40e_pf*, i32) #1

declare dso_local i32 @i40e_config_netdev(%struct.i40e_vsi*) #1

declare dso_local i32 @register_netdev(i32) #1

declare dso_local i32 @i40e_dbg_pf_init(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_setup_misc_vector_for_recovery_mode(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_send_version(%struct.i40e_pf*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @i40e_reset_interrupt_capability(%struct.i40e_pf*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(i32) #1

declare dso_local i32 @pci_release_mem_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
