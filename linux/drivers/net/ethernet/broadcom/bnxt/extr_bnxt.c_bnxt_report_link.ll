; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_report_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_report_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@BNXT_LINK_DUPLEX_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@BNXT_LINK_PAUSE_BOTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"ON - receive & transmit\00", align 1
@BNXT_LINK_PAUSE_TX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"ON - transmit\00", align 1
@BNXT_LINK_PAUSE_RX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"ON - receive\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"NIC Link is Up, %u Mbps %s duplex, Flow control: %s\0A\00", align 1
@BNXT_FLAG_EEE_CAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"EEE is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"not active\00", align 1
@PORT_PHY_QCFG_RESP_FEC_CFG_FEC_NONE_SUPPORTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"FEC autoneg %s encodings: %s\0A\00", align 1
@BNXT_FEC_AUTONEG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@BNXT_FEC_ENC_BASE_R = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"BaseR\00", align 1
@BNXT_FEC_ENC_RS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"RS\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_report_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_report_link(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %120

12:                                               ; preds = %1
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_carrier_on(i32 %15)
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BNXT_LINK_DUPLEX_FULL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %25

24:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BNXT_LINK_PAUSE_BOTH, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

33:                                               ; preds = %25
  %34 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BNXT_LINK_PAUSE_TX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %43 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BNXT_LINK_PAUSE_RX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %50

49:                                               ; preds = %41
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bnxt_fw_to_ethtool_speed(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %59 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %63, i8* %64, i8* %65)
  %67 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %68 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BNXT_FLAG_EEE_CAP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %52
  %74 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %75 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %78 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)
  %84 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %73, %52
  %86 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @PORT_PHY_QCFG_RESP_FEC_CFG_FEC_NONE_SUPPORTED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %85
  %95 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %96 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @BNXT_FEC_AUTONEG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @BNXT_FEC_ENC_BASE_R, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %116

109:                                              ; preds = %94
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @BNXT_FEC_ENC_RS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  br label %116

116:                                              ; preds = %109, %108
  %117 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %108 ], [ %115, %109 ]
  %118 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %103, i8* %117)
  br label %119

119:                                              ; preds = %116, %85
  br label %129

120:                                              ; preds = %1
  %121 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %122 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @netif_carrier_off(i32 %123)
  %125 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %126 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @netdev_err(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  br label %129

129:                                              ; preds = %120, %119
  ret void
}

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @bnxt_fw_to_ethtool_speed(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i8*, ...) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
