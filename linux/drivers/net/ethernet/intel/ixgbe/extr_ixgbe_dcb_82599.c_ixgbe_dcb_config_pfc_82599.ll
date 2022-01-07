; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_pfc_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_pfc_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_3__ = type { i64 }

@IXGBE_FCCFG = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_PRIORITY = common dso_local global i32 0, align 4
@IXGBE_MFLCN = common dso_local global i32 0, align 4
@IXGBE_MFLCN_DPF = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RPFCE_MASK = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RFCE = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_MFLCN_RPFCE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RPFCE = common dso_local global i32 0, align 4
@MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_pfc_82599(%struct.ixgbe_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = load i32, i32* @IXGBE_FCCFG, align 4
  %15 = load i32, i32* @IXGBE_FCCFG_TFCE_PRIORITY, align 4
  %16 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = load i32, i32* @IXGBE_MFLCN, align 4
  %19 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @IXGBE_MFLCN_DPF, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @IXGBE_MFLCN_RPFCE_MASK, align 4
  %24 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ixgbe_mac_X540, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IXGBE_MFLCN_RPFCE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %3
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @IXGBE_MFLCN_RPFCE, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = load i32, i32* @IXGBE_MFLCN, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %49, i32 %50, i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %72, %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MAX_USER_PRIORITY, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %53

75:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %151, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %154

80:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %101, %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MAX_USER_PRIORITY, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %12, align 4
  br label %104

100:                                              ; preds = %93, %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %81

104:                                              ; preds = %99, %81
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %104
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 10
  %117 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %10, align 4
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 10
  %128 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %9, align 4
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @IXGBE_FCRTL_82599(i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %130, i32 %132, i32 %133)
  br label %145

135:                                              ; preds = %104
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @IXGBE_RXPBSIZE(i32 %137)
  %139 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %136, i32 %138)
  %140 = sub nsw i32 %139, 24576
  store i32 %140, i32* %10, align 4
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @IXGBE_FCRTL_82599(i32 %142)
  %144 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %141, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %135, %107
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @IXGBE_FCRTH_82599(i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %146, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %76

154:                                              ; preds = %76
  br label %155

155:                                              ; preds = %168, %154
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %155
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @IXGBE_FCRTL_82599(i32 %161)
  %163 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %160, i32 %162, i32 0)
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @IXGBE_FCRTH_82599(i32 %165)
  %167 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %164, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %155

171:                                              ; preds = %155
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %173 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %175, 65537
  store i32 %176, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %188, %171
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %180 = sdiv i32 %179, 2
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @IXGBE_FCTTV(i32 %184)
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %183, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %177

191:                                              ; preds = %177
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %193 = load i32, i32* @IXGBE_FCRTV, align 4
  %194 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %195 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %197, 2
  %199 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %192, i32 %193, i32 %198)
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IXGBE_FCRTL_82599(i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_FCRTH_82599(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
