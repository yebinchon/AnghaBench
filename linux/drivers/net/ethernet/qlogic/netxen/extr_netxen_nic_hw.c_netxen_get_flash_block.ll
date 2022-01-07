; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_get_flash_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_get_flash_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32, i32, i32*)* @netxen_get_flash_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_get_flash_block(%struct.netxen_adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %9, align 8
  store i32* %17, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %43, %4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %18
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %26, i32 %27, i32* %11)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %80

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %18

46:                                               ; preds = %18
  %47 = load i32*, i32** %9, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32*, i32** %13, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = icmp ugt i8* %51, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %46
  %56 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %56, i32 %57, i32* %11)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %5, align 4
  br label %80

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @cpu_to_le32(i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = bitcast i32* %67 to i8*
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i32*, i32** %13, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = ptrtoint i8* %71 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i32* %66, i32* %15, i32 %77)
  br label %79

79:                                               ; preds = %63, %46
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %61, %31
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @netxen_rom_fast_read(%struct.netxen_adapter*, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
