; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_mac_hwinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_get_mac_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bnx2x = type { %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"warning: random MAC workaround active\0A\00", align 1
@func_mf_config = common dso_local global %struct.TYPE_10__* null, align 8
@FUNC_MF_CFG_UPPERMAC_DEFAULT = common dso_local global i64 0, align 8
@FUNC_MF_CFG_LOWERMAC_DEFAULT = common dso_local global i64 0, align 8
@dev_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@HAS_PHYS_PORT_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [117 x i8] c"bad Ethernet MAC address configuration: %pM\0Achange it manually before bringing up the appropriate network interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_get_mac_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_mac_hwinfo(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i32 @BP_PORT(%struct.bnx2x* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @eth_zero_addr(i32 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i64 @BP_NOMCP(%struct.bnx2x* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = call i32 @BNX2X_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = call i32 @eth_hw_addr_random(%struct.TYPE_11__* %24)
  br label %104

26:                                               ; preds = %1
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = call i64 @IS_MF(%struct.bnx2x* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @func_mf_config, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @MF_CFG_RD(%struct.bnx2x* %31, i32 %37)
  store i64 %38, i64* %4, align 8
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @func_mf_config, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @MF_CFG_RD(%struct.bnx2x* %39, i32 %45)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @FUNC_MF_CFG_UPPERMAC_DEFAULT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %30
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @FUNC_MF_CFG_LOWERMAC_DEFAULT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %56 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @bnx2x_set_mac_buf(i32 %59, i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %54, %50, %30
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = call i32 @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %103

71:                                               ; preds = %26
  %72 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_info, i32 0, i32 0), align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @SHMEM_RD(%struct.bnx2x* %72, i32 %78)
  store i64 %79, i64* %4, align 8
  %80 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_info, i32 0, i32 0), align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @SHMEM_RD(%struct.bnx2x* %80, i32 %86)
  store i64 %87, i64* %3, align 8
  %88 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %89 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @bnx2x_set_mac_buf(i32 %92, i64 %93, i64 %94)
  %96 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %97 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %71
  %100 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %101 = call i32 @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x* %100)
  br label %102

102:                                              ; preds = %99, %71
  br label %103

103:                                              ; preds = %102, %70
  br label %104

104:                                              ; preds = %103, %20
  %105 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %106 = call i64 @BP_NOMCP(%struct.bnx2x* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %136, label %108

108:                                              ; preds = %104
  %109 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_info, i32 0, i32 0), align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @SHMEM_RD(%struct.bnx2x* %109, i32 %115)
  store i64 %116, i64* %4, align 8
  %117 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_info, i32 0, i32 0), align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @SHMEM_RD(%struct.bnx2x* %117, i32 %123)
  store i64 %124, i64* %3, align 8
  %125 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %126 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %3, align 8
  %129 = load i64, i64* %4, align 8
  %130 = call i32 @bnx2x_set_mac_buf(i32 %127, i64 %128, i64 %129)
  %131 = load i32, i32* @HAS_PHYS_PORT_ID, align 4
  %132 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %133 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %108, %104
  %137 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %142 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ETH_ALEN, align 4
  %147 = call i32 @memcpy(i32 %140, i32 %145, i32 %146)
  %148 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %149 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @is_valid_ether_addr(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %136
  %156 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %157 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %161 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %160, i32 0, i32 0
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %155, %136
  ret void
}

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERROR(i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i64 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_mac_buf(i32, i64, i64) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x*) #1

declare dso_local i64 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
