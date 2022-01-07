; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_report_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_report_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"NIC %s Link is Up, %d Mbps %s duplex\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c", receive \00", align 1
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"& transmit \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c", transmit \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"flow control ON\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"NIC %s Link is Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_report_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_report_link(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %3 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %1
  %8 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @netif_carrier_on(i32 %10)
  %12 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %16 = call i32 @bnx2_xceiver_str(%struct.bnx2* %15)
  %17 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DUPLEX_FULL, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @netdev_info(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i8* %26)
  %28 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %7
  %33 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FLOW_CTRL_RX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FLOW_CTRL_TX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %39
  br label %52

50:                                               ; preds = %32
  %51 = call i32 @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %49
  %53 = call i32 @pr_cont(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %7
  %55 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %67

56:                                               ; preds = %1
  %57 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %58 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netif_carrier_off(i32 %59)
  %61 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %65 = call i32 @bnx2_xceiver_str(%struct.bnx2* %64)
  %66 = call i32 @netdev_err(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %56, %54
  %68 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %69 = call i32 @bnx2_report_fw_link(%struct.bnx2* %68)
  ret void
}

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @bnx2_xceiver_str(%struct.bnx2*) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnx2_report_fw_link(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
