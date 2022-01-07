; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8531_pre_init_seq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8531_pre_init_seq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.phy_device = type { i32 }

@__const.vsc8531_pre_init_seq_set.init_seq = private unnamed_addr constant [4 x %struct.reg_val] [%struct.reg_val { i32 3984, i32 6850944, i32 0, i32 0 }, %struct.reg_val { i32 1686, i32 3, i32 0, i32 0 }, %struct.reg_val { i32 2042, i32 5246991, i32 0, i32 0 }, %struct.reg_val { i32 5766, i32 4, i32 0, i32 0 }], align 16
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@MSCC_PHY_EXT_CNTL_STATUS = common dso_local global i32 0, align 4
@SMI_BROADCAST_WR_EN = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_TEST = common dso_local global i32 0, align 4
@MSCC_PHY_TEST_PAGE_24 = common dso_local global i32 0, align 4
@MSCC_PHY_TEST_PAGE_5 = common dso_local global i32 0, align 4
@MSCC_PHY_TEST_PAGE_8 = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_TR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc8531_pre_init_seq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8531_pre_init_seq_set(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct.reg_val], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = bitcast [4 x %struct.reg_val]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x %struct.reg_val]* @__const.vsc8531_pre_init_seq_set.init_seq to i8*), i64 64, i1 false)
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %11 = load i32, i32* @MSCC_PHY_EXT_CNTL_STATUS, align 4
  %12 = load i32, i32* @SMI_BROADCAST_WR_EN, align 4
  %13 = load i32, i32* @SMI_BROADCAST_WR_EN, align 4
  %14 = call i32 @phy_modify_paged(%struct.phy_device* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %88

19:                                               ; preds = %1
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = load i32, i32* @MSCC_PHY_PAGE_TEST, align 4
  %22 = load i32, i32* @MSCC_PHY_TEST_PAGE_24, align 4
  %23 = call i32 @phy_modify_paged(%struct.phy_device* %20, i32 %21, i32 %22, i32 0, i32 1024)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %88

28:                                               ; preds = %19
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = load i32, i32* @MSCC_PHY_PAGE_TEST, align 4
  %31 = load i32, i32* @MSCC_PHY_TEST_PAGE_5, align 4
  %32 = call i32 @phy_modify_paged(%struct.phy_device* %29, i32 %30, i32 %31, i32 2560, i32 3584)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %88

37:                                               ; preds = %28
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = load i32, i32* @MSCC_PHY_PAGE_TEST, align 4
  %40 = load i32, i32* @MSCC_PHY_TEST_PAGE_8, align 4
  %41 = call i32 @phy_modify_paged(%struct.phy_device* %38, i32 %39, i32 %40, i32 32768, i32 32768)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %88

46:                                               ; preds = %37
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = load i32, i32* @MSCC_PHY_PAGE_TR, align 4
  %52 = call i32 @phy_select_page(%struct.phy_device* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %79

56:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, i32* %6, align 4
  %59 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(%struct.reg_val* %59)
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @vsc85xx_tr_write(%struct.phy_device* %63, i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %55
  %80 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @phy_restore_page(%struct.phy_device* %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %79, %44, %35, %26, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @phy_modify_paged(%struct.phy_device*, i32, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @phy_select_page(%struct.phy_device*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val*) #2

declare dso_local i32 @vsc85xx_tr_write(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @phy_restore_page(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
