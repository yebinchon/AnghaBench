; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_determine_ethernet_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_determine_ethernet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i64, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.sockaddr = type { i32, i32 }

@RTL_VER_01 = common dso_local global i64 0, align 8
@PLA_IDR = common dso_local global i32 0, align 4
@PLA_BACKUP = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Get ether addr fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid ether addr %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Random ether addr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, %struct.sockaddr*)* @determine_ethernet_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_ethernet_addr(%struct.r8152* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8152*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load %struct.r8152*, %struct.r8152** %4, align 8
  %9 = getelementptr inbounds %struct.r8152, %struct.r8152* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.r8152*, %struct.r8152** %4, align 8
  %17 = getelementptr inbounds %struct.r8152, %struct.r8152* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RTL_VER_01, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.r8152*, %struct.r8152** %4, align 8
  %23 = load i32, i32* @PLA_IDR, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pla_ocp_read(%struct.r8152* %22, i32 %23, i32 8, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.r8152*, %struct.r8152** %4, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %31 = call i32 @vendor_mac_passthru_addr_read(%struct.r8152* %29, %struct.sockaddr* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.r8152*, %struct.r8152** %4, align 8
  %36 = load i32, i32* @PLA_BACKUP, align 4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pla_ocp_read(%struct.r8152* %35, i32 %36, i32 8, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.r8152*, %struct.r8152** %4, align 8
  %47 = load i32, i32* @probe, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 (%struct.r8152*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.r8152* %46, i32 %47, %struct.net_device* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %81

50:                                               ; preds = %42
  %51 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @is_valid_ether_addr(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %50
  %57 = load %struct.r8152*, %struct.r8152** %4, align 8
  %58 = load i32, i32* @probe, align 4
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.r8152*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.r8152* %57, i32 %58, %struct.net_device* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = call i32 @eth_hw_addr_random(%struct.net_device* %64)
  %66 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %67 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ether_addr_copy(i32 %68, i32 %71)
  %73 = load %struct.r8152*, %struct.r8152** %4, align 8
  %74 = load i32, i32* @probe, align 4
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %77 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_info(%struct.r8152* %73, i32 %74, %struct.net_device* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %83

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %56
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pla_ocp_read(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @vendor_mac_passthru_addr_read(%struct.r8152*, %struct.sockaddr*) #1

declare dso_local i32 @netif_err(%struct.r8152*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @netif_info(%struct.r8152*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
