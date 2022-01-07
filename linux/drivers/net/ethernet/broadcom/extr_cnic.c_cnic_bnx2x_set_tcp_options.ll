; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_set_tcp_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_set_tcp_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.bnx2x = type { i32 }

@XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN = common dso_local global i32 0, align 4
@XSTORM_L5CM_TCP_FLAGS_TS_ENABLED = common dso_local global i32 0, align 4
@TSTORM_L5CM_TCP_FLAGS_TS_ENABLED = common dso_local global i32 0, align 4
@TSTORM_L5CM_TCP_FLAGS_DELAYED_ACK_EN = common dso_local global i32 0, align 4
@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, i32)* @cnic_bnx2x_set_tcp_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_bnx2x_set_tcp_options(%struct.cnic_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.bnx2x* @netdev_priv(i32 %12)
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load i32, i32* @XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32, i32* @XSTORM_L5CM_TCP_FLAGS_TS_ENABLED, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @TSTORM_L5CM_TCP_FLAGS_TS_ENABLED, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %17, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @TSTORM_L5CM_TCP_FLAGS_DELAYED_ACK_EN, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %33 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %34 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @XSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32 %36)
  %38 = add nsw i64 %33, %37
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @CNIC_WR8(%struct.cnic_dev* %32, i64 %38, i32 %39)
  %41 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %42 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %43 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @TSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32 %45)
  %47 = add nsw i64 %42, %46
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @CNIC_WR16(%struct.cnic_dev* %41, i64 %47, i32 %48)
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
