; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_stop_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_stop_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_SECTXCTRL = common dso_local global i32 0, align 4
@IXGBE_SECTXCTRL_TX_DIS = common dso_local global i32 0, align 4
@IXGBE_SECRXCTRL = common dso_local global i32 0, align 4
@IXGBE_SECRXCTRL_RX_DIS = common dso_local global i32 0, align 4
@IXGBE_SECTXSTAT = common dso_local global i32 0, align 4
@IXGBE_SECTXSTAT_SECTX_RDY = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT_SECRX_RDY = common dso_local global i32 0, align 4
@IXGBE_MACC = common dso_local global i32 0, align 4
@IXGBE_MACC_FLU = common dso_local global i32 0, align 4
@IXGBE_HLREG0 = common dso_local global i32 0, align 4
@IXGBE_HLREG0_LPBK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_ipsec_stop_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ipsec_stop_data(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 1
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %3, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = load i32, i32* @IXGBE_SECTXCTRL, align 4
  %16 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @IXGBE_SECTXCTRL_TX_DIS, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = load i32, i32* @IXGBE_SECTXCTRL, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %26 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @IXGBE_SECRXCTRL_RX_DIS, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %30, i32 %31, i32 %32)
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = load i32, i32* @IXGBE_SECTXSTAT, align 4
  %36 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %34, i32 %35)
  %37 = load i32, i32* @IXGBE_SECTXSTAT_SECTX_RDY, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_SECRXSTAT, align 4
  %41 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  %42 = load i32, i32* @IXGBE_SECRXSTAT_SECRX_RDY, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %130

50:                                               ; preds = %46, %1
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %50
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = load i32, i32* @IXGBE_MACC, align 4
  %56 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @IXGBE_MACC_FLU, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = load i32, i32* @IXGBE_MACC, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i32 %61, i32 %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = load i32, i32* @IXGBE_HLREG0, align 4
  %66 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @IXGBE_HLREG0_LPBK, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = load i32, i32* @IXGBE_HLREG0, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %71, i32 %72)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %74)
  %76 = call i32 @mdelay(i32 3)
  br label %77

77:                                               ; preds = %53, %50
  store i32 20, i32* %7, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = call i32 @mdelay(i32 10)
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = load i32, i32* @IXGBE_SECTXSTAT, align 4
  %82 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %80, i32 %81)
  %83 = load i32, i32* @IXGBE_SECTXSTAT_SECTX_RDY, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = load i32, i32* @IXGBE_SECRXSTAT, align 4
  %87 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %85, i32 %86)
  %88 = load i32, i32* @IXGBE_SECRXSTAT_SECRX_RDY, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %7, align 4
  %99 = icmp ne i32 %97, 0
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i1 [ false, %93 ], [ %99, %96 ]
  br i1 %101, label %78, label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = load i32, i32* @IXGBE_MACC, align 4
  %108 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %106, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @IXGBE_MACC_FLU, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %114 = load i32, i32* @IXGBE_MACC, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %113, i32 %114, i32 %115)
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = load i32, i32* @IXGBE_HLREG0, align 4
  %119 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @IXGBE_HLREG0_LPBK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %125 = load i32, i32* @IXGBE_HLREG0, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %124, i32 %125, i32 %126)
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %129 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %128)
  br label %130

130:                                              ; preds = %49, %105, %102
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
