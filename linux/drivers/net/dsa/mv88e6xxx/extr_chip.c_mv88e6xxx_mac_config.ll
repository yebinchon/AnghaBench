; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i32 }
%struct.phylink_link_state = type { i32, i32, i32, i32, i32 }

@MLO_AN_PHY = common dso_local global i32 0, align 4
@MLO_AN_FIXED = common dso_local global i32 0, align 4
@LINK_FORCED_UP = common dso_local global i32 0, align 4
@SPEED_UNFORCED = common dso_local global i32 0, align 4
@DUPLEX_UNFORCED = common dso_local global i32 0, align 4
@LINK_UNFORCED = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"p%d: failed to configure MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, %struct.phylink_link_state*)* @mv88e6xxx_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_mac_config(%struct.dsa_switch* %0, i32 %1, i32 %2, %struct.phylink_link_state* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phylink_link_state*, align 8
  %9 = alloca %struct.mv88e6xxx_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phylink_link_state* %3, %struct.phylink_link_state** %8, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 1
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %16, align 8
  store %struct.mv88e6xxx_chip* %17, %struct.mv88e6xxx_chip** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MLO_AN_PHY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @mv88e6xxx_phy_is_internal(%struct.dsa_switch* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %96

27:                                               ; preds = %21, %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MLO_AN_FIXED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* @LINK_FORCED_UP, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %34 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %37 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  br label %59

39:                                               ; preds = %27
  %40 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @mv88e6xxx_phy_is_internal(%struct.dsa_switch* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %46 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %49 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %52 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  br label %58

54:                                               ; preds = %39
  %55 = load i32, i32* @SPEED_UNFORCED, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @DUPLEX_UNFORCED, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @LINK_UNFORCED, align 4
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %44
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %61 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @Pause, align 4
  %64 = call i32 @phylink_test(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %70 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %69)
  %71 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %78 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mv88e6xxx_port_setup_mac(%struct.mv88e6xxx_chip* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %82 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %59
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %92 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %26, %90, %85, %59
  ret void
}

declare dso_local i64 @mv88e6xxx_phy_is_internal(%struct.dsa_switch*, i32) #1

declare dso_local i32 @phylink_test(i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_setup_mac(%struct.mv88e6xxx_chip*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
