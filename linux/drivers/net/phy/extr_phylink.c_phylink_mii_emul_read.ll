; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mii_emul_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mii_emul_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink_link_state = type { i32, i32, i32, i32, i32 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }

@MLO_PAUSE_SYM = common dso_local global i32 0, align 4
@MLO_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.phylink_link_state*)* @phylink_mii_emul_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_mii_emul_read(i32 %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylink_link_state*, align 8
  %5 = alloca %struct.fixed_phy_status, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %7 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %8 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %5, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %12 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %16 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %20 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLO_PAUSE_SYM, align 4
  %23 = and i32 %21, %22
  %24 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %26 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLO_PAUSE_ASYM, align 4
  %29 = and i32 %27, %28
  %30 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @swphy_read_reg(i32 %31, %struct.fixed_phy_status* %5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MII_BMSR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %38 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @swphy_read_reg(i32, %struct.fixed_phy_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
