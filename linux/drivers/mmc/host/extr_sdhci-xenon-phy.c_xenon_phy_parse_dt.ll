; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_phy_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_phy_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.sdhci_host = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"marvell,xenon-phy-type\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"emmc 5.1 phy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenon_phy_parse_dt(%struct.device_node* %0, %struct.sdhci_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.sdhci_host* %1, %struct.sdhci_host** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = call i32 @of_property_read_string(%struct.device_node* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @xenon_add_phy(%struct.device_node* %11, %struct.sdhci_host* %12, i8* %13)
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %18 = call i32 @xenon_add_phy(%struct.device_node* %16, %struct.sdhci_host* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @xenon_add_phy(%struct.device_node*, %struct.sdhci_host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
