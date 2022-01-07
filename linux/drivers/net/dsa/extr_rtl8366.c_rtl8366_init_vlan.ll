; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_init_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_init_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"VLAN%d port mask for port %d, %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"VLAN%d port %d, PVID set to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_init_vlan(%struct.realtek_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %3, align 8
  %7 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %8 = call i32 @rtl8366_reset_vlan(%struct.realtek_smi* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %79, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %17 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %23 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %28 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @GENMASK(i32 %30, i32 0)
  store i32 %31, i32* %6, align 4
  br label %40

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %36 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %34, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %42 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_info(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @rtl8366_set_vlan(%struct.realtek_smi* %49, i32 %51, i32 %52, i32 %53, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %85

59:                                               ; preds = %40
  %60 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %61 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %67)
  %69 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @rtl8366_set_pvid(%struct.realtek_smi* %69, i32 %70, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %85

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %14

82:                                               ; preds = %14
  %83 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %84 = call i32 @rtl8366_enable_vlan(%struct.realtek_smi* %83, i32 1)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %76, %57, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @rtl8366_reset_vlan(%struct.realtek_smi*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtl8366_set_vlan(%struct.realtek_smi*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8366_set_pvid(%struct.realtek_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_enable_vlan(%struct.realtek_smi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
