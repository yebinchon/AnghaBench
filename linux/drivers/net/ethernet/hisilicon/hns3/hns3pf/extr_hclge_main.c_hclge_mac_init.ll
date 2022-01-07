; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hclge_mac }
%struct.hclge_mac = type { i32, i64, i32, i64, i32, i32 }

@HCLGE_MAC_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Config mac speed dup fail ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Config mac autoneg fail ret=%d\0A\00", align 1
@HNAE3_FEC_USER_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Fec mode init fail, ret = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"set mtu failed ret=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"allocate buffer fail, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_mac_init(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_mac*, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.hclge_mac* %8, %struct.hclge_mac** %4, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @HCLGE_MAC_FULL, align 4
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %14, i32 0, i32 4
  store i32 %11, i32* %15, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @hclge_cfg_mac_speed_dup_hw(%struct.hclge_dev* %16, i32 %21, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %128

38:                                               ; preds = %1
  %39 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @hclge_set_autoneg_en(%struct.hclge_dev* %46, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %128

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %66 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %68 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HNAE3_FEC_USER_DEF, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %64
  %75 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %76 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %77 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @hclge_set_fec_hw(%struct.hclge_dev* %75, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %84 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %128

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %64
  %92 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %93 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %94 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @hclge_set_mac_mtu(%struct.hclge_dev* %92, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %101 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %128

107:                                              ; preds = %91
  %108 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %109 = call i32 @hclge_set_default_loopback(%struct.hclge_dev* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %128

114:                                              ; preds = %107
  %115 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %116 = call i32 @hclge_buffer_alloc(%struct.hclge_dev* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %121 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %112, %99, %82, %55, %30
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @hclge_cfg_mac_speed_dup_hw(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_set_autoneg_en(%struct.hclge_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hclge_set_fec_hw(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_set_mac_mtu(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_set_default_loopback(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_buffer_alloc(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
