; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_mii_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_mii_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32 (i32, i32, i32)*, i32, i32, i64 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@LPA_1000FULL = common dso_local global i32 0, align 4
@LPA_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_if_info*)* @mii_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mii_speed(%struct.mii_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_if_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mii_if_info* %0, %struct.mii_if_info** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %11 = call i32 @mii_link_ok(%struct.mii_if_info* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

14:                                               ; preds = %1
  %15 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %16 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %16, align 8
  %18 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %19 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %22 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MII_BMSR, align 4
  %25 = call i32 %17(i32 %20, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %94

31:                                               ; preds = %14
  %32 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %33 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %32, i32 0, i32 0
  %34 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %33, align 8
  %35 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %36 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %39 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MII_ADVERTISE, align 4
  %42 = call i32 %34(i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %44 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %43, i32 0, i32 0
  %45 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %44, align 8
  %46 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %47 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %50 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MII_LPA, align 4
  %53 = call i32 %45(i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @mii_nway_result(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %59 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %31
  %63 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %64 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %63, i32 0, i32 0
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %67 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mii_if_info*, %struct.mii_if_info** %3, align 8
  %70 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MII_STAT1000, align 4
  %73 = call i32 %65(i32 %68, i32 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %62, %31
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @LPA_1000FULL, align 4
  %77 = load i32, i32* @LPA_1000HALF, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %91

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @ADVERTISE_100FULL, align 4
  %85 = load i32, i32* @ADVERTISE_100HALF, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 100, i32 10
  br label %91

91:                                               ; preds = %82, %81
  %92 = phi i32 [ 1000, %81 ], [ %90, %82 ]
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %30, %13
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @mii_link_ok(%struct.mii_if_info*) #1

declare dso_local i32 @mii_nway_result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
