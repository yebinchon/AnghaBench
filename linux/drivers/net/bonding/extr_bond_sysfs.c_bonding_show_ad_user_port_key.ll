; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_ad_user_port_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs.c_bonding_show_ad_user_port_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bonding = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bonding_show_ad_user_port_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_show_ad_user_port_key(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bonding*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.bonding* @to_bond(%struct.device* %9)
  store %struct.bonding* %10, %struct.bonding** %8, align 8
  %11 = load %struct.bonding*, %struct.bonding** %8, align 8
  %12 = call i64 @BOND_MODE(%struct.bonding* %11)
  %13 = load i64, i64* @BOND_MODE_8023AD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @CAP_NET_ADMIN, align 4
  %17 = call i64 @capable(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.bonding*, %struct.bonding** %8, align 8
  %22 = getelementptr inbounds %struct.bonding, %struct.bonding* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.bonding* @to_bond(%struct.device*) #1

declare dso_local i64 @BOND_MODE(%struct.bonding*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
