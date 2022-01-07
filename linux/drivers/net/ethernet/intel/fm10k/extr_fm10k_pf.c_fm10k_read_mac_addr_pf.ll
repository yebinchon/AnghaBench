; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_read_mac_addr_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_read_mac_addr_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@FM10K_ERR_INVALID_MAC_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*)* @fm10k_read_mac_addr_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_read_mac_addr_pf(%struct.fm10k_hw* %0) #0 {
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
  %13 = call i32 @FM10K_SM_AREA(i32 1)
  %14 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = xor i32 %15, -1
  %17 = shl i32 %16, 24
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @FM10K_ERR_INVALID_MAC_ADDR, align 4
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %65

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 24
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %11, i64 0
  store i64 %24, i64* %25, align 16
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %11, i64 2
  store i64 %32, i64* %33, align 16
  %34 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %35 = call i32 @FM10K_SM_AREA(i32 0)
  %36 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = ashr i32 %38, 24
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = load i32, i32* @FM10K_ERR_INVALID_MAC_ADDR, align 4
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %65

43:                                               ; preds = %21
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 16
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %11, i64 3
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %11, i64 4
  store i64 %50, i64* %51, align 16
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %11, i64 5
  store i64 %53, i64* %54, align 8
  %55 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %56 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ether_addr_copy(i32 %58, i64* %11)
  %60 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %61 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ether_addr_copy(i32 %63, i64* %11)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %43, %41, %19
  %66 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #2

declare dso_local i32 @FM10K_SM_AREA(i32) #2

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
