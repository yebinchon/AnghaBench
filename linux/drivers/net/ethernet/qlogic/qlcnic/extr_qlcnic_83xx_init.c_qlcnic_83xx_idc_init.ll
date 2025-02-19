; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_idc_init(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %5 = load i32, i32* @EIO, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = call i32 @qlcnic_83xx_setup_idc_parameters(%struct.qlcnic_adapter* %7)
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = call i64 @qlcnic_83xx_get_reset_instruction_template(%struct.qlcnic_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = call i32 @qlcnic_83xx_idc_check_driver_presence_reg(%struct.qlcnic_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = call i64 @qlcnic_83xx_idc_first_to_load_function_handler(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %18
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = call i64 @qlcnic_83xx_idc_check_major_version(%struct.qlcnic_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %25
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter* %35, i32 0, i32 1)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %30, %22, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @qlcnic_83xx_setup_idc_parameters(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_get_reset_instruction_template(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_check_driver_presence_reg(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_idc_first_to_load_function_handler(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_idc_check_major_version(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
