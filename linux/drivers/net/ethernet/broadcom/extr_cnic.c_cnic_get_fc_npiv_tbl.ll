; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_get_fc_npiv_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_get_fc_npiv_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.cnic_fc_npiv_tbl*)* }
%struct.cnic_fc_npiv_tbl = type { i32 }
%struct.bnx2x = type { i32 }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.cnic_fc_npiv_tbl*)* @cnic_get_fc_npiv_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_get_fc_npiv_tbl(%struct.cnic_dev* %0, %struct.cnic_fc_npiv_tbl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca %struct.cnic_fc_npiv_tbl*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store %struct.cnic_fc_npiv_tbl* %1, %struct.cnic_fc_npiv_tbl** %5, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 2
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %6, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bnx2x* @netdev_priv(i32 %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %7, align 8
  %16 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %18 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %26 = call i32 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %24
  %32 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %33 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, %struct.cnic_fc_npiv_tbl*)*, i32 (i32, %struct.cnic_fc_npiv_tbl*)** %35, align 8
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %38 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cnic_fc_npiv_tbl*, %struct.cnic_fc_npiv_tbl** %5, align 8
  %41 = call i32 %36(i32 %39, %struct.cnic_fc_npiv_tbl* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %31, %28, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
