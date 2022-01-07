; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_slice_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_slice_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ports = type { i32, i32 }

@SLICE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sf2_priv*, %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ports*, i32, i32)* @bcm_sf2_cfp_slice_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_cfp_slice_ipv4(%struct.bcm_sf2_priv* %0, %struct.flow_dissector_key_ipv4_addrs* %1, %struct.flow_dissector_key_ports* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bcm_sf2_priv*, align 8
  %7 = alloca %struct.flow_dissector_key_ipv4_addrs*, align 8
  %8 = alloca %struct.flow_dissector_key_ports*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %6, align 8
  store %struct.flow_dissector_key_ipv4_addrs* %1, %struct.flow_dissector_key_ipv4_addrs** %7, align 8
  store %struct.flow_dissector_key_ports* %2, %struct.flow_dissector_key_ports** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @CORE_CFP_MASK_PORT(i32 4)
  store i32 %16, i32* %12, align 4
  br label %19

17:                                               ; preds = %5
  %18 = call i32 @CORE_CFP_DATA_PORT(i32 4)
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @core_writel(%struct.bcm_sf2_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.flow_dissector_key_ports*, %struct.flow_dissector_key_ports** %8, align 8
  %25 = getelementptr inbounds %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be16_to_cpu(i32 %26)
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 @CORE_CFP_MASK_PORT(i32 3)
  store i32 %32, i32* %12, align 4
  br label %35

33:                                               ; preds = %19
  %34 = call i32 @CORE_CFP_DATA_PORT(i32 3)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @core_writel(%struct.bcm_sf2_priv* %36, i32 %37, i32 %38)
  %40 = load %struct.flow_dissector_key_ports*, %struct.flow_dissector_key_ports** %8, align 8
  %41 = getelementptr inbounds %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = and i32 %43, 255
  %45 = shl i32 %44, 24
  %46 = load %struct.flow_dissector_key_ports*, %struct.flow_dissector_key_ports** %8, align 8
  %47 = getelementptr inbounds %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ports* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be16_to_cpu(i32 %48)
  %50 = shl i32 %49, 8
  %51 = or i32 %45, %50
  %52 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %7, align 8
  %53 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = and i32 %55, 65280
  %57 = ashr i32 %56, 8
  %58 = or i32 %51, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %35
  %62 = call i32 @CORE_CFP_MASK_PORT(i32 2)
  store i32 %62, i32* %12, align 4
  br label %65

63:                                               ; preds = %35
  %64 = call i32 @CORE_CFP_DATA_PORT(i32 2)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @core_writel(%struct.bcm_sf2_priv* %66, i32 %67, i32 %68)
  %70 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %7, align 8
  %71 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = and i32 %73, 255
  %75 = shl i32 %74, 24
  %76 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %7, align 8
  %77 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be32_to_cpu(i32 %78)
  %80 = ashr i32 %79, 16
  %81 = shl i32 %80, 8
  %82 = or i32 %75, %81
  %83 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %7, align 8
  %84 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = and i32 %86, 65280
  %88 = ashr i32 %87, 8
  %89 = or i32 %82, %88
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %65
  %93 = call i32 @CORE_CFP_MASK_PORT(i32 1)
  store i32 %93, i32* %12, align 4
  br label %96

94:                                               ; preds = %65
  %95 = call i32 @CORE_CFP_DATA_PORT(i32 1)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @core_writel(%struct.bcm_sf2_priv* %97, i32 %98, i32 %99)
  %101 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %7, align 8
  %102 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @be32_to_cpu(i32 %103)
  %105 = and i32 %104, 255
  %106 = shl i32 %105, 24
  %107 = load %struct.flow_dissector_key_ipv4_addrs*, %struct.flow_dissector_key_ipv4_addrs** %7, align 8
  %108 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, %struct.flow_dissector_key_ipv4_addrs* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @be32_to_cpu(i32 %109)
  %111 = ashr i32 %110, 16
  %112 = shl i32 %111, 8
  %113 = or i32 %106, %112
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @SLICE_NUM(i32 %114)
  %116 = or i32 %113, %115
  %117 = load i32, i32* @SLICE_VALID, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %96
  %122 = call i32 @CORE_CFP_MASK_PORT(i32 0)
  store i32 %122, i32* %12, align 4
  br label %125

123:                                              ; preds = %96
  %124 = call i32 @CORE_CFP_DATA_PORT(i32 0)
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @core_writel(%struct.bcm_sf2_priv* %126, i32 %127, i32 %128)
  ret void
}

declare dso_local i32 @CORE_CFP_MASK_PORT(i32) #1

declare dso_local i32 @CORE_CFP_DATA_PORT(i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @SLICE_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
