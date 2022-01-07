; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid dev_addr 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SFP_EEPROM_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_read_sfp_module_eeprom(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_phy*, align 8
  %9 = alloca %struct.link_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bnx2x*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %8, align 8
  store %struct.link_params* %1, %struct.link_params** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.link_params*, %struct.link_params** %9, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 0
  %21 = load %struct.bnx2x*, %struct.bnx2x** %20, align 8
  store %struct.bnx2x* %21, %struct.bnx2x** %15, align 8
  %22 = load i32*, i32** %13, align 8
  store i32* %22, i32** %17, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 160
  br i1 %24, label %25, label %34

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 162
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @NETIF_MSG_LINK, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @DP(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %86

34:                                               ; preds = %25, %6
  %35 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %8, align 8
  %36 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %41 [
    i32 130, label %38
    i32 129, label %39
    i32 131, label %39
    i32 128, label %40
  ]

38:                                               ; preds = %34
  store i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)* @bnx2x_8726_read_sfp_module_eeprom, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)** %18, align 8
  br label %44

39:                                               ; preds = %34, %34
  store i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)* @bnx2x_8727_read_sfp_module_eeprom, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)** %18, align 8
  br label %44

40:                                               ; preds = %34
  store i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)* @bnx2x_warpcore_read_sfp_module_eeprom, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)** %18, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %86

44:                                               ; preds = %40, %39, %38
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %12, align 8
  %50 = icmp sgt i64 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %53, label %84

53:                                               ; preds = %51
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @SFP_EEPROM_PAGE_SIZE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @SFP_EEPROM_PAGE_SIZE, align 8
  br label %61

59:                                               ; preds = %53
  %60 = load i64, i64* %12, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %16, align 4
  %64 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32)** %18, align 8
  %65 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %8, align 8
  %66 = load %struct.link_params*, %struct.link_params** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 %64(%struct.bnx2x_phy* %65, %struct.link_params* %66, i32 %67, i64 %68, i32 %69, i32* %70, i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %12, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %12, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32*, i32** %17, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %17, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %11, align 8
  br label %45

84:                                               ; preds = %51
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %41, %28
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_8726_read_sfp_module_eeprom(%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_8727_read_sfp_module_eeprom(%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_warpcore_read_sfp_module_eeprom(%struct.bnx2x_phy*, %struct.link_params*, i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
