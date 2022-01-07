; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_check_for_serdes_link_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_check_for_serdes_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RXCW = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_RXCW_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NOT RXing /C/, disable AutoNeg and force link.\0A\00", align 1
@TXCW = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"RXing /C/, enable AutoNeg and stop forcing link.\0A\00", align 1
@E1000_RXCW_SYNCH = common dso_local global i32 0, align 4
@E1000_RXCW_IV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"SERDES: Link up - forced.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SERDES: Link down - force failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"SERDES: Link up - autoneg completed successfully.\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"SERDES: Link down - invalidcodewords detected in autoneg.\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"SERDES: Link down - no sync.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"SERDES: Link down - autoneg failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_check_for_serdes_link_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_for_serdes_link_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* @CTRL, align 4
  %9 = call i32 @er32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @STATUS, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @RXCW, align 4
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @E1000_STATUS_LU, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @E1000_RXCW_C, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %18
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %160

31:                                               ; preds = %23
  %32 = call i32 @e_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @TXCW, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @E1000_TXCW_ANE, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @ew32(i32 %33, i32 %39)
  %41 = load i32, i32* @CTRL, align 4
  %42 = call i32 @er32(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @E1000_CTRL_SLU, align 4
  %44 = load i32, i32* @E1000_CTRL_FD, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @CTRL, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ew32(i32 %48, i32 %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = call i64 @e1000_config_fc_after_link_up(%struct.e1000_hw* %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %31
  %56 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %160

57:                                               ; preds = %31
  br label %114

58:                                               ; preds = %18, %1
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @E1000_CTRL_SLU, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @E1000_RXCW_C, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = call i32 @e_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @TXCW, align 4
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ew32(i32 %70, i32 %73)
  %75 = load i32, i32* @CTRL, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @E1000_CTRL_SLU, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @ew32(i32 %75, i32 %79)
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 2
  store i32 1, i32* %82, align 4
  br label %113

83:                                               ; preds = %63, %58
  %84 = load i32, i32* @E1000_TXCW_ANE, align 4
  %85 = load i32, i32* @TXCW, align 4
  %86 = call i32 @er32(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %112, label %89

89:                                               ; preds = %83
  %90 = call i32 @udelay(i32 10)
  %91 = load i32, i32* @RXCW, align 4
  %92 = call i32 @er32(i32 %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @E1000_RXCW_IV, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %103, i32 0, i32 2
  store i32 1, i32* %104, align 4
  %105 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %102, %97
  br label %111

107:                                              ; preds = %89
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 2
  store i32 0, i32* %109, align 4
  %110 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %107, %106
  br label %112

112:                                              ; preds = %111, %83
  br label %113

113:                                              ; preds = %112, %68
  br label %114

114:                                              ; preds = %113, %57
  %115 = load i32, i32* @E1000_TXCW_ANE, align 4
  %116 = load i32, i32* @TXCW, align 4
  %117 = call i32 @er32(i32 %116)
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %159

120:                                              ; preds = %114
  %121 = load i32, i32* @STATUS, align 4
  %122 = call i32 @er32(i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @E1000_STATUS_LU, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %120
  %128 = call i32 @udelay(i32 10)
  %129 = load i32, i32* @RXCW, align 4
  %130 = call i32 @er32(i32 %129)
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %127
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @E1000_RXCW_IV, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 2
  store i32 1, i32* %142, align 4
  %143 = call i32 @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %148

144:                                              ; preds = %135
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 2
  store i32 0, i32* %146, align 4
  %147 = call i32 @e_dbg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %140
  br label %153

149:                                              ; preds = %127
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %151 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %150, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = call i32 @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %148
  br label %158

154:                                              ; preds = %120
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %156 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %155, i32 0, i32 2
  store i32 0, i32* %156, align 4
  %157 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %153
  br label %159

159:                                              ; preds = %158, %114
  br label %160

160:                                              ; preds = %159, %55, %28
  %161 = load i64, i64* %6, align 8
  ret i64 %161
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
