; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32 }
%struct.bnx2x = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@bnx2x_test_registers.reg_tbl = internal constant [39 x %struct.anon] [%struct.anon { i32 170, i32 165, i32 4, i32 1023 }, %struct.anon { i32 170, i32 164, i32 4, i32 -1 }, %struct.anon { i32 169, i32 163, i32 4, i32 1023 }, %struct.anon { i32 170, i32 142, i32 4, i32 1 }, %struct.anon { i32 175, i32 141, i32 4, i32 2047 }, %struct.anon { i32 166, i32 143, i32 4, i32 2047 }, %struct.anon { i32 170, i32 140, i32 4, i32 16777215 }, %struct.anon { i32 170, i32 139, i32 4, i32 1048575 }, %struct.anon { i32 170, i32 136, i32 8, i32 262143 }, %struct.anon { i32 170, i32 138, i32 4, i32 1048575 }, %struct.anon { i32 170, i32 135, i32 8, i32 262143 }, %struct.anon { i32 170, i32 137, i32 4, i32 1048575 }, %struct.anon { i32 170, i32 134, i32 4, i32 1048575 }, %struct.anon { i32 170, i32 131, i32 4, i32 262143 }, %struct.anon { i32 170, i32 133, i32 40, i32 -1 }, %struct.anon { i32 170, i32 132, i32 40, i32 -1 }, %struct.anon { i32 170, i32 128, i32 4, i32 1 }, %struct.anon { i32 170, i32 129, i32 4, i32 3 }, %struct.anon { i32 170, i32 130, i32 4, i32 255 }, %struct.anon { i32 170, i32 151, i32 4, i32 1 }, %struct.anon { i32 169, i32 160, i32 4, i32 1 }, %struct.anon { i32 169, i32 162, i32 4, i32 1 }, %struct.anon { i32 170, i32 146, i32 4, i32 1 }, %struct.anon { i32 170, i32 161, i32 4, i32 1 }, %struct.anon { i32 170, i32 149, i32 4, i32 7 }, %struct.anon { i32 170, i32 157, i32 68, i32 255 }, %struct.anon { i32 170, i32 158, i32 68, i32 -1 }, %struct.anon { i32 170, i32 155, i32 160, i32 -1 }, %struct.anon { i32 170, i32 156, i32 160, i32 -1 }, %struct.anon { i32 170, i32 152, i32 160, i32 1 }, %struct.anon { i32 170, i32 153, i32 160, i32 65535 }, %struct.anon { i32 170, i32 154, i32 160, i32 65535 }, %struct.anon { i32 170, i32 150, i32 160, i32 4095 }, %struct.anon { i32 169, i32 144, i32 4, i32 1 }, %struct.anon { i32 170, i32 159, i32 4, i32 1 }, %struct.anon { i32 170, i32 147, i32 4, i32 134217727 }, %struct.anon { i32 169, i32 145, i32 24, i32 1 }, %struct.anon { i32 169, i32 148, i32 16, i32 31 }, %struct.anon { i32 170, i32 -1, i32 0, i32 0 }], align 16
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot access eeprom when the interface is down\0A\00", align 1
@BNX2X_CHIP_MASK_E1 = common dso_local global i32 0, align 4
@BNX2X_CHIP_MASK_E1H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"offset 0x%x: val 0x%x != 0x%x mask 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_test_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_registers(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = call i32 @BP_PORT(%struct.bnx2x* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = call i32 @bnx2x_is_nvm_accessible(%struct.bnx2x* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %23 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %24 = or i32 %22, %23
  %25 = call i32 (i32, i8*, ...) @DP(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %139

27:                                               ; preds = %1
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = call i64 @CHIP_IS_E1(%struct.bnx2x* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @BNX2X_CHIP_MASK_E1, align 4
  store i32 %32, i32* %8, align 4
  br label %53

33:                                               ; preds = %27
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @BNX2X_CHIP_MASK_E1H, align 4
  store i32 %38, i32* %8, align 4
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = call i64 @CHIP_IS_E2(%struct.bnx2x* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 168, i32* %8, align 4
  br label %51

44:                                               ; preds = %39
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 166, i32* %8, align 4
  br label %50

49:                                               ; preds = %44
  store i32 167, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %43
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %31
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %133, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %136

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  switch i32 %58, label %61 [
    i32 0, label %59
    i32 1, label %60
  ]

59:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %61

60:                                               ; preds = %57
  store i32 -1, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %60, %59
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %129, %61
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @bnx2x_test_registers.reg_tbl, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %132

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @bnx2x_test_registers.reg_tbl, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 16
  %76 = and i32 %70, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %129

79:                                               ; preds = %69
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @bnx2x_test_registers.reg_tbl, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @bnx2x_test_registers.reg_tbl, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %85, %90
  %92 = add nsw i32 %84, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [39 x %struct.anon], [39 x %struct.anon]* @bnx2x_test_registers.reg_tbl, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %11, align 4
  %98 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @REG_RD(%struct.bnx2x* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @REG_WR(%struct.bnx2x* %101, i32 %102, i32 %105)
  %107 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @REG_RD(%struct.bnx2x* %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @REG_WR(%struct.bnx2x* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %11, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %79
  %122 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i32, i8*, ...) @DP(i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124, i32 %125, i32 %126)
  br label %137

128:                                              ; preds = %79
  br label %129

129:                                              ; preds = %128, %78
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %62

132:                                              ; preds = %62
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %54

136:                                              ; preds = %54
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %121
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %21
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_is_nvm_accessible(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
