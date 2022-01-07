; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_read_current_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_read_current_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32 }

@REG_MAC_STA_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_hw*, i32*)* @atl1c_read_current_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_read_current_addr(%struct.atl1c_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i64], align 16
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %7 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %9 = call i32 @AT_READ_REG(%struct.atl1c_hw* %6, i64 %7, i64* %8)
  %10 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %11 = load i64, i64* @REG_MAC_STA_ADDR, align 8
  %12 = add nsw i64 %11, 4
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %14 = call i32 @AT_READ_REG(%struct.atl1c_hw* %10, i64 %12, i64* %13)
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = call i64 @htonl(i64 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = bitcast i32* %19 to i64*
  store i64 %17, i64* %20, align 8
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @htons(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @is_valid_ether_addr(i32* %27)
  ret i32 %28
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i64, i64*) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
