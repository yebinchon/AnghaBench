; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_intr_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, %struct.e1000_hw, %struct.TYPE_3__*, %struct.net_device* }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@E1000E_INT_MODE_LEGACY = common dso_local global i8* null, align 8
@E1000E_INT_MODE_MSIX = common dso_local global i32 0, align 4
@e1000_test_intr = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@IMC = common dso_local global i32 0, align 4
@FLAG_IS_ICH = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i32 0, align 4
@e1000_ich9lan = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@IMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_intr_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 5
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 3
  store %struct.e1000_hw* %17, %struct.e1000_hw** %6, align 8
  store i32 1, i32* %8, align 4
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %23 = load i8*, i8** @E1000E_INT_MODE_LEGACY, align 8
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %4, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @E1000E_INT_MODE_MSIX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %36 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %35)
  %37 = load i8*, i8** @E1000E_INT_MODE_LEGACY, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %42 = call i32 @e1000e_set_interrupt_capability(%struct.e1000_adapter* %41)
  br label %43

43:                                               ; preds = %31, %2
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @e1000_test_intr, align 4
  %46 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i64 @request_irq(i32 %44, i32 %45, i32 %46, i32 %49, %struct.net_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %67

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @e1000_test_intr, align 4
  %57 = load i32, i32* @IRQF_SHARED, align 4
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i64 @request_irq(i32 %55, i32 %56, i32 %57, i32 %60, %struct.net_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32*, i32** %4, align 8
  store i32 1, i32* %65, align 4
  store i32 -1, i32* %11, align 4
  br label %191

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %72 = call i32 @e_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @IMC, align 4
  %74 = call i32 @ew32(i32 %73, i32 -1)
  %75 = call i32 (...) @e1e_flush()
  %76 = call i32 @usleep_range(i32 10000, i32 11000)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %180, %67
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 10
  br i1 %79, label %80, label %183

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @BIT(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FLAG_IS_ICH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  switch i32 %90, label %110 [
    i32 128, label %91
    i32 256, label %92
  ]

91:                                               ; preds = %89
  br label %180

92:                                               ; preds = %89
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @e1000_ich8lan, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %92
  %101 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @e1000_ich9lan, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100, %92
  br label %180

109:                                              ; preds = %100
  br label %111

110:                                              ; preds = %89
  br label %111

111:                                              ; preds = %110, %109
  br label %112

112:                                              ; preds = %111, %80
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %135, label %115

115:                                              ; preds = %112
  %116 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  %118 = load i32, i32* @IMC, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ew32(i32 %118, i32 %119)
  %121 = load i32, i32* @ICS, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ew32(i32 %121, i32 %122)
  %124 = call i32 (...) @e1e_flush()
  %125 = call i32 @usleep_range(i32 10000, i32 11000)
  %126 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %115
  %133 = load i32*, i32** %4, align 8
  store i32 3, i32* %133, align 4
  br label %183

134:                                              ; preds = %115
  br label %135

135:                                              ; preds = %134, %112
  %136 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load i32, i32* @IMS, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @ew32(i32 %138, i32 %139)
  %141 = load i32, i32* @ICS, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @ew32(i32 %141, i32 %142)
  %144 = call i32 (...) @e1e_flush()
  %145 = call i32 @usleep_range(i32 10000, i32 11000)
  %146 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %147 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %135
  %153 = load i32*, i32** %4, align 8
  store i32 4, i32* %153, align 4
  br label %183

154:                                              ; preds = %135
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %179, label %157

157:                                              ; preds = %154
  %158 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %158, i32 0, i32 2
  store i32 0, i32* %159, align 8
  %160 = load i32, i32* @IMC, align 4
  %161 = load i32, i32* %7, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %162, 32767
  %164 = call i32 @ew32(i32 %160, i32 %163)
  %165 = load i32, i32* @ICS, align 4
  %166 = load i32, i32* %7, align 4
  %167 = xor i32 %166, -1
  %168 = and i32 %167, 32767
  %169 = call i32 @ew32(i32 %165, i32 %168)
  %170 = call i32 (...) @e1e_flush()
  %171 = call i32 @usleep_range(i32 10000, i32 11000)
  %172 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %157
  %177 = load i32*, i32** %4, align 8
  store i32 5, i32* %177, align 4
  br label %183

178:                                              ; preds = %157
  br label %179

179:                                              ; preds = %178, %154
  br label %180

180:                                              ; preds = %179, %108, %91
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %77

183:                                              ; preds = %176, %152, %132, %77
  %184 = load i32, i32* @IMC, align 4
  %185 = call i32 @ew32(i32 %184, i32 -1)
  %186 = call i32 (...) @e1e_flush()
  %187 = call i32 @usleep_range(i32 10000, i32 11000)
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.net_device*, %struct.net_device** %5, align 8
  %190 = call i32 @free_irq(i32 %188, %struct.net_device* %189)
  br label %191

191:                                              ; preds = %183, %64
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* @E1000E_INT_MODE_MSIX, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %197 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %196)
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %202 = call i32 @e1000e_set_interrupt_capability(%struct.e1000_adapter* %201)
  br label %203

203:                                              ; preds = %195, %191
  %204 = load i32, i32* %11, align 4
  ret i32 %204
}

declare dso_local i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_set_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @e_info(i8*, i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
