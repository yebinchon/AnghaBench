; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c___bnx2x_link_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c___bnx2x_link_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.bnx2x_link_report_data = type { i32, i64 }

@BNX2X_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@BNX2X_LINK_REPORT_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@BNX2X_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ON - receive & transmit\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ON - receive\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ON - transmit\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"NIC Link is Up, %d Mbps %s duplex, Flow control: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bnx2x_link_report(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_link_report_data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %113

14:                                               ; preds = %1
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = call i64 @IS_PF(%struct.bnx2x* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = call i32 @CHIP_IS_E1(%struct.bnx2x* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = call i32 @bnx2x_read_mf_cfg(%struct.bnx2x* %23)
  br label %25

25:                                               ; preds = %22, %18, %14
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = call i32 @bnx2x_fill_report_data(%struct.bnx2x* %26, %struct.bnx2x_link_report_data* %3)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 1
  %30 = call i32 @memcmp(%struct.bnx2x_link_report_data* %3, %struct.TYPE_5__* %29, i32 16)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %33, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %41 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %40, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %25
  br label %113

45:                                               ; preds = %39, %32
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 1
  %52 = call i32 @memcpy(%struct.TYPE_5__* %51, %struct.bnx2x_link_report_data* %3, i32 16)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = call i64 @IS_PF(%struct.bnx2x* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %58 = call i32 @bnx2x_iov_link_update(%struct.bnx2x* %57)
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %61 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %60, i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @netif_carrier_off(i32 %67)
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @netdev_err(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %113

73:                                               ; preds = %59
  %74 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @netif_carrier_on(i32 %76)
  %78 = load i32, i32* @BNX2X_LINK_REPORT_FD, align 4
  %79 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %80 = call i64 @test_and_clear_bit(i32 %78, i64* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %84

83:                                               ; preds = %73
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %84

84:                                               ; preds = %83, %82
  %85 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i32, i32* @BNX2X_LINK_REPORT_RX_FC_ON, align 4
  %90 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %91 = call i64 @test_bit(i32 %89, i64* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32, i32* @BNX2X_LINK_REPORT_TX_FC_ON, align 4
  %95 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 1
  %96 = call i64 @test_bit(i32 %94, i64* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %100

99:                                               ; preds = %93
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %100

100:                                              ; preds = %99, %98
  br label %102

101:                                              ; preds = %88
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %102

102:                                              ; preds = %101, %100
  br label %104

103:                                              ; preds = %84
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %104

104:                                              ; preds = %103, %102
  %105 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %106 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %3, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @netdev_info(i32 %107, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %109, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %10, %44, %64, %104
  ret void
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_mf_cfg(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fill_report_data(%struct.bnx2x*, %struct.bnx2x_link_report_data*) #1

declare dso_local i32 @memcmp(%struct.bnx2x_link_report_data*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.bnx2x_link_report_data*, i32) #1

declare dso_local i32 @bnx2x_iov_link_update(%struct.bnx2x*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
