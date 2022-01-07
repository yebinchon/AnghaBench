; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_bch_set_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_bch_set_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32, %struct.resources }
%struct.resources = type { i64 }

@HW_BCH_LAYOUTSELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @bch_set_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_set_geometry(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.resources*, align 8
  %5 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %6 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %7 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %6, i32 0, i32 1
  store %struct.resources* %7, %struct.resources** %4, align 8
  %8 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %9 = call i32 @common_nfc_set_geometry(%struct.gpmi_nand_data* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %16 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %14
  %24 = load %struct.resources*, %struct.resources** %4, align 8
  %25 = getelementptr inbounds %struct.resources, %struct.resources* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %28 = call i32 @GPMI_IS_MXS(%struct.gpmi_nand_data* %27)
  %29 = call i32 @gpmi_reset_block(i64 %26, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %40

33:                                               ; preds = %23
  %34 = load %struct.resources*, %struct.resources** %4, align 8
  %35 = getelementptr inbounds %struct.resources, %struct.resources* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HW_BCH_LAYOUTSELECT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 0, i64 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %33, %32
  %41 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %42 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pm_runtime_mark_last_busy(i32 %43)
  %45 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %46 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pm_runtime_put_autosuspend(i32 %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %21, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @common_nfc_set_geometry(%struct.gpmi_nand_data*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @gpmi_reset_block(i64, i32) #1

declare dso_local i32 @GPMI_IS_MXS(%struct.gpmi_nand_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
