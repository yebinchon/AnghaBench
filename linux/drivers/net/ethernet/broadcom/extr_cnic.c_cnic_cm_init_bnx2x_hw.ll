; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_init_bnx2x_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_init_bnx2x_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.bnx2x = type { i32 }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@DEF_MAX_DA_COUNT = common dso_local global i32 0, align 4
@DEF_TTL = common dso_local global i32 0, align 4
@DEF_TOS = common dso_local global i32 0, align 4
@DEF_SWS_TIMER = common dso_local global i32 0, align 4
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@DEF_MAX_CWND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_cm_init_bnx2x_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_init_bnx2x_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %6 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.bnx2x* @netdev_priv(i32 %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i32 @BP_PORT(%struct.bnx2x* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %16 = call i32 @cnic_init_bnx2x_mac(%struct.cnic_dev* %15)
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %18 = call i32 @cnic_bnx2x_set_tcp_options(%struct.cnic_dev* %17, i32 0, i32 1)
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %20 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @XSTORM_ISCSI_LOCAL_VLAN_OFFSET(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @CNIC_WR16(%struct.cnic_dev* %19, i64 %23, i32 0)
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %26 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_ENABLED_OFFSET(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @CNIC_WR(%struct.cnic_dev* %25, i64 %29, i32 1)
  %31 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %32 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_MAX_COUNT_OFFSET(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* @DEF_MAX_DA_COUNT, align 4
  %37 = call i32 @CNIC_WR(%struct.cnic_dev* %31, i64 %35, i32 %36)
  %38 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %39 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @XSTORM_ISCSI_TCP_VARS_TTL_OFFSET(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* @DEF_TTL, align 4
  %44 = call i32 @CNIC_WR8(%struct.cnic_dev* %38, i64 %42, i32 %43)
  %45 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %46 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @XSTORM_ISCSI_TCP_VARS_TOS_OFFSET(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* @DEF_TOS, align 4
  %51 = call i32 @CNIC_WR8(%struct.cnic_dev* %45, i64 %49, i32 %50)
  %52 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %53 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @XSTORM_ISCSI_TCP_VARS_ADV_WND_SCL_OFFSET(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = call i32 @CNIC_WR8(%struct.cnic_dev* %52, i64 %56, i32 2)
  %58 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %59 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @XSTORM_TCP_TX_SWS_TIMER_VAL_OFFSET(i32 %60)
  %62 = add nsw i64 %59, %61
  %63 = load i32, i32* @DEF_SWS_TIMER, align 4
  %64 = call i32 @CNIC_WR(%struct.cnic_dev* %58, i64 %62, i32 %63)
  %65 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %66 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @TSTORM_TCP_MAX_CWND_OFFSET(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = load i32, i32* @DEF_MAX_CWND, align 4
  %71 = call i32 @CNIC_WR(%struct.cnic_dev* %65, i64 %69, i32 %70)
  ret i32 0
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @cnic_init_bnx2x_mac(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_bnx2x_set_tcp_options(%struct.cnic_dev*, i32, i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_VLAN_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_ENABLED_OFFSET(i32) #1

declare dso_local i64 @XSTORM_TCP_GLOBAL_DEL_ACK_COUNTER_MAX_COUNT_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_TTL_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_TOS_OFFSET(i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_ADV_WND_SCL_OFFSET(i32) #1

declare dso_local i64 @XSTORM_TCP_TX_SWS_TIMER_VAL_OFFSET(i32) #1

declare dso_local i64 @TSTORM_TCP_MAX_CWND_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
