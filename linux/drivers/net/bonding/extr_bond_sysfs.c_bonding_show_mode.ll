; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bonding = type { i32 }
%struct.bond_opt_value = type { i8* }

@BOND_OPT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bonding_show_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_show_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bonding*, align 8
  %8 = alloca %struct.bond_opt_value*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.bonding* @to_bond(%struct.device* %9)
  store %struct.bonding* %10, %struct.bonding** %7, align 8
  %11 = load i32, i32* @BOND_OPT_MODE, align 4
  %12 = load %struct.bonding*, %struct.bonding** %7, align 8
  %13 = call i32 @BOND_MODE(%struct.bonding* %12)
  %14 = call %struct.bond_opt_value* @bond_opt_get_val(i32 %11, i32 %13)
  store %struct.bond_opt_value* %14, %struct.bond_opt_value** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.bond_opt_value*, %struct.bond_opt_value** %8, align 8
  %17 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.bonding*, %struct.bonding** %7, align 8
  %20 = call i32 @BOND_MODE(%struct.bonding* %19)
  %21 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %20)
  ret i32 %21
}

declare dso_local %struct.bonding* @to_bond(%struct.device*) #1

declare dso_local %struct.bond_opt_value* @bond_opt_get_val(i32, i32) #1

declare dso_local i32 @BOND_MODE(%struct.bonding*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
