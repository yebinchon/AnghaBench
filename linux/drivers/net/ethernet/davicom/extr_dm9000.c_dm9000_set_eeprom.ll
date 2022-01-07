; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i64 }
%struct.board_info = type { i32 }

@DM9000_PLATF_NO_EEPROM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DM_EEPROM_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @dm9000_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm9000_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.board_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.board_info* @to_dm9000_board(%struct.net_device* %14)
  store %struct.board_info* %15, %struct.board_info** %8, align 8
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.board_info*, %struct.board_info** %8, align 8
  %23 = getelementptr inbounds %struct.board_info, %struct.board_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DM9000_PLATF_NO_EEPROM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %3
  %32 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DM_EEPROM_MAGIC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %88

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %76, %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load %struct.board_info*, %struct.board_info** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sdiv i32 %56, 2
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %59 = call i32 @dm9000_read_eeprom(%struct.board_info* %55, i32 %57, i32* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load %struct.board_info*, %struct.board_info** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sdiv i32 %66, 2
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %69 = call i32 @dm9000_write_eeprom(%struct.board_info* %65, i32 %67, i32* %68)
  store i32 1, i32* %11, align 4
  br label %76

70:                                               ; preds = %48
  %71 = load %struct.board_info*, %struct.board_info** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %72, 2
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @dm9000_write_eeprom(%struct.board_info* %71, i32 %73, i32* %74)
  store i32 2, i32* %11, align 4
  br label %76

76:                                               ; preds = %70, %52
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %41

87:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %37, %28
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.board_info* @to_dm9000_board(%struct.net_device*) #1

declare dso_local i32 @dm9000_read_eeprom(%struct.board_info*, i32, i32*) #1

declare dso_local i32 @dm9000_write_eeprom(%struct.board_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
