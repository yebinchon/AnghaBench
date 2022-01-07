; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_get_vlan_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_get_vlan_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32 }
%struct.rtl8366_vlan_mc = type { i64, i64, i64, i64, i64 }

@RTL8366RB_NUM_VLANS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_VID_MASK = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_PRIORITY_SHIFT = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_PRIORITY_MASK = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_UNTAG_SHIFT = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_UNTAG_MASK = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_MEMBER_MASK = common dso_local global i64 0, align 8
@RTL8366RB_VLAN_FID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*, i64, %struct.rtl8366_vlan_mc*)* @rtl8366rb_get_vlan_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_get_vlan_mc(%struct.realtek_smi* %0, i64 %1, %struct.rtl8366_vlan_mc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.realtek_smi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl8366_vlan_mc*, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rtl8366_vlan_mc* %2, %struct.rtl8366_vlan_mc** %7, align 8
  %11 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %12 = call i32 @memset(%struct.rtl8366_vlan_mc* %11, i8 signext 0, i32 40)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @RTL8366RB_NUM_VLANS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.realtek_smi*, %struct.realtek_smi** %5, align 8
  %25 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @RTL8366RB_VLAN_MC_BASE(i64 %27)
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 %33
  %35 = call i32 @regmap_read(i32 %26, i64 %31, i64* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %20

44:                                               ; preds = %20
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %46 = load i64, i64* %45, align 16
  %47 = load i64, i64* @RTL8366RB_VLAN_VID_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %50 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = load i64, i64* @RTL8366RB_VLAN_PRIORITY_SHIFT, align 8
  %54 = ashr i64 %52, %53
  %55 = load i64, i64* @RTL8366RB_VLAN_PRIORITY_MASK, align 8
  %56 = and i64 %54, %55
  %57 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %58 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RTL8366RB_VLAN_UNTAG_SHIFT, align 8
  %62 = ashr i64 %60, %61
  %63 = load i64, i64* @RTL8366RB_VLAN_UNTAG_MASK, align 8
  %64 = and i64 %62, %63
  %65 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %66 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RTL8366RB_VLAN_MEMBER_MASK, align 8
  %70 = and i64 %68, %69
  %71 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %72 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %74 = load i64, i64* %73, align 16
  %75 = load i64, i64* @RTL8366RB_VLAN_FID_MASK, align 8
  %76 = and i64 %74, %75
  %77 = load %struct.rtl8366_vlan_mc*, %struct.rtl8366_vlan_mc** %7, align 8
  %78 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %44, %38, %16
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.rtl8366_vlan_mc*, i8 signext, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

declare dso_local i64 @RTL8366RB_VLAN_MC_BASE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
