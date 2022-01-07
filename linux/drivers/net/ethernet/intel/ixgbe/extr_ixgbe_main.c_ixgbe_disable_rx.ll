; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_ring**, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_SWFLSH = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@IXGBE_MAX_RX_DESC_POLL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"RXDCTL.ENABLE for one or more queues not cleared within the polling period\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_disable_rx(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_ring*, align 8
  %12 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 2
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %5, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.0*
  %22 = call i32 %19(%struct.ixgbe_hw.0* %21)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ixgbe_removed(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %137

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %30
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 1
  %39 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %39, i64 %41
  %43 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %42, align 8
  store %struct.ixgbe_ring* %43, %struct.ixgbe_ring** %9, align 8
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @IXGBE_RXDCTL(i32 %48)
  %50 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %47, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @IXGBE_RXDCTL_SWFLSH, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @IXGBE_RXDCTL(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %36
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %30

66:                                               ; preds = %30
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %75 = load i32, i32* @IXGBE_LINKS, align 4
  %76 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %74, i32 %75)
  %77 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %137

81:                                               ; preds = %73, %66
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %83 = call i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter* %82)
  %84 = sdiv i32 %83, 100
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %4, align 8
  %86 = load i32, i32* @IXGBE_MAX_RX_DESC_POLL, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i64, i64* %4, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %133, %81
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %88
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 10
  %96 = call i32 @usleep_range(i64 %93, i64 %95)
  %97 = load i64, i64* %4, align 8
  %98 = mul i64 %97, 2
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %124, %92
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %101
  %108 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %108, i32 0, i32 1
  %110 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %110, i64 %112
  %114 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %113, align 8
  store %struct.ixgbe_ring* %114, %struct.ixgbe_ring** %11, align 8
  %115 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %116 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @IXGBE_RXDCTL(i32 %119)
  %121 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %118, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %107
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %101

127:                                              ; preds = %101
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %137

133:                                              ; preds = %127
  br label %88

134:                                              ; preds = %88
  %135 = load i32, i32* @drv, align 4
  %136 = call i32 @e_err(i32 %135, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %132, %80, %28
  ret void
}

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_get_completion_timeout(%struct.ixgbe_adapter*) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @e_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
