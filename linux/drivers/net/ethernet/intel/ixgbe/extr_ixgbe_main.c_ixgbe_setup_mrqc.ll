; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mrqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mrqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, %struct.TYPE_3__*, %struct.ixgbe_hw }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IXGBE_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_RXCSUM_PCSD = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_MRQC_RSSEN = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRT8TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRT4TCEN = common dso_local global i32 0, align 4
@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_82599_VMDQ_4Q_MASK = common dso_local global i64 0, align 8
@IXGBE_MRQC_VMDQRSS32EN = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRSS64EN = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_MRQC_L3L4TXSWEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RTRSS8TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RTRSS4TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@IXGBE_MRQC_MULTIPLE_RSS = common dso_local global i32 0, align 4
@IXGBE_MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_setup_mrqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_setup_mrqc(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 5
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = load i32, i32* @IXGBE_RXCSUM, align 4
  %14 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @IXGBE_RXCSUM_PCSD, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_RXCSUM, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* @RING_F_RSS, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @IXGBE_MRQC_RSSEN, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %29
  br label %104

41:                                               ; preds = %1
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 4
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @IXGBE_MRQC_VMDQRT8TCEN, align 4
  store i32 %55, i32* %4, align 4
  br label %77

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @IXGBE_MRQC_VMDQRT4TCEN, align 4
  store i32 %60, i32* %4, align 4
  br label %76

61:                                               ; preds = %56
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i64, i64* @RING_F_VMDQ, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IXGBE_82599_VMDQ_4Q_MASK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @IXGBE_MRQC_VMDQRSS32EN, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @IXGBE_MRQC_VMDQRSS64EN, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ixgbe_mac_X550, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @IXGBE_MRQC_L3L4TXSWEN, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %77
  br label %103

89:                                               ; preds = %41
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %90, 4
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @IXGBE_MRQC_RTRSS8TCEN, align 4
  store i32 %93, i32* %4, align 4
  br label %102

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @IXGBE_MRQC_RTRSS4TCEN, align 4
  store i32 %98, i32* %4, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @IXGBE_MRQC_RSSEN, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %92
  br label %103

103:                                              ; preds = %102, %88
  br label %104

104:                                              ; preds = %103, %40
  %105 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4, align 4
  %106 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_TCP, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IXGBE_FLAG2_RSS_FIELD_IPV4_UDP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %104
  %121 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4_UDP, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %104
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IXGBE_FLAG2_RSS_FIELD_IPV6_UDP, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_UDP, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ixgbe_mac_X550, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %178

142:                                              ; preds = %135
  %143 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %144 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %178

149:                                              ; preds = %142
  %150 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %151 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @IXGBE_MRQC_MULTIPLE_RSS, align 4
  %154 = load i32, i32* %4, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %4, align 4
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %157 = load i32, i32* @IXGBE_MRQC, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %156, i32 %157, i32 %158)
  %160 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %161 = call i32 @ixgbe_setup_vfreta(%struct.ixgbe_adapter* %160)
  %162 = load i32, i32* @IXGBE_MRQC_RSSEN, align 4
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %170, %149
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %9, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @VMDQ_P(i32 %172)
  %174 = call i32 @IXGBE_PFVFMRQC(i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %171, i32 %174, i32 %175)
  br label %166

177:                                              ; preds = %166
  br label %188

178:                                              ; preds = %142, %135
  %179 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %180 = call i32 @ixgbe_setup_reta(%struct.ixgbe_adapter* %179)
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %4, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %4, align 4
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %185 = load i32, i32* @IXGBE_MRQC, align 4
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %178, %177
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_setup_vfreta(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_PFVFMRQC(i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @ixgbe_setup_reta(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
