; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@SFP_EEPROM_PAGE_SIZE = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Reading from eeprom is limited to 16 bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_WA_PWR_ITER = common dso_local global i64 0, align 8
@I2C_WA_RETRY_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, i64, i32, i64, i64*, i64)* @bnx2x_warpcore_read_sfp_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_warpcore_read_sfp_module_eeprom(%struct.bnx2x_phy* %0, %struct.link_params* %1, i64 %2, i32 %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_phy*, align 8
  %10 = alloca %struct.link_params*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %9, align 8
  store %struct.link_params* %1, %struct.link_params** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %23 = load %struct.link_params*, %struct.link_params** %10, align 8
  %24 = getelementptr inbounds %struct.link_params, %struct.link_params* %23, i32 0, i32 0
  %25 = load %struct.bnx2x*, %struct.bnx2x** %24, align 8
  store %struct.bnx2x* %25, %struct.bnx2x** %22, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @SFP_EEPROM_PAGE_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load i32, i32* @NETIF_MSG_LINK, align 4
  %31 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %102

34:                                               ; preds = %7
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, -4
  store i32 %36, i32* %21, align 4
  br label %37

37:                                               ; preds = %66, %34
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %19, align 8
  %42 = load i64, i64* @I2C_WA_PWR_ITER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.link_params*, %struct.link_params** %10, align 8
  %46 = call i32 @bnx2x_warpcore_power_module(%struct.link_params* %45, i32 0)
  %47 = call i32 @usleep_range(i32 1000, i32 2000)
  %48 = load %struct.link_params*, %struct.link_params** %10, align 8
  %49 = call i32 @bnx2x_warpcore_power_module(%struct.link_params* %48, i32 1)
  br label %50

50:                                               ; preds = %44, %40, %37
  %51 = load %struct.link_params*, %struct.link_params** %10, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %22, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %21, align 4
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %57 = call i32 @bnx2x_bsc_read(%struct.link_params* %51, %struct.bnx2x* %52, i64 %53, i32 %54, i32 0, i64 %55, i32* %56)
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* %19, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %19, align 8
  %64 = load i64, i64* @I2C_WA_RETRY_CNT, align 8
  %65 = icmp slt i64 %63, %64
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %37, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %21, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %96, %71
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %21, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = icmp slt i64 %77, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %87 = bitcast i32* %86 to i64*
  %88 = load i64, i64* %17, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %14, align 8
  %92 = load i64, i64* %18, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  %94 = load i64, i64* %18, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %18, align 8
  br label %96

96:                                               ; preds = %85
  %97 = load i64, i64* %17, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %17, align 8
  br label %76

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99, %68
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %29
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_warpcore_power_module(%struct.link_params*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @bnx2x_bsc_read(%struct.link_params*, %struct.bnx2x*, i64, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
