; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_vf.c_fm10k_read_mac_addr_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_vf.c_fm10k_read_mac_addr_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@FM10K_ERR_INVALID_MAC_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*)* @fm10k_read_mac_addr_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_read_mac_addr_vf(%struct.fm10k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %13 = call i32 @FM10K_TDBAL(i32 0)
  %14 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 24
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @FM10K_ERR_INVALID_MAC_ADDR, align 4
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %64

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 24
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %11, i64 3
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 16
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %11, i64 4
  store i64 %27, i64* %28, align 16
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %11, i64 5
  store i64 %31, i64* %32, align 8
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %34 = call i32 @FM10K_TDBAH(i32 0)
  %35 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, -1
  %38 = ashr i32 %37, 24
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = load i32, i32* @FM10K_ERR_INVALID_MAC_ADDR, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %64

42:                                               ; preds = %20
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 16
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 %45, i64* %46, align 16
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %11, i64 2
  store i64 %52, i64* %53, align 16
  %54 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %55 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ether_addr_copy(i32 %57, i64* %11)
  %59 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %60 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ether_addr_copy(i32 %62, i64* %11)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %42, %40, %18
  %65 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #2

declare dso_local i32 @FM10K_TDBAL(i32) #2

declare dso_local i32 @FM10K_TDBAH(i32) #2

declare dso_local i32 @ether_addr_copy(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
