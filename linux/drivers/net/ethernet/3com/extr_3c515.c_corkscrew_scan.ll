; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.net_device = type { i32 }
%struct.pnp_dev = type { i32 }

@corkscrew_scan.cards_found = internal global i32 0, align 4
@corkscrew_scan.ioaddr = internal global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"3c515 Resource configuration register %#4.4x, DCR %4.4x.\0A\00", align 1
@corkscrew_debug = common dso_local global i64 0, align 8
@corkscrew_isapnp_adapters = common dso_local global %struct.TYPE_2__* null, align 8
@nopnp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i32)* @corkscrew_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @corkscrew_scan(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call %struct.net_device* @alloc_etherdev(i32 4)
  store %struct.net_device* %6, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.net_device* @ERR_PTR(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %2, align 8
  br label %59

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @sprintf(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @netdev_boot_setup_check(%struct.net_device* %22)
  br label %24

24:                                               ; preds = %16, %13
  store i32 256, i32* @corkscrew_scan.ioaddr, align 4
  br label %25

25:                                               ; preds = %53, %24
  %26 = load i32, i32* @corkscrew_scan.ioaddr, align 4
  %27 = icmp slt i32 %26, 1024
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = load i32, i32* @corkscrew_scan.ioaddr, align 4
  %30 = call i32 @check_device(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %53

33:                                               ; preds = %28
  %34 = load i32, i32* @corkscrew_scan.ioaddr, align 4
  %35 = add nsw i32 %34, 8194
  %36 = call i32 @inl(i32 %35)
  %37 = load i32, i32* @corkscrew_scan.ioaddr, align 4
  %38 = add nsw i32 %37, 8192
  %39 = call i32 @inw(i32 %38)
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load i32, i32* @corkscrew_scan.ioaddr, align 4
  %43 = load i32, i32* @corkscrew_scan.cards_found, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @corkscrew_scan.cards_found, align 4
  %45 = call i32 @corkscrew_setup(%struct.net_device* %41, i32 %42, %struct.pnp_dev* null, i32 %43)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %33
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %49, %struct.net_device** %2, align 8
  br label %59

50:                                               ; preds = %33
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @cleanup_card(%struct.net_device* %51)
  br label %53

53:                                               ; preds = %50, %32
  %54 = load i32, i32* @corkscrew_scan.ioaddr, align 4
  %55 = add nsw i32 %54, 32
  store i32 %55, i32* @corkscrew_scan.ioaddr, align 4
  br label %25

56:                                               ; preds = %25
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @free_netdev(%struct.net_device* %57)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %59

59:                                               ; preds = %56, %48, %9
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %60
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @netdev_boot_setup_check(%struct.net_device*) #1

declare dso_local i32 @check_device(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @corkscrew_setup(%struct.net_device*, i32, %struct.pnp_dev*, i32) #1

declare dso_local i32 @cleanup_card(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
