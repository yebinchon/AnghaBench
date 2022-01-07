; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rk3288_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rk3288_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.dw_mci_rockchip_priv_data*, %struct.TYPE_4__* }
%struct.dw_mci_rockchip_priv_data = type { i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rockchip,desired-num-phases\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"rockchip,default-sample-phase\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ciu-drive\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ciu-drive not available\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ciu-sample\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ciu-sample not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_rk3288_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_rk3288_parse_dt(%struct.dw_mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.dw_mci_rockchip_priv_data*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  %6 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %7 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %12 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dw_mci_rockchip_priv_data* @devm_kzalloc(%struct.TYPE_4__* %13, i32 24, i32 %14)
  store %struct.dw_mci_rockchip_priv_data* %15, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %16 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %17 = icmp ne %struct.dw_mci_rockchip_priv_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %77

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %24 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %23, i32 0, i32 0
  %25 = call i64 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %29 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %28, i32 0, i32 0
  store i32 360, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %33 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %32, i32 0, i32 1
  %34 = call i64 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %38 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %41 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i8* @devm_clk_get(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %45 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %47 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %53 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @dev_dbg(%struct.TYPE_4__* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %58 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i8* @devm_clk_get(%struct.TYPE_4__* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %62 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %64 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %70 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @dev_dbg(%struct.TYPE_4__* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %56
  %74 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %5, align 8
  %75 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %76 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %75, i32 0, i32 0
  store %struct.dw_mci_rockchip_priv_data* %74, %struct.dw_mci_rockchip_priv_data** %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.dw_mci_rockchip_priv_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
