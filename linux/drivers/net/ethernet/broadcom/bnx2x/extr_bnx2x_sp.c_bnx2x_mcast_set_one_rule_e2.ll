; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_set_one_rule_e2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_set_one_rule_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { i32, %struct.TYPE_5__, %struct.bnx2x_raw_obj }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2x_raw_obj = type { i32, i64 }
%union.bnx2x_mcast_config_data = type { i32 }
%struct.eth_multicast_rules_ramrod_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ETH_MULTICAST_RULES_CMD_IS_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s bin %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Setting\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Clearing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mcast_obj*, i32, %union.bnx2x_mcast_config_data*, i32)* @bnx2x_mcast_set_one_rule_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_mcast_set_one_rule_e2(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1, i32 %2, %union.bnx2x_mcast_config_data* %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_mcast_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.bnx2x_mcast_config_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_raw_obj*, align 8
  %12 = alloca %struct.eth_multicast_rules_ramrod_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.bnx2x_mcast_config_data* %3, %union.bnx2x_mcast_config_data** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %16, i32 0, i32 2
  store %struct.bnx2x_raw_obj* %17, %struct.bnx2x_raw_obj** %11, align 8
  %18 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %19 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.eth_multicast_rules_ramrod_data*
  store %struct.eth_multicast_rules_ramrod_data* %21, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %22 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %23 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %26 = call i32 @bnx2x_mcast_get_rx_tx_flag(%struct.bnx2x_mcast_obj* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 132
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 130
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %29, %5
  %36 = load i32, i32* @ETH_MULTICAST_RULES_CMD_IS_ADD, align 4
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %42 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %40
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %92 [
    i32 132, label %51
    i32 131, label %63
    i32 130, label %66
    i32 129, label %70
    i32 128, label %81
  ]

51:                                               ; preds = %39
  %52 = load %union.bnx2x_mcast_config_data*, %union.bnx2x_mcast_config_data** %9, align 8
  %53 = bitcast %union.bnx2x_mcast_config_data* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bnx2x_mcast_bin_from_mac(i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %57 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @BIT_VEC64_SET_BIT(i32 %60, i32 %61)
  br label %95

63:                                               ; preds = %39
  %64 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %65 = call i32 @bnx2x_mcast_clear_first_bin(%struct.bnx2x_mcast_obj* %64)
  store i32 %65, i32* %15, align 4
  br label %95

66:                                               ; preds = %39
  %67 = load %union.bnx2x_mcast_config_data*, %union.bnx2x_mcast_config_data** %9, align 8
  %68 = bitcast %union.bnx2x_mcast_config_data* %67 to i32*
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  br label %95

70:                                               ; preds = %39
  %71 = load %union.bnx2x_mcast_config_data*, %union.bnx2x_mcast_config_data** %9, align 8
  %72 = bitcast %union.bnx2x_mcast_config_data* %71 to i32*
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %15, align 4
  %74 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %75 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @BIT_VEC64_SET_BIT(i32 %78, i32 %79)
  br label %95

81:                                               ; preds = %39
  %82 = load %union.bnx2x_mcast_config_data*, %union.bnx2x_mcast_config_data** %9, align 8
  %83 = bitcast %union.bnx2x_mcast_config_data* %82 to i32*
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %15, align 4
  %85 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %86 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @BIT_VEC64_CLEAR_BIT(i32 %89, i32 %90)
  br label %95

92:                                               ; preds = %39
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %131

95:                                               ; preds = %81, %70, %66, %63, %51
  %96 = load i32, i32* @BNX2X_MSG_SP, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @ETH_MULTICAST_RULES_CMD_IS_ADD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @DP(i32 %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %102, i32 %103)
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %107 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %105, i32* %112, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %115 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  store i32 %113, i32* %120, align 4
  %121 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %7, align 8
  %122 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %12, align 8
  %125 = getelementptr inbounds %struct.eth_multicast_rules_ramrod_data, %struct.eth_multicast_rules_ramrod_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i32 %123, i32* %130, align 4
  br label %131

131:                                              ; preds = %95, %92
  ret void
}

declare dso_local i32 @bnx2x_mcast_get_rx_tx_flag(%struct.bnx2x_mcast_obj*) #1

declare dso_local i32 @bnx2x_mcast_bin_from_mac(i32) #1

declare dso_local i32 @BIT_VEC64_SET_BIT(i32, i32) #1

declare dso_local i32 @bnx2x_mcast_clear_first_bin(%struct.bnx2x_mcast_obj*) #1

declare dso_local i32 @BIT_VEC64_CLEAR_BIT(i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
