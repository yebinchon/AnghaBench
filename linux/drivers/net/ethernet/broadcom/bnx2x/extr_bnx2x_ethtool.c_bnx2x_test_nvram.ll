; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crc_pair = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2x = type { i32 }

@bnx2x_test_nvram.nvram_tbl = internal constant [7 x %struct.crc_pair] [%struct.crc_pair { i32 0, i32 20 }, %struct.crc_pair { i32 20, i32 236 }, %struct.crc_pair { i32 256, i32 848 }, %struct.crc_pair { i32 1104, i32 240 }, %struct.crc_pair { i32 1600, i32 100 }, %struct.crc_pair { i32 1800, i32 112 }, %struct.crc_pair zeroinitializer], align 16
@bnx2x_test_nvram.nvram_tbl2 = internal constant [3 x %struct.crc_pair] [%struct.crc_pair { i32 2024, i32 848 }, %struct.crc_pair { i32 2872, i32 240 }, %struct.crc_pair zeroinitializer], align 16
@CRC_BUFF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"kmalloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"magic value read (rc %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"wrong magic value (0x%08x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Port 0 CRC test-set\0A\00", align 1
@dev_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SHARED_HW_CFG_HIDE_PORT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Port 1 CRC test-set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_test_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_nvram(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i64 @BP_NOMCP(%struct.bnx2x* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

12:                                               ; preds = %1
  %13 = load i32, i32* @CRC_BUFF_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 %13, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %20 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %21 = or i32 %19, %20
  %22 = call i32 (i32, i8*, ...) @DP(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %91

25:                                               ; preds = %12
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = call i32 @bnx2x_nvram_read32(%struct.bnx2x* %26, i32 0, i32* %6, i32 4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %32 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32, i8*, ...) @DP(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %91

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 1721324970
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %41 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, ...) @DP(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %91

47:                                               ; preds = %36
  %48 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %49 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %50 = or i32 %48, %49
  %51 = call i32 (i32, i8*, ...) @DP(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @bnx2x_test_nvram_tbl(%struct.bnx2x* %52, %struct.crc_pair* getelementptr inbounds ([7 x %struct.crc_pair], [7 x %struct.crc_pair]* @bnx2x_test_nvram.nvram_tbl, i64 0, i64 0), i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %91

58:                                               ; preds = %47
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %58
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = call i32 @CHIP_IS_57811xx(%struct.bnx2x* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %62
  %67 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_info, i32 0, i32 0, i32 0), align 4
  %69 = call i32 @SHMEM_RD(%struct.bnx2x* %67, i32 %68)
  %70 = load i32, i32* @SHARED_HW_CFG_HIDE_PORT1, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %76 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %77 = or i32 %75, %76
  %78 = call i32 (i32, i8*, ...) @DP(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @bnx2x_test_nvram_tbl(%struct.bnx2x* %79, %struct.crc_pair* getelementptr inbounds ([3 x %struct.crc_pair], [3 x %struct.crc_pair]* @bnx2x_test_nvram.nvram_tbl2, i64 0, i64 0), i32* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %91

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %62, %58
  %88 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @bnx2x_test_nvram_dirs(%struct.bnx2x* %88, i32* %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %84, %57, %39, %30, %18
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @kfree(i32* %92)
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %11
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_nvram_read32(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_test_nvram_tbl(%struct.bnx2x*, %struct.crc_pair*, i32*) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_57811xx(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_test_nvram_dirs(%struct.bnx2x*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
