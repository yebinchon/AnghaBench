; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.realtek_smi* }
%struct.realtek_smi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.realtek_smi*, i32)* }
%struct.rtl8366_vlan_4k = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s filtering on port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_vlan_filtering(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.realtek_smi*, align 8
  %9 = alloca %struct.rtl8366_vlan_4k, align 4
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %12, align 8
  store %struct.realtek_smi* %13, %struct.realtek_smi** %8, align 8
  %14 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %15 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.realtek_smi*, i32)*, i32 (%struct.realtek_smi*, i32)** %17, align 8
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 %18(%struct.realtek_smi* %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %29 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %38 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_4k*)** %40, align 8
  %42 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 %41(%struct.realtek_smi* %42, i32 %44, %struct.rtl8366_vlan_4k* %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %27
  %51 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rtl8366_set_vlan(%struct.realtek_smi* %51, i32 %53, i32 %55, i32 %57, i32 1)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %48, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

declare dso_local i32 @rtl8366_set_vlan(%struct.realtek_smi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
