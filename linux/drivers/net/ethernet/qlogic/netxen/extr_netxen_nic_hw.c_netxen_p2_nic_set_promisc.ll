; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_p2_nic_set_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_p2_nic_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NETXEN_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETXEN_NIU_XGE_CONFIG_0 = common dso_local global i64 0, align 8
@NETXEN_BRDTYPE_P2_SB31_10G_IMEZ = common dso_local global i64 0, align 8
@NETXEN_BRDTYPE_P2_SB31_10G_HMEZ = common dso_local global i64 0, align 8
@NETXEN_NIU_FRAME_COUNT_SELECT = common dso_local global i64 0, align 8
@NETXEN_NIU_FRAME_COUNT = common dso_local global i64 0, align 8
@NETXEN_NIU_XGE_CONFIG_1 = common dso_local global i64 0, align 8
@NETXEN_NIU_PROMISC_MODE = common dso_local global i32 0, align 4
@NETXEN_NIU_ALLMULTI_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32)* @netxen_p2_nic_set_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_p2_nic_set_promisc(%struct.netxen_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 512, i32* %8, align 4
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NETXEN_NIU_MAX_XG_PORTS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %2
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %26 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_0, align 8
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 65536, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @NXRD32(%struct.netxen_adapter* %25, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -5
  store i32 %33, i32* %6, align 4
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %35 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_0, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 65536, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @NXWR32(%struct.netxen_adapter* %34, i64 %39, i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @NETXEN_BRDTYPE_P2_SB31_10G_IMEZ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %24
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @NETXEN_BRDTYPE_P2_SB31_10G_HMEZ, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %24
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 32, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %54 = load i64, i64* @NETXEN_NIU_FRAME_COUNT_SELECT, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @NXWR32(%struct.netxen_adapter* %53, i64 %54, i32 %55)
  %57 = call i32 @mdelay(i32 10)
  br label %58

58:                                               ; preds = %69, %52
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %60 = load i64, i64* @NETXEN_NIU_FRAME_COUNT, align 8
  %61 = call i32 @NXRD32(%struct.netxen_adapter* %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = icmp slt i32 %65, 20
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i1 [ false, %58 ], [ %66, %63 ]
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = call i32 @mdelay(i32 10)
  br label %58

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 20
  br i1 %73, label %74, label %118

74:                                               ; preds = %71
  %75 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %76 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_1, align 8
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 65536, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i32 @NXRD32(%struct.netxen_adapter* %75, i64 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @NETXEN_NIU_PROMISC_MODE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = or i64 %87, 8192
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  br label %95

90:                                               ; preds = %74
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, -8193
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @NETXEN_NIU_ALLMULTI_MODE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = or i64 %101, 4096
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %8, align 4
  br label %109

104:                                              ; preds = %95
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, -4097
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %111 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_1, align 8
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 65536, %112
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %111, %114
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @NXWR32(%struct.netxen_adapter* %110, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %71
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, 4
  store i32 %120, i32* %6, align 4
  %121 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %122 = load i64, i64* @NETXEN_NIU_XGE_CONFIG_0, align 8
  %123 = load i32, i32* %9, align 4
  %124 = mul nsw i32 65536, %123
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %122, %125
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @NXWR32(%struct.netxen_adapter* %121, i64 %126, i32 %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %118, %21
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i64) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
