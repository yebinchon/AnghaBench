; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@FLAG_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @airo_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airo_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  store %struct.airo_info* %9, %struct.airo_info** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %6, align 8
  %12 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %13 = call i32 @readConfigRid(%struct.airo_info* %12, i32 1)
  %14 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %15 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32 %17, i32 %20, i32 %23)
  %25 = load i32, i32* @FLAG_COMMIT, align 4
  %26 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %27 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %26, i32 0, i32 2
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %30 = call i32 @disable_MAC(%struct.airo_info* %29, i32 1)
  %31 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %32 = call i32 @writeConfigRid(%struct.airo_info* %31, i32 1)
  %33 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %34 = call i32 @enable_MAC(%struct.airo_info* %33, i32 1)
  %35 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %36 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %39, i32 %42, i32 %45)
  %47 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %48 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %2
  %52 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %53 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %58 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memcpy(i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %51, %2
  ret i32 0
}

declare dso_local i32 @readConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @writeConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @enable_MAC(%struct.airo_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
