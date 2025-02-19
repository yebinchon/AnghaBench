; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_hinic_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.sockaddr = type { i8* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @hinic_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %7, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = call i32 @memcpy(i8* %12, i8* %17, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @change_mac_addr(%struct.net_device* %20, i8* %12)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i8* %27, i8* %12, i32 %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %32)
  ret i32 %31
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @change_mac_addr(%struct.net_device*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
