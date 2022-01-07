; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_check_for_serdes_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_check_for_serdes_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RXCW = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_RXCW_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"NOT Rx'ing /C/, disable AutoNeg and force link.\0A\00", align 1
@TXCW = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error configuring flow control\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Rx'ing /C/, enable AutoNeg and stop forcing link.\0A\00", align 1
@E1000_RXCW_SYNCH = common dso_local global i32 0, align 4
@E1000_RXCW_IV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"SERDES: Link up - forced.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SERDES: Link down - force failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"SERDES: Link up - autoneg completed successfully.\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"SERDES: Link down - invalid codewords detected in autoneg.\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"SERDES: Link down - no sync.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"SERDES: Link down - autoneg failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_check_for_serdes_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = load i32, i32* @CTRL, align 4
  %12 = call i32 @er32(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @STATUS, align 4
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @RXCW, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @E1000_STATUS_LU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @E1000_RXCW_C, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %21
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  store i64 0, i64* %2, align 8
  br label %164

34:                                               ; preds = %26
  %35 = call i32 @e_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @TXCW, align 4
  %37 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @E1000_TXCW_ANE, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @ew32(i32 %36, i32 %42)
  %44 = load i32, i32* @CTRL, align 4
  %45 = call i32 @er32(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @E1000_CTRL_SLU, align 4
  %47 = load i32, i32* @E1000_CTRL_FD, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @CTRL, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ew32(i32 %51, i32 %52)
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = call i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw* %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %34
  %59 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* %8, align 8
  store i64 %60, i64* %2, align 8
  br label %164

61:                                               ; preds = %34
  br label %118

62:                                               ; preds = %21, %1
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @E1000_CTRL_SLU, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @E1000_RXCW_C, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = call i32 @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @TXCW, align 4
  %75 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ew32(i32 %74, i32 %77)
  %79 = load i32, i32* @CTRL, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @E1000_CTRL_SLU, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @ew32(i32 %79, i32 %83)
  %85 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  br label %117

87:                                               ; preds = %67, %62
  %88 = load i32, i32* @E1000_TXCW_ANE, align 4
  %89 = load i32, i32* @TXCW, align 4
  %90 = call i32 @er32(i32 %89)
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %116, label %93

93:                                               ; preds = %87
  %94 = call i32 @usleep_range(i32 10, i32 20)
  %95 = load i32, i32* @RXCW, align 4
  %96 = call i32 @er32(i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %93
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @E1000_RXCW_IV, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %108 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %107, i32 0, i32 2
  store i32 1, i32* %108, align 4
  %109 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %101
  br label %115

111:                                              ; preds = %93
  %112 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %113 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %112, i32 0, i32 2
  store i32 0, i32* %113, align 4
  %114 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %110
  br label %116

116:                                              ; preds = %115, %87
  br label %117

117:                                              ; preds = %116, %72
  br label %118

118:                                              ; preds = %117, %61
  %119 = load i32, i32* @E1000_TXCW_ANE, align 4
  %120 = load i32, i32* @TXCW, align 4
  %121 = call i32 @er32(i32 %120)
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %163

124:                                              ; preds = %118
  %125 = load i32, i32* @STATUS, align 4
  %126 = call i32 @er32(i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @E1000_STATUS_LU, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %124
  %132 = call i32 @usleep_range(i32 10, i32 20)
  %133 = load i32, i32* @RXCW, align 4
  %134 = call i32 @er32(i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @E1000_RXCW_SYNCH, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %131
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @E1000_RXCW_IV, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %145, i32 0, i32 2
  store i32 1, i32* %146, align 4
  %147 = call i32 @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %152

148:                                              ; preds = %139
  %149 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %149, i32 0, i32 2
  store i32 0, i32* %150, align 4
  %151 = call i32 @e_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  br label %152

152:                                              ; preds = %148, %144
  br label %157

153:                                              ; preds = %131
  %154 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %155 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %154, i32 0, i32 2
  store i32 0, i32* %155, align 4
  %156 = call i32 @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %157

157:                                              ; preds = %153, %152
  br label %162

158:                                              ; preds = %124
  %159 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %160 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %159, i32 0, i32 2
  store i32 0, i32* %160, align 4
  %161 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %157
  br label %163

163:                                              ; preds = %162, %118
  store i64 0, i64* %2, align 8
  br label %164

164:                                              ; preds = %163, %58, %31
  %165 = load i64, i64* %2, align 8
  ret i64 %165
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000e_config_fc_after_link_up(%struct.e1000_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
