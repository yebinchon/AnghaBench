; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_alloc_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_alloc_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ti_emif_data = type { i8*, i8*, i8*, %struct.TYPE_4__, i8*, %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_4__ = type { i8*, %struct.emif_regs_amx3* }
%struct.emif_regs_amx3 = type { i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to get sram pool for ocmcram code\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ti_emif_sram_sz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Unable to allocate code memory from ocmcram\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to get sram pool for ocmcram data\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unable to allocate data memory from ocmcram\0A\00", align 1
@ti_emif_save_context = common dso_local global i64 0, align 8
@ti_emif_enter_sr = common dso_local global i64 0, align 8
@ti_emif_abort_sr = common dso_local global i64 0, align 8
@ti_emif_restore_context = common dso_local global i64 0, align 8
@ti_emif_exit_sr = common dso_local global i64 0, align 8
@ti_emif_run_hw_leveling = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ti_emif_data*)* @ti_emif_alloc_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_emif_alloc_sram(%struct.device* %0, %struct.ti_emif_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_emif_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ti_emif_data* %1, %struct.ti_emif_data** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = call i8* @of_gen_pool_get(%struct.device_node* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %14 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %16 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %149

24:                                               ; preds = %2
  %25 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %26 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @ti_emif_sram_sz, align 4
  %29 = call i8* @gen_pool_alloc(i8* %27, i32 %28)
  %30 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %31 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %33 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %149

41:                                               ; preds = %24
  %42 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %43 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %46 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @gen_pool_virt_to_phys(i8* %44, i8* %47)
  %49 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %50 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call i8* @of_gen_pool_get(%struct.device_node* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  %53 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %54 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %56 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %41
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %139

64:                                               ; preds = %41
  %65 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %66 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @gen_pool_alloc(i8* %67, i32 4)
  %69 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %70 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %72 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %64
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %139

80:                                               ; preds = %64
  %81 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %82 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %85 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @gen_pool_virt_to_phys(i8* %83, i8* %86)
  %88 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %89 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %91 = load i64, i64* @ti_emif_save_context, align 8
  %92 = call i8* @sram_suspend_address(%struct.ti_emif_data* %90, i64 %91)
  %93 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %94 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i8* %92, i8** %95, align 8
  %96 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %97 = load i64, i64* @ti_emif_enter_sr, align 8
  %98 = call i8* @sram_suspend_address(%struct.ti_emif_data* %96, i64 %97)
  %99 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %100 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i8* %98, i8** %101, align 8
  %102 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %103 = load i64, i64* @ti_emif_abort_sr, align 8
  %104 = call i8* @sram_suspend_address(%struct.ti_emif_data* %102, i64 %103)
  %105 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %106 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i8* %104, i8** %107, align 8
  %108 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %109 = load i64, i64* @ti_emif_restore_context, align 8
  %110 = call i8* @sram_resume_address(%struct.ti_emif_data* %108, i64 %109)
  %111 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %112 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i8* %110, i8** %113, align 8
  %114 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %115 = load i64, i64* @ti_emif_exit_sr, align 8
  %116 = call i8* @sram_resume_address(%struct.ti_emif_data* %114, i64 %115)
  %117 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %118 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %121 = load i64, i64* @ti_emif_run_hw_leveling, align 8
  %122 = call i8* @sram_resume_address(%struct.ti_emif_data* %120, i64 %121)
  %123 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %124 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %127 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = bitcast i8* %128 to %struct.emif_regs_amx3*
  %130 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %131 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store %struct.emif_regs_amx3* %129, %struct.emif_regs_amx3** %132, align 8
  %133 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %134 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %137 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  store i32 0, i32* %3, align 4
  br label %149

139:                                              ; preds = %75, %59
  %140 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %141 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.ti_emif_data*, %struct.ti_emif_data** %5, align 8
  %144 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* @ti_emif_sram_sz, align 4
  %147 = call i32 @gen_pool_free(i8* %142, i8* %145, i32 %146)
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %139, %80, %36, %19
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i8* @of_gen_pool_get(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @gen_pool_alloc(i8*, i32) #1

declare dso_local i8* @gen_pool_virt_to_phys(i8*, i8*) #1

declare dso_local i8* @sram_suspend_address(%struct.ti_emif_data*, i64) #1

declare dso_local i8* @sram_resume_address(%struct.ti_emif_data*, i64) #1

declare dso_local i32 @gen_pool_free(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
