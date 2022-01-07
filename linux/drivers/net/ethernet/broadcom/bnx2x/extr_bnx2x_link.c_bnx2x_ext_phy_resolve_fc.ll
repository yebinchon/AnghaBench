; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ext_phy_resolve_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_ext_phy_resolve_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64, i64 }
%struct.link_params = type { i64 }
%struct.link_vars = type { i64, i32 }

@BNX2X_FLOW_CTRL_NONE = common dso_local global i64 0, align 8
@BNX2X_FLOW_CTRL_AUTO = common dso_local global i64 0, align 8
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_ext_phy_resolve_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* @BNX2X_FLOW_CTRL_NONE, align 8
  %9 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %10 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BNX2X_FLOW_CTRL_AUTO, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %24 = load %struct.link_params*, %struct.link_params** %5, align 8
  %25 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %26 = call i32 @bnx2x_ext_phy_update_adv_fc(%struct.bnx2x_phy* %23, %struct.link_params* %24, %struct.link_vars* %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %32 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %59

33:                                               ; preds = %3
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.link_params*, %struct.link_params** %5, align 8
  %41 = getelementptr inbounds %struct.link_params, %struct.link_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %44 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %58

45:                                               ; preds = %33
  %46 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %47 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  %53 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %54 = load %struct.link_params*, %struct.link_params** %5, align 8
  %55 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %56 = call i32 @bnx2x_ext_phy_update_adv_fc(%struct.bnx2x_phy* %53, %struct.link_params* %54, %struct.link_vars* %55)
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @bnx2x_ext_phy_update_adv_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
