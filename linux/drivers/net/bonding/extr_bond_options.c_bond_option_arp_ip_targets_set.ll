; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_arp_ip_targets_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_arp_ip_targets_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.bond_opt_value = type { i8*, i64 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid ARP target %pI4 specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"no command found in arp_ip_targets file - use +<addr> or -<addr>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_opt_value*)* @bond_option_arp_ip_targets_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_option_arp_ip_targets_set(%struct.bonding* %0, %struct.bond_opt_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.bond_opt_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.bond_opt_value* %1, %struct.bond_opt_value** %5, align 8
  %8 = load i32, i32* @EPERM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %11 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  %15 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %16 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = bitcast i64* %7 to i32*
  %20 = call i32 @in4_pton(i8* %18, i32 -1, i32* %19, i32 -1, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load %struct.bonding*, %struct.bonding** %4, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @netdev_err(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64* %7)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %14
  %29 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %30 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.bonding*, %struct.bonding** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @bond_option_arp_ip_target_add(%struct.bonding* %37, i64 %38)
  store i32 %39, i32* %6, align 4
  br label %58

40:                                               ; preds = %28
  %41 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %42 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.bonding*, %struct.bonding** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @bond_option_arp_ip_target_rem(%struct.bonding* %49, i64 %50)
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %40
  %53 = load %struct.bonding*, %struct.bonding** %4, align 8
  %54 = getelementptr inbounds %struct.bonding, %struct.bonding* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @netdev_err(i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %36
  br label %66

59:                                               ; preds = %2
  %60 = load %struct.bond_opt_value*, %struct.bond_opt_value** %5, align 8
  %61 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  %63 = load %struct.bonding*, %struct.bonding** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @bond_option_arp_ip_target_add(%struct.bonding* %63, i64 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %59, %58
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @in4_pton(i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @bond_option_arp_ip_target_add(%struct.bonding*, i64) #1

declare dso_local i32 @bond_option_arp_ip_target_rem(%struct.bonding*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
