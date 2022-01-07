; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_slave_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_slave_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.bonding = type { i32 }
%struct.bond_opt_value = type { i32 }

@IFLA_BOND_SLAVE_QUEUE_ID = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s:%u\0A\00", align 1
@BOND_OPT_QUEUE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @bond_slave_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_slave_changelink(%struct.net_device* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.bonding*, align 8
  %13 = alloca %struct.bond_opt_value, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.bonding* @netdev_priv(%struct.net_device* %19)
  store %struct.bonding* %20, %struct.bonding** %12, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %22 = icmp ne %struct.nlattr** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %61

24:                                               ; preds = %5
  %25 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %26 = load i64, i64* @IFLA_BOND_SLAVE_QUEUE_ID, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %32 = load i64, i64* @IFLA_BOND_SLAVE_QUEUE_ID, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u16(%struct.nlattr* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = add nsw i32 %36, 7
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %16, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  %41 = trunc i64 %38 to i32
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45)
  %47 = call i32 @bond_opt_initstr(%struct.bond_opt_value* %13, i8* %40)
  %48 = load %struct.bonding*, %struct.bonding** %12, align 8
  %49 = load i32, i32* @BOND_OPT_QUEUE_ID, align 4
  %50 = call i32 @__bond_opt_set(%struct.bonding* %48, i32 %49, %struct.bond_opt_value* %13)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %30
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %56

55:                                               ; preds = %30
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %18, align 4
  switch i32 %58, label %63 [
    i32 0, label %59
    i32 1, label %61
  ]

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %24
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %56, %23
  %62 = load i32, i32* %6, align 4
  ret i32 %62

63:                                               ; preds = %56
  unreachable
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @bond_opt_initstr(%struct.bond_opt_value*, i8*) #1

declare dso_local i32 @__bond_opt_set(%struct.bonding*, i32, %struct.bond_opt_value*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
