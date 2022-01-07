; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_vfmrqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_vfmrqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32*, i32*, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBEVF_VFRSSRK_REGS = common dso_local global i32 0, align 4
@IXGBEVF_X550_VFRETA_SIZE = common dso_local global i32 0, align 4
@IXGBE_VFMRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@IXGBE_VFMRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@IXGBE_VFMRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@IXGBE_VFMRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@IXGBE_VFMRQC_RSSEN = common dso_local global i32 0, align 4
@IXGBE_VFMRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_setup_vfmrqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_setup_vfmrqc(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 3
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IXGBEVF_VFRSSRK_REGS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IXGBE_VFRSSRK(i32 %20)
  %22 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %19, i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %14

33:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %69, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IXGBEVF_X550_VFRETA_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 3
  %54 = mul nsw i32 %53, 8
  %55 = shl i32 %51, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 3
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 2
  %65 = call i32 @IXGBE_VFRETA(i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %62, i32 %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %34

74:                                               ; preds = %34
  %75 = load i32, i32* @IXGBE_VFMRQC_RSS_FIELD_IPV4, align 4
  %76 = load i32, i32* @IXGBE_VFMRQC_RSS_FIELD_IPV4_TCP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IXGBE_VFMRQC_RSS_FIELD_IPV6, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IXGBE_VFMRQC_RSS_FIELD_IPV6_TCP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @IXGBE_VFMRQC_RSSEN, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = load i32, i32* @IXGBE_VFMRQC, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFRSSRK(i32) #1

declare dso_local i32 @IXGBE_VFRETA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
