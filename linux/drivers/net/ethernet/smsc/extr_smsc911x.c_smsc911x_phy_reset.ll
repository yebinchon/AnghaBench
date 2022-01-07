; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@PMT_CTRL = common dso_local global i32 0, align 4
@PMT_CTRL_PHY_RST_ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PHY reset failed to complete\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*)* @smsc911x_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_phy_reset(%struct.smsc911x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %3, align 8
  store i32 100000, i32* %5, align 4
  %6 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %7 = load i32, i32* @PMT_CTRL, align 4
  %8 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %10 = load i32, i32* @PMT_CTRL, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PMT_CTRL_PHY_RST_, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %9, i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %29, %1
  %16 = call i32 @msleep(i32 1)
  %17 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %18 = load i32, i32* @PMT_CTRL, align 4
  %19 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PMT_CTRL_PHY_RST_, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %15, label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PMT_CTRL_PHY_RST_, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %39 = load i32, i32* @hw, align 4
  %40 = call i32 @SMSC_WARN(%struct.smsc911x_data* %38, i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %31
  %44 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
