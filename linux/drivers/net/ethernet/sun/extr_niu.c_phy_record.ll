; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_phy_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_phy_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu_parent = type { i32 }
%struct.phy_probe_info = type { i64*, i32**, i64** }

@PHY_TYPE_PMA_PMD = common dso_local global i32 0, align 4
@PHY_TYPE_PCS = common dso_local global i32 0, align 4
@NIU_PHY_ID_MASK = common dso_local global i32 0, align 4
@NIU_PHY_ID_BCM8704 = common dso_local global i32 0, align 4
@NIU_PHY_ID_MRVL88X2011 = common dso_local global i32 0, align 4
@NIU_PHY_ID_BCM5464R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"niu%d: Found PHY %08x type %s at phy_port %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PMA/PMD\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PCS\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MII\00", align 1
@NIU_MAX_PORTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Too many PHY ports\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu_parent*, %struct.phy_probe_info*, i32, i32, i64, i32)* @phy_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_record(%struct.niu_parent* %0, %struct.phy_probe_info* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.niu_parent*, align 8
  %9 = alloca %struct.phy_probe_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.niu_parent* %0, %struct.niu_parent** %8, align 8
  store %struct.phy_probe_info* %1, %struct.phy_probe_info** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %11, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %6
  store i32 0, i32* %7, align 4
  br label %124

26:                                               ; preds = %22
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @PHY_TYPE_PMA_PMD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @PHY_TYPE_PCS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @NIU_PHY_ID_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @NIU_PHY_ID_BCM8704, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @NIU_PHY_ID_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @NIU_PHY_ID_MRVL88X2011, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %124

47:                                               ; preds = %40, %34
  br label %56

48:                                               ; preds = %30
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @NIU_PHY_ID_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @NIU_PHY_ID_BCM5464R, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %124

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.niu_parent*, %struct.niu_parent** %8, align 8
  %58 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @PHY_TYPE_PMA_PMD, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %71

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @PHY_TYPE_PCS, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %64 ], [ %70, %65 ]
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i8* %72, i64 %73)
  %75 = load %struct.phy_probe_info*, %struct.phy_probe_info** %9, align 8
  %76 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NIU_MAX_PORTS, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %124

88:                                               ; preds = %71
  %89 = load %struct.phy_probe_info*, %struct.phy_probe_info** %9, align 8
  %90 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %15, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.phy_probe_info*, %struct.phy_probe_info** %9, align 8
  %98 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %96, i32* %105, align 4
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.phy_probe_info*, %struct.phy_probe_info** %9, align 8
  %108 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %107, i32 0, i32 2
  %109 = load i64**, i64*** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64*, i64** %109, i64 %111
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 %106, i64* %115, align 8
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, 1
  %118 = load %struct.phy_probe_info*, %struct.phy_probe_info** %9, align 8
  %119 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %88, %84, %54, %46, %25
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @pr_info(i8*, i32, i32, i8*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
