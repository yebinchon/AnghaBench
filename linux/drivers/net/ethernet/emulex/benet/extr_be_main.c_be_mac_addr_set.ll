; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mac_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mac_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.be_adapter = type { i64*, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sockaddr = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@BE_PRIV_FILTMGMT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MAC address changed to %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"MAC address change to %pM failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @be_mac_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mac_addr_set(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.be_adapter* %15, %struct.be_adapter** %6, align 8
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %8, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @is_valid_ether_addr(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @EADDRNOTAVAIL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %149

39:                                               ; preds = %2
  %40 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @ether_addr_equal(i64 %42, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %149

49:                                               ; preds = %39
  %50 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %51 = call i64 @BEx_chip(%struct.be_adapter* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %55 = call i64 @be_virtfn(%struct.be_adapter* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %59 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %60 = call i32 @check_privilege(%struct.be_adapter* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %149

65:                                               ; preds = %57, %53, %49
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @netif_running(%struct.net_device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %129

70:                                               ; preds = %65
  %71 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 3
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %75 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %76 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @be_dev_mac_add(%struct.be_adapter* %74, i32* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %70
  %83 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @be_dev_mac_del(%struct.be_adapter* %91, i64 %92)
  br label %94

94:                                               ; preds = %90, %82
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %97 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %96, i32 0, i32 3
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %100 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @be_cmd_get_active_mac(%struct.be_adapter* %99, i64 %104, i32* %25, i32 %107, i32 1, i32 0)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %95
  br label %142

112:                                              ; preds = %95
  %113 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %114 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @ether_addr_equal(i64 %115, i32* %25)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @EPERM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %142

121:                                              ; preds = %112
  %122 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %126 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ether_addr_copy(i32* %124, i64 %127)
  br label %129

129:                                              ; preds = %121, %69
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %134 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @ether_addr_copy(i32* %132, i64 %135)
  %137 = load %struct.device*, %struct.device** %7, align 8
  %138 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %139 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @dev_info(%struct.device* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %140)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %149

142:                                              ; preds = %118, %111
  %143 = load %struct.device*, %struct.device** %7, align 8
  %144 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %145 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @dev_warn(%struct.device* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %149

149:                                              ; preds = %142, %129, %62, %48, %36
  %150 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_valid_ether_addr(i64) #1

declare dso_local i64 @ether_addr_equal(i64, i32*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_virtfn(%struct.be_adapter*) #1

declare dso_local i32 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @be_dev_mac_add(%struct.be_adapter*, i32*) #1

declare dso_local i32 @be_dev_mac_del(%struct.be_adapter*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be_cmd_get_active_mac(%struct.be_adapter*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
