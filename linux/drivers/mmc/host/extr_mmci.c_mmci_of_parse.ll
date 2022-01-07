; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mmci_host = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"st,sig-dir-dat0\00", align 1
@MCI_ST_DATA0DIREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"st,sig-dir-dat2\00", align 1
@MCI_ST_DATA2DIREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"st,sig-dir-dat31\00", align 1
@MCI_ST_DATA31DIREN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"st,sig-dir-dat74\00", align 1
@MCI_ST_DATA74DIREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"st,sig-dir-cmd\00", align 1
@MCI_ST_CMDDIREN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"st,sig-pin-fbclk\00", align 1
@MCI_ST_FBCLKEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"st,sig-dir\00", align 1
@MCI_STM32_DIRPOL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"st,neg-edge\00", align 1
@MCI_STM32_CLK_NEGEDGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"st,use-ckin\00", align 1
@MCI_STM32_CLK_SELCKIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"mmc-cap-mmc-highspeed\00", align 1
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"mmc-cap-sd-highspeed\00", align 1
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.mmc_host*)* @mmci_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmci_of_parse(%struct.device_node* %0, %struct.mmc_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.mmci_host*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.mmc_host* %1, %struct.mmc_host** %5, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %9 = call %struct.mmci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mmci_host* %9, %struct.mmci_host** %6, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %11 = call i32 @mmc_of_parse(%struct.mmc_host* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %127

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call i64 @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @MCI_ST_DATA0DIREN, align 4
  %22 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %23 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i64 @of_get_property(%struct.device_node* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @MCI_ST_DATA2DIREN, align 4
  %32 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %33 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i64 @of_get_property(%struct.device_node* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @MCI_ST_DATA31DIREN, align 4
  %42 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %43 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i64 @of_get_property(%struct.device_node* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @MCI_ST_DATA74DIREN, align 4
  %52 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %53 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call i64 @of_get_property(%struct.device_node* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @MCI_ST_CMDDIREN, align 4
  %62 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %63 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %56
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = call i64 @of_get_property(%struct.device_node* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @MCI_ST_FBCLKEN, align 4
  %72 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %73 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %66
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = call i64 @of_get_property(%struct.device_node* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @MCI_STM32_DIRPOL, align 4
  %82 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %83 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.device_node*, %struct.device_node** %4, align 8
  %88 = call i64 @of_get_property(%struct.device_node* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @MCI_STM32_CLK_NEGEDGE, align 4
  %92 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %93 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %86
  %97 = load %struct.device_node*, %struct.device_node** %4, align 8
  %98 = call i64 @of_get_property(%struct.device_node* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @MCI_STM32_CLK_SELCKIN, align 4
  %102 = load %struct.mmci_host*, %struct.mmci_host** %6, align 8
  %103 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %96
  %107 = load %struct.device_node*, %struct.device_node** %4, align 8
  %108 = call i64 @of_get_property(%struct.device_node* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %112 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %113 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %106
  %117 = load %struct.device_node*, %struct.device_node** %4, align 8
  %118 = call i64 @of_get_property(%struct.device_node* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %122 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %123 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %116
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %14
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.mmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
