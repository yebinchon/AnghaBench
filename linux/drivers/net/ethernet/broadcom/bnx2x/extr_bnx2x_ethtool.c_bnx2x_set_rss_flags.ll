; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_rss_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_rss_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Set rss flags command parameters: flow type = %d, data = %llu\0A\00", align 1
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"57710, 57711 boards don't support RSS according to UDP 4-tuple\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"rss re-configured, UDP 4-tupple %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.ethtool_rxnfc*)* @bnx2x_set_rss_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_rss_flags(%struct.bnx2x* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %7 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @DP(i32 %7, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %171 [
    i32 131, label %18
    i32 130, label %18
    i32 129, label %37
    i32 128, label %37
    i32 136, label %145
    i32 135, label %145
    i32 133, label %160
    i32 143, label %160
    i32 141, label %160
    i32 139, label %160
    i32 132, label %160
    i32 142, label %160
    i32 140, label %160
    i32 138, label %160
    i32 134, label %160
    i32 137, label %160
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RXH_IP_SRC, align 4
  %23 = load i32, i32* @RXH_IP_DST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RXH_L4_B_0_1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RXH_L4_B_2_3, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %21, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %33 = call i32 (i32, i8*, ...) @DP(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %174

36:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %174

37:                                               ; preds = %2, %2
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RXH_IP_SRC, align 4
  %42 = load i32, i32* @RXH_IP_DST, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RXH_L4_B_0_1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RXH_L4_B_2_3, align 4
  %47 = or i32 %45, %46
  %48 = icmp eq i32 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %63

50:                                               ; preds = %37
  %51 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RXH_IP_SRC, align 4
  %55 = load i32, i32* @RXH_IP_DST, align 4
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %174

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %65 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %72 = call i32 (i32, i8*, ...) @DP(i32 %71, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %174

75:                                               ; preds = %67, %63
  %76 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 129
  br i1 %79, label %80, label %109

80:                                               ; preds = %75
  %81 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %97 = call i32 (i32, i8*, ...) @DP(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %99 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BNX2X_STATE_OPEN, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %87
  %104 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %105 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %106 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %105, i32 0, i32 0
  %107 = call i32 @bnx2x_rss(%struct.bnx2x* %104, %struct.TYPE_2__* %106, i32 0, i32 1)
  store i32 %107, i32* %3, align 4
  br label %174

108:                                              ; preds = %87
  br label %144

109:                                              ; preds = %80, %75
  %110 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %111 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 128
  br i1 %113, label %114, label %143

114:                                              ; preds = %109
  %115 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %116 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %114
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %124 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %131 = call i32 (i32, i8*, ...) @DP(i32 %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %133 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BNX2X_STATE_OPEN, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %121
  %138 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %139 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %140 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %139, i32 0, i32 0
  %141 = call i32 @bnx2x_rss(%struct.bnx2x* %138, %struct.TYPE_2__* %140, i32 0, i32 1)
  store i32 %141, i32* %3, align 4
  br label %174

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %114, %109
  br label %144

144:                                              ; preds = %143, %108
  store i32 0, i32* %3, align 4
  br label %174

145:                                              ; preds = %2, %2
  %146 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %147 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RXH_IP_SRC, align 4
  %150 = load i32, i32* @RXH_IP_DST, align 4
  %151 = or i32 %149, %150
  %152 = xor i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %145
  %155 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %156 = call i32 (i32, i8*, ...) @DP(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %174

159:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %174

160:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %161 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %162 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %167 = call i32 (i32, i8*, ...) @DP(i32 %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %174

170:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %174

171:                                              ; preds = %2
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %171, %170, %165, %159, %154, %144, %137, %103, %70, %59, %36, %31
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_rss(%struct.bnx2x*, %struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
