; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_initial_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_initial_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Read MAC address %pM from device tree\0A\00", align 1
@FTGMAC100_OFFSET_MAC_MADR = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_MAC_LADR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Read MAC address %pM from chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Generated random MAC address %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_initial_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_initial_mac(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %14 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i8* @device_get_mac_address(i32 %15, i32* %12, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %22 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ether_addr_copy(i32* %25, i32* %12)
  %27 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %28 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 1, i32* %8, align 4
  br label %94

31:                                               ; preds = %1
  %32 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %33 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FTGMAC100_OFFSET_MAC_MADR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @ioread32(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %39 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FTGMAC100_OFFSET_MAC_LADR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @ioread32(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = lshr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = lshr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds i32, i32* %12, i64 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = lshr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = getelementptr inbounds i32, i32* %12, i64 4
  store i32 %61, i32* %62, align 16
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 255
  %65 = getelementptr inbounds i32, i32* %12, i64 5
  store i32 %64, i32* %65, align 4
  %66 = call i64 @is_valid_ether_addr(i32* %12)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %31
  %69 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %70 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ether_addr_copy(i32* %73, i32* %12)
  %75 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %76 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_info(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  br label %93

79:                                               ; preds = %31
  %80 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %81 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = call i32 @eth_hw_addr_random(%struct.TYPE_2__* %82)
  %84 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %85 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %88 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @dev_info(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %91)
  br label %93

93:                                               ; preds = %79, %68
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %20
  %95 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %8, align 4
  switch i32 %96, label %98 [
    i32 0, label %97
    i32 1, label %97
  ]

97:                                               ; preds = %94, %94
  ret void

98:                                               ; preds = %94
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @device_get_mac_address(i32, i32*, i32) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @dev_info(i32, i8*, i32*) #2

declare dso_local i32 @ioread32(i64) #2

declare dso_local i64 @is_valid_ether_addr(i32*) #2

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_2__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
