; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_sync_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_sync_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i8* }
%struct.macvlan_dev = type { %struct.macvlan_port*, %struct.net_device* }
%struct.macvlan_port = type { i8* }

@IFF_UP = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @macvlan_sync_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_sync_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macvlan_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.macvlan_port*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.macvlan_dev* %11, %struct.macvlan_dev** %6, align 8
  %12 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %13 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %16 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %15, i32 0, i32 0
  %17 = load %struct.macvlan_port*, %struct.macvlan_port** %16, align 8
  store %struct.macvlan_port* %17, %struct.macvlan_port** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_UP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @ether_addr_copy(i8* %27, i8* %28)
  br label %62

30:                                               ; preds = %2
  %31 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %32 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %31, i32 0, i32 0
  %33 = load %struct.macvlan_port*, %struct.macvlan_port** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @macvlan_addr_busy(%struct.macvlan_port* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EADDRINUSE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %30
  %41 = load %struct.macvlan_port*, %struct.macvlan_port** %8, align 8
  %42 = call i64 @macvlan_passthru(%struct.macvlan_port* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @dev_uc_add(%struct.net_device* %45, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %83

52:                                               ; preds = %44
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @dev_uc_del(%struct.net_device* %53, i8* %56)
  br label %58

58:                                               ; preds = %52, %40
  %59 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @macvlan_hash_change_addr(%struct.macvlan_dev* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %24
  %63 = load %struct.macvlan_port*, %struct.macvlan_port** %8, align 8
  %64 = call i64 @macvlan_passthru(%struct.macvlan_port* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.macvlan_port*, %struct.macvlan_port** %8, align 8
  %68 = call i32 @macvlan_addr_change(%struct.macvlan_port* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = load %struct.macvlan_dev*, %struct.macvlan_dev** %6, align 8
  %72 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %71, i32 0, i32 0
  %73 = load %struct.macvlan_port*, %struct.macvlan_port** %72, align 8
  %74 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @ether_addr_copy(i8* %75, i8* %78)
  br label %80

80:                                               ; preds = %70, %66, %62
  %81 = load %struct.macvlan_port*, %struct.macvlan_port** %8, align 8
  %82 = call i32 @macvlan_clear_addr_change(%struct.macvlan_port* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %50, %37
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i8*, i8*) #1

declare dso_local i64 @macvlan_addr_busy(%struct.macvlan_port*, i8*) #1

declare dso_local i64 @macvlan_passthru(%struct.macvlan_port*) #1

declare dso_local i32 @dev_uc_add(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i8*) #1

declare dso_local i32 @macvlan_hash_change_addr(%struct.macvlan_dev*, i8*) #1

declare dso_local i32 @macvlan_addr_change(%struct.macvlan_port*) #1

declare dso_local i32 @macvlan_clear_addr_change(%struct.macvlan_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
