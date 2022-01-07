; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-zx.c_dw_mci_zx_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-zx.c_dw_mci_zx_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.dw_mci_zx_priv_data*, %struct.TYPE_3__* }
%struct.dw_mci_zx_priv_data = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"zte,aon-syscon\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't get syscon: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_zx_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_zx_parse_dt(%struct.dw_mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.dw_mci_zx_priv_data*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  %9 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %10 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %19)
  store %struct.regmap* %20, %struct.regmap** %7, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call i32 @of_node_put(%struct.device_node* %21)
  %23 = load %struct.regmap*, %struct.regmap** %7, align 8
  %24 = call i64 @IS_ERR(%struct.regmap* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.regmap*, %struct.regmap** %7, align 8
  %28 = call i32 @PTR_ERR(%struct.regmap* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %35 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(%struct.TYPE_3__* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %26
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %61

41:                                               ; preds = %18
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

43:                                               ; preds = %41
  %44 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %45 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.dw_mci_zx_priv_data* @devm_kzalloc(%struct.TYPE_3__* %46, i32 8, i32 %47)
  store %struct.dw_mci_zx_priv_data* %48, %struct.dw_mci_zx_priv_data** %6, align 8
  %49 = load %struct.dw_mci_zx_priv_data*, %struct.dw_mci_zx_priv_data** %6, align 8
  %50 = icmp ne %struct.dw_mci_zx_priv_data* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %61

54:                                               ; preds = %43
  %55 = load %struct.regmap*, %struct.regmap** %7, align 8
  %56 = load %struct.dw_mci_zx_priv_data*, %struct.dw_mci_zx_priv_data** %6, align 8
  %57 = getelementptr inbounds %struct.dw_mci_zx_priv_data, %struct.dw_mci_zx_priv_data* %56, i32 0, i32 0
  store %struct.regmap* %55, %struct.regmap** %57, align 8
  %58 = load %struct.dw_mci_zx_priv_data*, %struct.dw_mci_zx_priv_data** %6, align 8
  %59 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %60 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %59, i32 0, i32 0
  store %struct.dw_mci_zx_priv_data* %58, %struct.dw_mci_zx_priv_data** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %51, %42, %39
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local %struct.dw_mci_zx_priv_data* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
