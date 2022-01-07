; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.realtek_smi* }
%struct.realtek_smi = type { i32, i32, i32, %struct.TYPE_2__*, %struct.rtl8366_mib_counter* }
%struct.TYPE_2__ = type { i32 (%struct.realtek_smi*, i32, %struct.rtl8366_mib_counter*, i32*)* }
%struct.rtl8366_mib_counter = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"error reading MIB counter %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8366_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.realtek_smi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl8366_mib_counter*, align 8
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.realtek_smi*, %struct.realtek_smi** %13, align 8
  store %struct.realtek_smi* %14, %struct.realtek_smi** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %17 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %63

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %60, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %25 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  %29 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %30 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %29, i32 0, i32 4
  %31 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %31, i64 %33
  store %struct.rtl8366_mib_counter* %34, %struct.rtl8366_mib_counter** %10, align 8
  %35 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %36 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.realtek_smi*, i32, %struct.rtl8366_mib_counter*, i32*)*, i32 (%struct.realtek_smi*, i32, %struct.rtl8366_mib_counter*, i32*)** %38, align 8
  %40 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %10, align 8
  %43 = call i32 %39(%struct.realtek_smi* %40, i32 %41, %struct.rtl8366_mib_counter* %42, i32* %11)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %28
  %47 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %48 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %10, align 8
  %51 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %46, %28
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %22

63:                                               ; preds = %20, %22
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
